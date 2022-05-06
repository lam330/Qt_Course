#include <QGuiApplication>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include "person.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QList<QObject *> personList;
    personList.append(new Person("John Doe C++","green",32,&engine));
    personList.append(new Person("Mary Green","blue",23,&engine));

    engine.rootContext()->setContextProperty("personModel",QVariant::fromValue(personList));



    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
