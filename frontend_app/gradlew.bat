@echo off
REM Frontend (React Native) workspace Gradle wrapper shim for CI.

IF EXIST android\gradlew.bat (
  CALL android\gradlew.bat %*
  EXIT /B %ERRORLEVEL%
)

echo No Android Gradle wrapper found in frontend_app; skipping Gradle task: %*
EXIT /B 0
