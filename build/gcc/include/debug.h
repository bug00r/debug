#ifndef DEBUG_H
#define DEBUG_H

#include <stdio.h>

#ifndef DEBUG_LOG_ARGS
	#if defined(debug) && debug != 0
		#define DEBUG_LOG_ARGS(fmt, ...) printf(" %s:%s:%i => ", __FILE__, __func__, __LINE__);printf((fmt), __VA_ARGS__)
	#else
		#define DEBUG_LOG_ARGS(fmt, ...)
	#endif
#endif

#ifndef DEBUG_LOG
	#if defined(debug) && debug != 0
		#define DEBUG_LOG(msg) printf(" %s:%s:%i => ", __FILE__, __func__, __LINE__);printf((msg))
	#else
		#define DEBUG_LOG(msg)
	#endif
#endif

#endif