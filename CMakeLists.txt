cmake_minimum_required(VERSION 3.20)

project(vulky)

set(SOURCES ${CMAKE_SOURCE_DIR}/src/main.cpp)

find_path(VULKAN_INCLUDE_DIRS NAMES vulkan/vulkan.h PATHS "C:/VulkanSDK/1.3.250.1/Include")

include_directories(include ${VULKAN_INCLUDE_DIRS})
add_executable(main ${SOURCES})

set(GLFW_LIBRARIES
  ${CMAKE_SOURCE_DIR}/libs/libglfw3.a
  ${CMAKE_SOURCE_DIR}/libs/libglfw3dll.a
  )

find_library(VULKAN_LIB NAMES vulkan-1 HINTS "C:/VulkanSDK/1.3.250.1/Lib")
target_link_libraries(main PRIVATE 
  ${GLFW_LIBRARIES}
  ${VULKAN_LIB}
)

# cmake_minimum_required(VERSION 3.20)
#
# project(vulky)
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# set(CMAKE_EXPORT_COMPILE_COMMANDS_COMPATIBILITY ON)
#
# # Use Linux-style paths in WSL
# set(SOURCES ${CMAKE_SOURCE_DIR}/src/main.cpp)
#
# # Locate Vulkan Headers
# find_path(VULKAN_INCLUDE_DIRS NAMES vulkan/vulkan.h PATHS "/mnt/c/VulkanSDK/1.3.250.1/Include")
# include_directories(include ${VULKAN_INCLUDE_DIRS})
# # find_library(VULKAN_LIB NAMES vulkan-1.lib HINTS "/mnt/c/VulkanSDK/1.3.250.1/Lib")
# # Create an executable
# add_executable(main ${SOURCES})
#
# # Set GLFW Libraries (use Linux-style paths)
# set(GLFW_LIBRARIES
#   ${CMAKE_SOURCE_DIR}/libs/libglfw3.a
#   ${CMAKE_SOURCE_DIR}/libs/libglfw3dll.a
# )
#
# # Locate Vulkan Library (use Linux-style paths)
#
# # Link libraries
# target_link_libraries(main PRIVATE 
#   ${GLFW_LIBRARIES}
#   /mnt/c/VulkanSDK/1.3.250.1/Lib/vulkan-1.lib
# )
#
