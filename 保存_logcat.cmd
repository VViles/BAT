@echo off&setlocal  enabledelayedexpansion
@mode con cols=80 lines=30
@cls
@color 1f
@title ��androidƽ̨logcat���湤�ߡ� %date%
mkdir c:\log\
:a
cls
echo.
echo                           ��androidƽ̨logcat���湤�ߡ�
echo  *********************************************************************
echo.
echo            ע��logcat����Ϊ��ǰĿ¼   
echo.
echo  *********************************************************************     
echo.
echo              δ��⵽�豸....
adb wait-for-device>nul
:main
echo.&echo.
cls
echo.
echo.
echo                           ��androidƽ̨logcat���湤�ߡ�
echo  *********************************************************************
echo.
echo            ע��logcat����Ϊ��ǰĿ¼   
echo.
echo  *********************************************************************      
echo.
echo     ѡ����ӦLOG���ȼ�������Ӧlogcat....
echo     �磺ѡ��5���򱣴�logȫΪ��Error���ϵ���Ϣ
echo.&echo.
echo LOG���ȼ�ѡ��1~8
echo.
echo ����ѡ��[1]V   [2]D  [3]I [4]W [5]E [6]F [7]S  [q]�˳�
echo.&echo.
set/p a=������ѡ��LOG����Ϊ��
if %a%==1 goto v
if %a%==2 goto d
if %a%==3 goto i
if %a%==4 goto w
if %a%==5 goto e
if %a%==6 goto f
if %a%==7 goto s
if %a%==q goto exit
:v
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo ���ڱ���logcat��Ϣ
adb shell logcat -v time  *:v >c:\log\logcat_%TT%.txt
echo   �Ƿ��log��Ϣ?
echo  *******************************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:d
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo ���ڱ���logcat��Ϣ
adb shell logcat -v time  *:d >c:\log\logcat_%TT%.txt
echo   �Ƿ��log��Ϣ?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:i
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo ���ڱ���logcat��Ϣ
adb shell logcat -v time  *:i >c:\log\logcat_%TT%.txt
echo   �Ƿ��log��Ϣ?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:w
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo ���ڱ���logcat��Ϣ
adb shell logcat -v time  *:w >c:\log\logcat_%TT%.txt
echo   �Ƿ��log��Ϣ?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:e
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo ���ڱ���logcat��Ϣ
adb shell logcat -v time  *:e >c:\log\logcat_%TT%.txt
echo   �Ƿ��log��Ϣ?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:f
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo ���ڱ���logcat��Ϣ
adb shell logcat -v time  *:f >c:\log\logcat_%TT%.txt
echo   �Ƿ��log��Ϣ?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:s
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo ���ڱ���logcat��Ϣ
adb shell logcat -v time  *:v >s:\log\logcat_%TT%.txt
echo   �Ƿ��log��Ϣ?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main

:exit
exit