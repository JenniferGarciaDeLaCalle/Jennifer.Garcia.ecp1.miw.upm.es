@echo off
set workspace=C:\Users\Jennifer\Desktop\ProyectosMaster\Jennifer.Garcia.ecp1.miw.upm.es
set PATH=%PATH%C:\Program Files\Java\jdk1.8.0_45\bin;C:\Users\Jennifer\Desktop\apache-maven-3.3.3\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_45
set M2_HOME=C:\Users\Jennifer\Desktop\apache-maven-3.3.3
echo -----------------------------------------
echo . (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
cd %workspace%
echo ============ mvn --version =======================================================
echo .
call mvn --version
call mvn clean test -Denvironment.type=develop
call mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction
pause
::Se queda la consola abierta para realizar comandos en línea
::cmd /k
