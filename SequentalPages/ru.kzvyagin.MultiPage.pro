TARGET = ru.kzvyagin.MultiPage

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    qml/pages/ThirdPage.qml \
    rpm/ru.kzvyagin.MultiPage.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.kzvyagin.MultiPage.ts \
    translations/ru.kzvyagin.MultiPage-ru.ts \
