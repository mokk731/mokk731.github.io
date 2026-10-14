@echo off
echo 正在清除系统垃圾文件，请稍等......
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
# del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
# del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*

# del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"



del /f /s /q "%userprofile%\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Cache\Cache_Data\*.*"
# del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
# del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Media Cache\*.*"
# del /f /s /q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache\*.*"

del /f /s /q "%userprofile%\AppData\Local\Mozilla\Firefox\Profiles\dv36seym.default-esr\cache2\*.*"



del /f /s /q "%userprofile%\AppData\Roaming\Q7\logs\*.*"

echo 清除系统LJ完成！
echo. & pause

