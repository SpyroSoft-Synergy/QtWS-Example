#include "WeatherServiceImpl.h"

#include <QRandomGenerator>

namespace
{
    constexpr int32_t randomizeInterval = 1000; // ms
}

WeatherServiceImpl::WeatherServiceImpl(QObject *parent)
    : WeatherServiceSource(parent)
{
    m_timer.setInterval(randomizeInterval);
    m_timer.setSingleShot(false);
    m_timer.callOnTimeout(this, &WeatherServiceImpl::randomizeWeather);
    m_timer.start();
}

WeatherServiceImpl::~WeatherServiceImpl()
{
}

Weather::WeatherType WeatherServiceImpl::weatherType() const
{
    return m_weatherType;
}

int WeatherServiceImpl::temperature() const
{
    return m_temperature;
}

void WeatherServiceImpl::randomizeWeather()
{
    const auto temperatureDelta = QRandomGenerator::global()->bounded(-1, 2);
    if (temperatureDelta != 0)
    {
        m_temperature += temperatureDelta;
        emit temperatureChanged(m_temperature);
    }

    const auto weatherIndex = QRandomGenerator::global()->bounded(0, 5);
    const auto expectedWeather = static_cast<Weather::WeatherType>(weatherIndex);
    if (expectedWeather != m_weatherType)
    {
        m_weatherType = expectedWeather;
        emit weatherTypeChanged(m_weatherType);
    }
}
