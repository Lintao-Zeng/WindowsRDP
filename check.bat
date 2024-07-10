@echo off

:start
    echo running
    if exist C:\Users\administrator\Desktop\end.txt (
        goto end
    )
    ping 127.0.0.1 -n 61 >nul
goto start

:end
