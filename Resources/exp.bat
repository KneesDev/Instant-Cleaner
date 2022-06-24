ipconfig /FlushDNS
ping localhost -n 01 >nul
cleanmgr /verylowdisk /d
rd C:\Windows\prefetch /s /q
md C:\Windows\prefetch
exit