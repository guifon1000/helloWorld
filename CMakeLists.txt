cmake_minimum_required(VERSION 2.6)
PROJECT(example)

SET(CMAKE_CXX_FLAGS_RELEASE "-O3")
SET(CMAKE_CXX_FLAGS_DEBUG  "g")
SET(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O3 -g")

IF(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)
   SET(CMAKE_BUILD_TYPE RelWithDebInfo)
ENDIF(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)

IF(CMAKE_CXX_FLAGS_DEBUG)
   SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/debug)
ELSE(CMAKE_CXX_FLAGS_DEBUG)
   SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/release)
ENDIF(CMAKE_CXX_FLAGS_DEBUG)
find_package(X11 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
FIND_PACKAGE(ZLIB)

INCLUDE_DIRECTORIES(
   "/home/fon/Developpement/irrlicht-1.8.3/include/"
   ${PROJECT_SOURCE_DIR}/include
)

  find_library(x11 NAMES X11)
  find_library(xrandr NAMES Xrandr)
  find_library(xi NAMES Xi)
  find_library(xxf86vm NAMES Xxf86vm)
  find_library(pthread NAMES pthread)




FILE(GLOB SRCS src/*.cpp)
FILE(GLOB HDRS include/*.h)
 
ADD_EXECUTABLE(example
   ${SRCS}
   ${HDRS}
)
 
TARGET_LINK_LIBRARIES(example
    ${x11} 
    ${xi}
    ${xxf86vm}
    ${pthread}
    ${OPENGL_LIBRARIES}
    ${GLUT_LIBRARIES}
    ${ZLIB_LIBRARIES}
    "/home/fon/Developpement/irrlicht-1.8.3/lib/Linux/libIrrlicht.a"    
)
