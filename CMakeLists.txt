cmake_minimum_required(VERSION 2.8)

project(OBG)

set(CMAKE_CXX_FLAGS "-g -std=c++0x")
set(VSOMEIP_NAME "vsomeip3")

# find_package(vsomeip 2.6.0 REQUIRED)
find_package(${VSOMEIP_NAME})
find_package(Boost 1.55 COMPONENTS system thread log REQUIRED)

include_directories(${Boost_INCLUDE_DIR} ${VSOMEIP_INCLUDE_DIRS})

add_executable(obgapp obgapp.cpp)
add_executable(obgmanager obgmanager.cpp)
target_link_libraries(obgapp ${VSOMEIP_LIBRARIES} ${Boost_LIBRARIES})
target_link_libraries(obgmanager ${VSOMEIP_LIBRARIES} ${Boost_LIBRARIES})
