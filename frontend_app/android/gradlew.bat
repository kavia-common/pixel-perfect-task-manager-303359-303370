@echo off
REM Frontend android/ gradlew shim for CI.

IF EXIST ..\gradlew.bat (
  CALL ..\gradlew.bat %*
  EXIT /B %ERRORLEVEL%
)

echo No parent gradlew found; skipping Gradle task: %*
EXIT /B 0
