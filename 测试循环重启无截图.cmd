@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=20
@cls
@color 1f
@title ѭ�����ػ����� %date%
:a
cls
echo.
echo              �q���������������������r
echo        �q������Androidѭ���������� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
echo              δ��⵽�豸....
adb wait-for-device>nul
goto canshu

:canshu
cls
echo.
echo              �q���������������������r
echo        �q������Androidѭ���������� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
set a=
set/p a=������Ҫ���еĴ�����
:numb
cls
echo.
echo              �q���������������������r
echo        �q������Androidѭ���������� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��  ���Դ�����%a%                   ��
echo        �t���������������������������������s
echo.
set b=
set/p b=�������������ʱ�䣨�룩��
:loops
cls
echo.
echo              �q���������������������r
echo        �q������Androidѭ���������� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��  ���Դ�����%a%   ���ʱ��:%b%��   ��
echo        �t���������������������������������s
echo.
for /l %%i in (1 1 %a%+1) do echo ��%%i����������&adb reboot&adb wait-for-device>nul&ping -n %b% 127.1>nul


:stop
cls
echo.
echo              �q���������������������r
echo        �q������Androidѭ���������� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��  ���Դ�����%a%   ���ʱ��:%b%��   ��
echo        �t���������������������������������s
set e=%time:~0,5%
set f=%date%
echo      �����У�%a% ��   �������(��)��%b%
echo      �������
echo �������ڣ� %e% ʱ�䣺%f% 
pause
pause>>nul