# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appMockQt_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appMockQt_autogen.dir/ParseCache.txt"
  "appMockQt_autogen"
  )
endif()
