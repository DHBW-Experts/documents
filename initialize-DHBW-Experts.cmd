@echo off

CALL echo ^<ESC^>[92m [92mcloning repositories...[0m

CALL git clone -c core.autocrlf=input https://github.com/DHBW-Experts/db-backend.git db-backend
CALL git clone -c core.autocrlf=input https://github.com/DHBW-Experts/app.git app

CALL echo:
CALL echo ^<ESC^>[92m [92msetting up Java...[0m

CALL echo Enter your Java 11 path: (e.g. 'C:\Program Files\Java\jdk-11.0.15'):
CALL set /p JH=""

CALL echo:
CALL echo ^<ESC^>[92m [92mgenerating run scripts...[0m

(
echo services:
echo   frontend:
echo     build: 
echo       context: ./app/
echo       args:
echo         BUILD_ENV: docker
echo     container_name: frontend
echo     networks:
echo       default:
echo         aliases:
echo           - frontend
echo     ports:
echo       - 4200:80
echo:
echo   db-backend:
echo     build: ./db-backend/
echo     container_name: db-backend
echo     networks:
echo       default:
echo         aliases:
echo           - db-backend
echo     ports:
echo       - 4201:80
echo     environment:
echo       - DHEX_DATABASE=Server=tcp:database,1433;Initial Catalog=DHBW-Experts-database;Persist Security Info=False;User ID=SA;Password=Password123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;
echo: 
echo   database:
echo     build: 
echo       context: ./db-backend
echo       dockerfile: ./mssql-docker/Dockerfile
echo     container_name: database
echo     networks:
echo       default:
echo         aliases:
echo           - database
echo     ports:
echo       - 1433:1433
echo     environment:
echo       - ACCEPT_EULA=Y
echo       - SA_PASSWORD=Password123
echo       - TZ=UTC
echo     volumes:
echo       - database-data:/var/opt/mssql
echo: 
echo volumes:
echo     database-data:
) > docker-compose.yml

(
echo @echo off
echo set JAVA_HOME=%JH%
echo set Path=%%JAVA_HOME%%\bin;%%Path%%
echo CALL cd app
echo CALL echo ^^^<ESC^^^>[92m [92mPlease change the Database URL ^("api_domain"^) according to your configuration.[0m
echo CALL echo ^^^<ESC^^^>[92m [92mBuild process will continue once editor is closed.[0m
echo .\src\environments\environment.mobile.ts
echo pause
echo CALL ionic capacitor build android --no-open --configuration=mobile
echo CALL cd android
echo CALL gradlew assembleDebug
echo CALL start .\app\build\outputs\apk\debug
echo pause
) > generate-apk.cmd

CALL echo:
CALL echo ^<ESC^>[92m [92minstalling global npm dependencies...[0m

CALL npm list -g @angular/cli || npm i -g @angular/cli
CALL npm list -g @ionic/cli || npm i -g @ionic/cli

CALL echo:
CALL echo ^<ESC^>[92m [92minstalling frontend npm dependencies...[0m

CALL cd app
CALL npm i

pause