@echo off
REM Frontend workspace Gradle shim for CI.

IF EXIST ..\..\gradlew.bat (
  CALL ..\..\gradlew.bat %*
  EXIT /B %ERRORLEVEL%
)

echo No workspace Gradle wrapper found; skipping Gradle task: %*
EXIT /B 0
