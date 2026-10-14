@echo off
setlocal enabledelayedexpansion
title 主菜单

:MAIN_MENU
cls
echo ============================================
echo                KMS激活Windows 主 菜 单
echo ============================================
echo.
echo   [1] 卸载已安装密钥 
echo   [2] KMS激活Windows10 Windows11 专业版          W269N-WFGWX-YVC9B-4J6C9-T83GX
echo   [3] KMS激活Windows10 Windows11 企业版 LTSC     M7XTQ-FN8P6-TTKYV-9D4CC-J462D
echo   [4] 退出
echo.
echo ============================================
set /p "CHOICE=请输入选项 (1-4): "

if "%CHOICE%"=="1" goto OPTION1
if "%CHOICE%"=="2" goto OPTION2
if "%CHOICE%"=="3" goto OPTION3
if "%CHOICE%"=="4" goto EXIT

echo.
echo 输入无效，请重新选择。
timeout /t 2 /nobreak >nul
goto MAIN_MENU

:OPTION1
cls
echo ============================================
echo   [1] 卸载已安装密钥
echo ============================================
echo.
slmgr.vbs /upk
echo.
echo 执行完毕，按任意键返回主菜单...
pause >nul
goto MAIN_MENU

:OPTION2
cls
echo ============================================
echo   [2] KMS激活Windows10 Windows11 专业版
echo ============================================
echo.
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms win.kms.pub  
slmgr /ato
echo.
echo 执行完毕，按任意键返回主菜单...
pause >nul
goto MAIN_MENU

:OPTION3
cls
echo ============================================
echo   [3] KMS激活Windows10 Windows11 企业版 LTSC
echo ============================================
echo.
slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
slmgr /skms win.kms.pub  
slmgr /ato
echo.
echo 执行完毕，按任意键返回主菜单...
pause >nul
goto MAIN_MENU

:EXIT
cls
echo 已退出，再见。
timeout /t 1 /nobreak >nul
exit /b 0