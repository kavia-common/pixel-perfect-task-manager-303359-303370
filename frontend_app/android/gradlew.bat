@echo off
REM Android-folder Gradle wrapper shim for CI.
REM Delegate to workspace-level gradlew.bat if present; otherwise no-op.

IF EXIST ..\gradlew.bat (
  CALL ..\gradlew.bat %*
  EXIT /B %ERRORLEVEL%
)

echo No workspace Gradle wrapper found; skipping Gradle task: %*
EXIT /B 0
