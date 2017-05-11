@REM set WINDUP_HOME=E:\Windup-Source\windup-distribution-master\windup-distribution-3.0.0-SNAPSHOT

set WINDUP_HOME=E:\windup-distribution-2.4.1.Final
echo "WINDUP_HOME  ==>"%WINDUP_HOME%
@REM copy /Y rules\*.windup.xml %USERPROFILE%\.windup\rules
@REM rd /S /Q %WINDUP_HOME%\rules
@REM rd /S /Q %USERPROFILE%\.windup\rules
copy /Y rules\*.windup.xml %WINDUP_HOME%\rules
set PATH=%PATH%;%WINDUP_HOME%\bin
rd /S /Q reports
call windup --sourceMode --input data --output reports --source eap --target eap
@REM windup --remove org.jboss.windup.quickstarts:windup-proprietary-javaee-servlet-rules-java,3.0.0-SNAPSHOT
pause