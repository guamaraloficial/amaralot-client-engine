# Try to find the GLEW library
#  GLEW_FOUND - system has GLEW
#  GLEW_INCLUDE_DIR - the GLEW include directory
#  GLEW_LIBRARY - the GLEW library

FIND_PATH(GLEW_INCLUDE_DIR NAMES GL/glew.h)
SET(_GLEW_STATIC_LIBS libGLEW.a libglew32.a)
SET(_GLEW_SHARED_LIBS libGLEW.dll.a libglew32.dll.a GLEW glew32)
IF(USE_STATIC_LIBS)
    FIND_LIBRARY(GLEW_LIBRARY NAMES ${_GLEW_STATIC_LIBS} ${_GLEW_SHARED_LIBS})
ELSE()
    FIND_LIBRARY(GLEW_LIBRARY NAMES ${_GLEW_SHARED_LIBS} ${_GLEW_STATIC_LIBS})
ENDIF()
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GLEW DEFAULT_MSG GLEW_LIBRARY GLEW_INCLUDE_DIR)
MARK_AS_ADVANCED(GLEW_LIBRARY GLEW_INCLUDE_DIR)

# The engine links the modern target name. Keep this module usable without
# vcpkg's optional find-package wrapper as well.
if(GLEW_FOUND AND NOT TARGET GLEW::GLEW)
    add_library(GLEW::GLEW INTERFACE IMPORTED)
    target_include_directories(GLEW::GLEW INTERFACE "${GLEW_INCLUDE_DIR}")
    target_link_libraries(GLEW::GLEW INTERFACE "${GLEW_LIBRARY}")
endif()
