#-------------------------------------------------
#
# Project created by QtCreator 2016-08-11T14:21:48
#
#-------------------------------------------------

QT       += core gui printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = BaseVMEDAQ
DESTDIR = bin
targetinstall.path = /usr/local/bin/BaseVMEDAQ
targetinstall.files = bin/BaseVMEDAQ

INSTALLS += targetinstall

icon.path = /usr/local/BaseVMEDAQ
icon.files = data/iconBaseVMEDAQ.png
icon.extra = cp data/BaseVMEDAQ.desktop ~/Desktop/BaseVMEDAQ.desktop

INSTALLS += icon

TEMPLATE = app


SOURCES += src/main.cpp \
    src/mainwindow.cpp \
    src/qcustomplot.cpp \
    src/histogram.cpp 

OBJECTS_DIR = build/.obj
MOC_DIR = build/.moc
RCC_DIR = build/.rcc
UI_DIR = build/.ui

INCLUDEPATH += include

HEADERS  += include/mainwindow.h \
    include/qcustomplot.h \
    include/histogram.h 

FORMS += form/mainwindow.ui 

RESOURCES += data/resources.qrc

QMAKE_CXXFLAGS += -std=c++0x -DLINUX

LIBS += -lCAENVME
