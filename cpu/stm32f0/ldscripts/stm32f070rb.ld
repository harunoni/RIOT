/*
 * Copyright (C) 2016 Inria
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 */

/**
 * @addtogroup      cpu_stm32f0
 * @{
 *
 * @file
 * @brief           Memory definitions for the STM32F070RB
 *
 * @author          Alexandre Abadie <alexandre.abadie@inria.fr>
 *
 * @}
 */

MEMORY
{
    rom (rx)    : ORIGIN = 0x08000000, LENGTH = 128K
    ram (rwx)   : ORIGIN = 0x20000000, LENGTH = 16K
    cpuid (r)   : ORIGIN = 0x1ffff7ac, LENGTH = 12
}

_cpuid_address = ORIGIN(cpuid);

INCLUDE cortexm_base.ld
