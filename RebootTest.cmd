@echo off
echo   ѭ�����ػ�����
echo        ��ʼ
set a=
set/p a=������Ҫ���еĴ�����
for /l %%i in (1 1 %a%+1) do adb reboot&adb wait-for-device>nul&ping -n 30 127.1>nul&ping -n 30 127.1>nul
set a=ѭ�����Կ��ػ�
set b=%time:~0,5%
set c=%date%
echo      ����
echo %c% ʱ�䣺%b% %a%
pause>>nul