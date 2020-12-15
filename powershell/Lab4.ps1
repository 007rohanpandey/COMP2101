write-output 'PROCESSOR_INFORMATION'
get-ciminstance -Class Win32_processor
write-output 'OPERATINGSYSTEM_INFORMATION'
get-ciminstance -Class Win32_operatingsystem
write-output 'PROCSSOR_SPECIFIC_INFORMATION'
get-ciminstance -Class Win32_processor -ErrorAction Stop | Select-Object L1CacheSize, L2CacheSize, L3CacheSize, Number*, CurrentClockSpeed, MaxClockSpeed
write-output 'RAM_INFORMATION'
get-ciminstance -Class Win32_physicalmemory -ErrorAction Stop | Select-Object Description, Capacity, BankLabel
write-output 'NETWORKADAPTERCONFIGURATION_INFORMATION'
get-ciminstance -class win32_networkadapterconfiguration |
where-object ipenabled -eq true |
format-table description, InterfaceIndex, IPAddress, SubnetMask, DNSDomain, DNSServer
write-output 'VIDEOCARD_INFORMATION'
get-ciminstance -Class Win32_videocontroller -ErrorAction Stop | Select-Object Description, VideoModeDescription