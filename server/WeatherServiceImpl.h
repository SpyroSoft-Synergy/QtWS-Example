#pragma once

#include <QTimer>

#include "rep_weatherservice_source.h"

class WeatherServiceImpl : public WeatherServiceSource
{
public:
    WeatherServiceImpl(QObject *parent = nullptr);
    ~WeatherServiceImpl();

    Weather::WeatherType weatherType() const override;
    int temperature() const override;

private:
    void randomizeWeather();

    QTimer m_timer;
    Weather::WeatherType m_weatherType;
    int32_t m_temperature;
};
