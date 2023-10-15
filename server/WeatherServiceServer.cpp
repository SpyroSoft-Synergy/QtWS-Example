#include "WeatherServiceServer.h"

#include "WeatherServiceImpl.h"
#include "core.h"

namespace
{
    const QString kRemotingUri = QStringLiteral("com.qtws.weather.WeatherService");
}

WeatherServiceServer::WeatherServiceServer(QObject *parent)
    : QObject(parent)
{
}

void WeatherServiceServer::start()
{
    auto service = new WeatherServiceImpl(this);
    Core::instance()->host()->enableRemoting(service, kRemotingUri);
    qInfo() << "Registered service under" << kRemotingUri;
}
