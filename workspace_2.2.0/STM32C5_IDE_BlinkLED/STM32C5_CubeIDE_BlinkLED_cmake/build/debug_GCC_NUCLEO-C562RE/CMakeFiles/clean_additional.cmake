# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "debug_GCC_NUCLEO-C562RE")
  file(REMOVE_RECURSE
  "STM32C5_CubeIDE_BlinkLED.elf"
  "STM32C5_CubeIDE_BlinkLED.map"
  )
endif()
