#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/gui/");
    engine.load(QUrl(QStringLiteral("qrc:/example_application/qml/main.qml")));

    return app.exec();
}
