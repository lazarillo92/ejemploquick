#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>
#include <QQmlEngine>
#include <serialisimo.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QScopedPointer<Serialisimo> serialon(new Serialisimo);




    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    Serialisimo miSerial;
    engine.rootContext()->setContextProperty("serialito",&miSerial);



    //engine.rootContext()->setContextProperty("serialon", serialon.data());


    return app.exec();
}
