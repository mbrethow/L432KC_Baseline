/*
 * timekeeper.c
 *
 *  Created on: Sep 17, 2021
 *      Author: shokto
 */

#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "SEGGER_RTT.h"
#include "rtt_debug.h"
#include "mbedtls/base64.h"
#include "mbedtls/md.h"

/* Private function declarations */
static void timekeeper_service_task(void *p_params);

static TaskHandle_t timekeeper_service_task_handle = { 0U };
static uint8_t plaintext[64] = {0U};
static uint8_t digest[64] = {0U};
static uint32_t notifications = 0U;
static uint32_t count = 0U;
/* Public functions */
bool launch_timekeeper_service(void *p_params)
{
    bool initialized = false;

    initialized = xTaskCreate(timekeeper_service_task, "Timekeeper", 128U, NULL, tskIDLE_PRIORITY + 4,
        &timekeeper_service_task_handle);
    return initialized;
}

/* Private functions */
static void timekeeper_service_task(void *p_params)
{

    for (;;)
    {
        xTaskNotifyWait(0U, 0U, &notifications, pdMS_TO_TICKS(1000U));


        memset(plaintext, 0, 64);
        memset(digest, 0, 64);
        snprintf((char *)plaintext, 64, "Timekeeper: %u: %lu: ", __LINE__, count);
        snprintf((char *)digest, 64, "Timekeeper: %u: %lu: ", __LINE__, count);


//        mbedtls_md_info_t *hmac_info = mbedtls_md_info_from_type(MBEDTLS_MD_SHA256);
//        mbedtls_md(hmac_info, (const unsigned char *)plaintext, strlen((char *)plaintext), (unsigned char *)digest);
        uint32_t bytes_written = 0U;
        uint32_t original_length = strlen((char *) plaintext);
        int32_t base64_out = 0;
        (void) base64_out;

        base64_out = mbedtls_base64_encode(digest, sizeof(digest), &bytes_written, (const unsigned char*) plaintext,
                (size_t) original_length);

        debug_printf("%s%s\n", plaintext, digest);
        count++;
    }
}
