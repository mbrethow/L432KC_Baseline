/*
 * heartbeat.c
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
#include "gpio.h"

/* Private function declarations */
static void heartbeat_service_task(void *p_params);

static TaskHandle_t heartbeat_service_task_handle = { 0U };
static uint32_t notifications = 0U;
static uint32_t count = 0U;

/* Public functions */
bool launch_heartbeat_service(void *p_params)
{
    bool initialized = false;

    initialized = xTaskCreate(heartbeat_service_task, "Heartbeat", 128U, NULL, tskIDLE_PRIORITY + 4,
        &heartbeat_service_task_handle);
    return initialized;
}

/* Private functions */
static void heartbeat_service_task(void *p_params)
{

    for (;;)
    {
        xTaskNotifyWait(0U, 0U, &notifications, pdMS_TO_TICKS(750));

        HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_SET);
        vTaskDelay(pdMS_TO_TICKS(100U));
        HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_RESET);
        vTaskDelay(pdMS_TO_TICKS(50U));
        HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_SET);
        vTaskDelay(pdMS_TO_TICKS(100U));
        HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_RESET);

        debug_printf("Heartbeat: %u: %lu seconds\n", __LINE__, count);
        count++;
    }
}
