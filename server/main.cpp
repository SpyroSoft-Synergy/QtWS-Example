#include <QCoreApplication>

#include "WeatherServiceServer.h"

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);

    WeatherServiceServer server;
    server.start();

    return app.exec();
}
