#ifndef Y_ASM_H
#define Y_ASM_H

#define PUBLIC __attribute__((visibility ("default")))
#define PRIVATE __attribute__((visibility ("hidden")))

PRIVATE void y_start(void);
PRIVATE void y_trampo(void (*entry)(void), unsigned long *sp, void (*fini)(void));
PRIVATE long y_syscall(int n, ...);

#endif /* Y_ASM_H */
