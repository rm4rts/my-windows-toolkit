@echo off
:: Network Reset Utility by rm4rts
:: Must be run as administrator

ipconfig /flushdns
netsh int reset all
netsh int ipv4 reset
netsh int ipv6 reset
netsh winsock reset

echo The network has been reset. Restart as soon as possible.
echo Press any key to exit.
pause > nul
exit

