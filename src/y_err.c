#include "y_syscalls.h"
#include "y_utils.h"

void y_errx(int eval, const char *fmt, ...)
{
	va_list ap;
	y_fdprintf(2, "error: ");
	va_start(ap, fmt);
	y_vfdprintf(2, fmt, ap);
	va_end(ap);
	y_fdprintf(2, "\n");
	y_exit(eval);
}

