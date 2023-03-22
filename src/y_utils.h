#ifndef Y_UTILS_H
#define Y_UTILS_H

#include <stdlib.h>
#include <stdarg.h>
#include <alloca.h>
#include <string.h>

#define y_alloca	__builtin_alloca

// void	*y_memset(void *s, int c, size_t n);
void	*y_memcpy(void *dest, const void *src, size_t n);

void	y_vprintf(const char *fmt, va_list ap);
void	y_vfdprintf(int fd, const char *fmt, va_list ap);
void	y_printf(const char *fmt, ...)
	__attribute__ ((format (printf, 1, 2)));
void	y_fdprintf(int fd, const char *fmt, ...)
	__attribute__ ((format (printf, 2, 3)));
void	y_errx(int eval, const char *fmt, ...)
	__attribute__ ((format (printf, 2, 3)));

#ifdef Y_SMALL
#  define y_errx(eval, fmt, ...) y_exit(eval)
#  define y_printf(fmt, ...) do {} while(0)
#  define y_fdprintf(fd, fmt, ...) do {} while(0)
#endif

#endif /* Y_UTILS_H */

