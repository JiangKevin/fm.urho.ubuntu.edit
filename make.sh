reset
clear
# 

export FmDev="/home/kevin/Dev/src/fm.urho.ubuntu.edit"
export editer_app_name="FmUbuntu3DEditer"

# 
rm -rf build
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=/home/kevin/Dev/tools/vcpkg/scripts/buildsystems/vcpkg.cmake
cd build
make