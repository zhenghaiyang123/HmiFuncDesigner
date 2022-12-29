include(../HmiFuncDesigner.pri)

TEMPLATE  = subdirs
CONFIG += ordered
SUBDIRS   = \
    utils \
    edncrypt \
    csv \
    qtpropertybrowser \
    qscintilla \
#    Lua \
#    Ftp \
    shared \
    gradienteditor \
    core


for(l, SUBDIRS) {
    QTC_LIB_DEPENDS =
    include($$l/$${l}_dependencies.pri)
    lv = $${l}.depends
    $$lv = $$QTC_LIB_DEPENDS
}



