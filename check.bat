@echo off

:start
    echo running
    if exist C:\Users\administrator\Desktop\end.txt (
        goto end
    )
    ping -n 60 127.0.0.1>nul
goto start

:end
