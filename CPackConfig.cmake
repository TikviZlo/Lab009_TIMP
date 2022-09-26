install(TARGETS example1 example2)
include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_NAME "print")
set(CPACK_PACKAGE_VERSION_MAJOR 0)
set(CPACK_PACKAGE_VERSION_MINOR 1)
set(CPACK_PACKAGE_VERSION_PATCH 0)
set(CPACK_PACKAGE_VERSION_TWEAK 0)
set(CPACK_PACKAGE_VERSION \${PRINT_VERSION})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static C++ library for printing")

set(CPACK_ARCHIVE_FILE_NAME "print")

set(CPACK_RPM_PACKAGE_NAME "print")
set(CPACK_RPM_PACKAGE_GROUP "labs")
set(CPACK_RPM_PACKAGE_VERSION \${PRINT_VERSION})
set(CPACK_RPM_PACKAGE_RELEASE 1)

include(CPack)