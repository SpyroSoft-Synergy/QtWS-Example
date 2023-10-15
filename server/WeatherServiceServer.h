#pragma once

#include <QObject>

class WeatherServiceServer : public QObject
{
    Q_OBJECT
public:
    WeatherServiceServer(QObject *parent = nullptr);

public slots:
    void start();
};
