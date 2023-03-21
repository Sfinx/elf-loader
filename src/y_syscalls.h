#ifndef Y_SYSCALLS_H
#define Y_SYSCALLS_H

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>

#include <fcntl.h>
#include <unistd.h>

#define y_errno	(*y_perrno())

int	y_exit(int status);
int	y_open(const char *pathname, int flags);
int	y_close(int fd);
int	y_lseek(int fd, off_t offset, int whence);
ssize_t	y_read(int fd, void *buf, size_t count);
ssize_t	y_write(int fd, const void *buf, size_t count);
void	*y_mmap(void *addr, size_t length, int prot,
		int flags, int fd, off_t offset);
int	y_munmap(void *addr, size_t length);
int	y_mprotect(void *addr, size_t length, int prot);
int	*y_perrno(void);

#endif /* Y_SYSCALLS_H */
