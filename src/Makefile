# make ARCH=i386 SMALL=1 DEBUG=1

ARCH ?= riscv64
DEBUG=1

ARCHS32 := i386
ARCHS64 := amd64 aarch64 riscv64
ARCHS := $(ARCHS32) $(ARCHS64)

SYSROOT = $(HOME)/pine64/buildroot/output/host
INCLUDES = -I$(SYSROOT)/riscv64-buildroot-linux-gnu/sysroot/usr/include

# CC = aarch64-linux-gnu-gcc
# CC = $(SYSROOT)/bin/riscv64-unknown-elf-gcc
CC = riscv64-unknown-elf-gcc

CFLAGS += -pipe -Wall -Wextra -fPIC -fno-ident -fno-stack-protector -U _FORTIFY_SOURCE $(INCLUDES)
LDFLAGS += -nostartfiles -nodefaultlibs -nostdlib 
LDFLAGS += -pie -e y_start -Wl,-Bsymbolic,--no-undefined,--build-id=none -static -Wl,-Ttext-segment=0x8000000
TARGET := loader

ifeq "$(filter $(ARCH),$(ARCHS))" ""
  $(error ARCH='$(ARCH)' is not supported)
endif

ifeq "$(filter $(ARCH),$(ARCHS32))" "$(ARCH)"
  CFLAGS += -m32 -DELFCLASS=ELFCLASS32
  ASFLAGS += -m32
else
  CFLAGS += -DELFCLASS=ELFCLASS64
endif

ifdef DEBUG
  CFLAGS += -O0 -g
  ASFLAGS += -g
else
  CFLAGS += -fvisibility=hidden
  # Disable unwind info to make prog smaller.
  CFLAGS += -Os -fno-asynchronous-unwind-tables -fno-unwind-tables
  LDFLAGS += -s
endif

OBJS := $(patsubst %.c,%.o, $(wildcard *.c))
OBJS += $(patsubst %.S,%.o, $(wildcard $(ARCH)/*.S))

ifdef SMALL
  OBJS := $(filter-out y_printf.%,$(OBJS))
  OBJS := $(filter-out y_err.%,$(OBJS))
  CFLAGS += -DY_SMALL
endif

.PHONY: clean all

all: $(TARGET)

loader: $(OBJS)

clean:
	rm -rf *.o $(TARGET) */*.o
