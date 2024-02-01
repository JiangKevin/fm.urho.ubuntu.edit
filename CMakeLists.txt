cmake_minimum_required(VERSION 3.1)
project(Urhox.core)
# 
# set(CMAKE_CXX_STANDARD 14)
set(app_name $ENV{editer_app_name})
message("FmDev folder = $ENV{FmDev}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY $ENV{FmDev}/out/)
# 
file(GLOB app_src
    $ENV{FmDev}/core/*.cpp

    # 
    $ENV{FmDev}/apps/test/*.cpp
    $ENV{FmDev}/apps/test/*.h
)

#
MESSAGE(STATUS "APP SRC IS:"
    ${app_src}
)
# 

# 生成
add_executable(${app_name}
    ${app_src}
)

# app源码原始包中的include
target_include_directories(${app_name} PUBLIC
    $ENV{FmDev}/core/
    # 
    $ENV{FmDev}/libs
    $ENV{FmDev}/libs/Urho3D
    $ENV{FmDev}/libs/Urho3D/include/
    $ENV{FmDev}/libs/Urho3D/include/Urho3D
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Graphics
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/AngelScript
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Base
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Core
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/IK
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/IO
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Navigation
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Physics
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Scene
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/UI
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Audio
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Container
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Database
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/GraphicsAPI
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Input
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Math
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Network
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Physics2D
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Resource
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/Urho2D
    $ENV{FmDev}/libs/Urho3D/include/Urho3D/ThirdParty
)

# link 
target_link_libraries(${app_name} PUBLIC
    $ENV{FmDev}/libs/Urho3D/lib/libUrho3D.a
    $ENV{FmDev}/libs/other/libSDL.a
    $ENV{FmDev}/libs/other/libAngelScript.a
    $ENV{FmDev}/libs/other/libGLEW.a
    $ENV{FmDev}/libs/other/libAssimp.a
    $ENV{FmDev}/libs/other/libBox2D.a
    $ENV{FmDev}/libs/other/libBullet.a
    $ENV{FmDev}/libs/other/libCivetweb.a
    $ENV{FmDev}/libs/other/libDetour.a
    $ENV{FmDev}/libs/other/libDetourCrowd.a
    $ENV{FmDev}/libs/other/libDetourTileCache.a
    $ENV{FmDev}/libs/other/libETCPACK.a
    $ENV{FmDev}/libs/other/libFreeType.a
    $ENV{FmDev}/libs/other/libik.a
    $ENV{FmDev}/libs/other/libLZ4.a
    $ENV{FmDev}/libs/other/libPugiXml.a
    $ENV{FmDev}/libs/other/libRecast.a
    $ENV{FmDev}/libs/other/libSLikeNet.a
    $ENV{FmDev}/libs/other/libStanHull.a
    $ENV{FmDev}/libs/other/libPugiXml.a
    $ENV{FmDev}/libs/other/libPugiXml.a
    $ENV{FmDev}/libs/other/libPugiXml.a
    -lGLU -Wall -lGL
)
# target_link_libraries(${app_name} PRIVATE GLEW::GLEW)