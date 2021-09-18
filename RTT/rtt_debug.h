/*
 * rtt_debug.h
 *
 *  Created on: Sep 17, 2021
 *      Author: shokto
 */

#ifndef RTT_DEBUG_H_
#define RTT_DEBUG_H_

#include "SEGGER_RTT.h"

#define debug_printf(fmt, ...) \
    do { \
    {SEGGER_RTT_printf(0U, fmt, ##__VA_ARGS__);} \
    } while (0)

#endif /* RTT_DEBUG_H_ */
