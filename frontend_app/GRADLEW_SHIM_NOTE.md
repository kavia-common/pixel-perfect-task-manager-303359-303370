# Gradle wrapper shim note

This workspace includes a lightweight `gradlew` shim so CI jobs that run `./gradlew check`
won't fail when there is no native Android project checked in.

Important:
- The `gradlew` file **must be executable** (`chmod +x gradlew`) in environments where CI
  runs `./gradlew`.
- If your CI still reports `./gradlew: No such file or directory`, verify:
  - you are in the expected working directory, and
  - the executable bit is preserved by your packaging/VCS.
