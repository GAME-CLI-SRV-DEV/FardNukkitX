echo off
echo FardNukkit
git submodule init
echo fardnukkit + fardburst init
echo applyig fard patric
cd Nukkit
git apply %CD%patch\fardnukkit\*.patch
cd ..
cd Cloudburst
git apply %CD%patch\fardburst\*.patch
cd ..
echo now buildin
cd nukkit
./gradlew build
cd ..
cd cloudburst
./gradlew build