get-ciminstance -class win32_networkadapterconfiguration |
where-object ipenabled -eq true |
format-table description, InterfaceIndex, IPAddress, SubnetMask, DNSDomain, DNSServer