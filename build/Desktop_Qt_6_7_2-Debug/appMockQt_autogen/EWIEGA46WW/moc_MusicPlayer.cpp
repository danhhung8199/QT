/****************************************************************************
** Meta object code from reading C++ file 'MusicPlayer.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../MusicPlayer.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MusicPlayer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.7.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSMusicPlayerENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSMusicPlayerENDCLASS = QtMocHelpers::stringData(
    "MusicPlayer",
    "play",
    "",
    "url",
    "pause",
    "stop",
    "resume",
    "getStatus",
    "QMediaPlayer::PlaybackState",
    "getCurrentTime",
    "getDuration",
    "getVolume",
    "setVolume",
    "volume",
    "setCurrentTime",
    "time",
    "getName",
    "getArtist"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSMusicPlayerENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,   86,    2, 0x02,    1 /* Public */,
       4,    0,   89,    2, 0x02,    3 /* Public */,
       5,    0,   90,    2, 0x02,    4 /* Public */,
       6,    0,   91,    2, 0x02,    5 /* Public */,
       7,    0,   92,    2, 0x02,    6 /* Public */,
       9,    0,   93,    2, 0x02,    7 /* Public */,
      10,    0,   94,    2, 0x02,    8 /* Public */,
      11,    0,   95,    2, 0x02,    9 /* Public */,
      12,    1,   96,    2, 0x02,   10 /* Public */,
      14,    1,   99,    2, 0x02,   12 /* Public */,
      16,    0,  102,    2, 0x02,   14 /* Public */,
      17,    0,  103,    2, 0x02,   15 /* Public */,

 // methods: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    0x80000000 | 8,
    QMetaType::LongLong,
    QMetaType::LongLong,
    QMetaType::Float,
    QMetaType::Void, QMetaType::Float,   13,
    QMetaType::Void, QMetaType::LongLong,   15,
    QMetaType::QString,
    QMetaType::QString,

       0        // eod
};

Q_CONSTINIT const QMetaObject MusicPlayer::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSMusicPlayerENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSMusicPlayerENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSMusicPlayerENDCLASS_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<MusicPlayer, std::true_type>,
        // method 'play'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'pause'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'stop'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'resume'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'getStatus'
        QtPrivate::TypeAndForceComplete<QMediaPlayer::PlaybackState, std::false_type>,
        // method 'getCurrentTime'
        QtPrivate::TypeAndForceComplete<qint64, std::false_type>,
        // method 'getDuration'
        QtPrivate::TypeAndForceComplete<qint64, std::false_type>,
        // method 'getVolume'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'setVolume'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'setCurrentTime'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<qint64, std::false_type>,
        // method 'getName'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getArtist'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>
    >,
    nullptr
} };

void MusicPlayer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MusicPlayer *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->play((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 1: _t->pause(); break;
        case 2: _t->stop(); break;
        case 3: _t->resume(); break;
        case 4: { QMediaPlayer::PlaybackState _r = _t->getStatus();
            if (_a[0]) *reinterpret_cast< QMediaPlayer::PlaybackState*>(_a[0]) = std::move(_r); }  break;
        case 5: { qint64 _r = _t->getCurrentTime();
            if (_a[0]) *reinterpret_cast< qint64*>(_a[0]) = std::move(_r); }  break;
        case 6: { qint64 _r = _t->getDuration();
            if (_a[0]) *reinterpret_cast< qint64*>(_a[0]) = std::move(_r); }  break;
        case 7: { float _r = _t->getVolume();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 8: _t->setVolume((*reinterpret_cast< std::add_pointer_t<float>>(_a[1]))); break;
        case 9: _t->setCurrentTime((*reinterpret_cast< std::add_pointer_t<qint64>>(_a[1]))); break;
        case 10: { QString _r = _t->getName();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 11: { QString _r = _t->getArtist();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject *MusicPlayer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MusicPlayer::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSMusicPlayerENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int MusicPlayer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 12;
    }
    return _id;
}
QT_WARNING_POP
