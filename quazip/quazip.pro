QT -= gui

TEMPLATE = lib
DEFINES += QUAZIP_BUILD

CONFIG += c++14

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    JlCompress.cpp \
    qioapi.cpp \
    quaadler32.cpp \
    quachecksum32.cpp \
    quacrc32.cpp \
    quagzipfile.cpp \
    quaziodevice.cpp \
    quazip.cpp \
    quazipdir.cpp \
    quazipfile.cpp \
    quazipfileinfo.cpp \
    quazipnewinfo.cpp \
    unzip.c \
    zip.c

HEADERS += \
    JlCompress.h \
    ioapi.h \
    minizip_crypt.h \
    quaadler32.h \
    quachecksum32.h \
    quacrc32.h \
    quagzipfile.h \
    quaziodevice.h \
    quazip.h \
    quazip_global.h \
    quazipdir.h \
    quazipfile.h \
    quazipfileinfo.h \
    quazipnewinfo.h \
    unzip.h \
    zip.h

LIBS += -lz

# Default rules for deployment.
includes.files = $$PWD/*.h
includes.path = $$OUT_PWD/../include
target.path = $$OUT_PWD/../../debug

INSTALLS += includes
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(debug, debug|release) {
    TARGET = $$join(TARGET,,,d)
}
