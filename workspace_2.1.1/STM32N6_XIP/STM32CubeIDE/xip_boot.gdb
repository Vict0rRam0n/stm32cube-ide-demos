set confirm off
save breakpoints breakpoints.gdb
delete breakpoints 
add-symbol-file C:\Users\aliagavi\STM32CubeIDE\workspace_2.1.1\STM32N6_XIP\STM32CubeIDE\Appli\Debug\STM32N6_XIP_Appli.elf
enable 
thb BOOT_Application
continue
commands
enable
source breakpoints.gdb
enable