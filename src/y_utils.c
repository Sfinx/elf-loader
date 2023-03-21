#include <stdlib.h>

void *y_memset(void *s, int c, size_t n)
{
	unsigned char *p = s, *e = p + n;
	while (p < e)
		*p++ = c;
	return s;
}

void *y_memcpy(void *dest, const void *src, size_t n)
{
	unsigned char *d = dest;
	const unsigned char *p = src, *e = p + n;
	while (p < e)
		*d++ = *p++;
	return dest;
}

