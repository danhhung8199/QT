#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "MusicPlayer.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    MusicPlayer musicPlayer;

    engine.rootContext()->setContextProperty("musicPlayer", &musicPlayer);

    const QUrl url(u"qrc:/MockQt/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
                         if (!obj && url == objUrl)
                             QCoreApplication::exit(-1);
                     }, Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}
