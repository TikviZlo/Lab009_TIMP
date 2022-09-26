## 1. Клонируем репозиторий лабораторной работы №8, убираем ненужные файлы и немного меняем те, что остались.

## 2. Создаём файл CPackConfig.cmake:

```
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
```

## 3. Собираем проект, затем его пакетируем:

```
$ cmake -H. -B_build 
$ cmake --build _build
$ cd _build
$ cpack -G "TGZ"
$ mv print--Linux.tar.gz ../..
```

## 4.Устанавливаем GitHub CLI

## 5. Авторизируемся в GitHub CLI, делаем тег, пушим его и создаём релиз.

```
$ gh auth login
$ git tag -a v0.1.0 -m "Version 0.1.0 release"
$ git push origin master --follow-tags
$ gh release create v0.1.0 './print--Linux.tar.gz#print examples'
```
