@echo sc stop GAppProxy > Register_As_Server.bat
@echo sc delete GAppProxy >> Register_As_Server.bat
@echo sc create GAppProxy binPath= "%cd%\srvany.exe" start= auto >> Register_As_Server.bat
@echo sc description GAppProxy "HTTP 代理服务 - GAppProxy 为您效劳。" >> Register_As_Server.bat
@echo reg add HKLM\SYSTEM\CurrentControlSet\Services\GAppProxy\Parameters /v Application /d "%cd%\proxy.exe" >> Register_As_Server.bat /f
@echo reg add HKLM\SYSTEM\CurrentControlSet\Services\GAppProxy\Parameters /v AppDirectory /d "%cd%" >> Register_As_Server.bat /f
@echo sc start GAppProxy >> Register_As_Server.bat

@echo sc stop GAppProxy > Delete_GAppProxy_Server.bat
@echo sc delete GAppProxy >> Delete_GAppProxy_Server.bat

@echo 成功了～！
@echo.
@echo 最后，请以 *管理员身份* 运行这个文件：Register_As_Server.bat
@echo.
@pause
