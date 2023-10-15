import QtQuick

import com.qtws.weather

Item {
    readonly property int temperature: internal.weatherService.temperature
    readonly property string weatherIcon: {
        switch (internal.weatherService.weatherType) {
            case Weather.Sun:
                return Qt.resolvedUrl("../images/sun.png");
            case Weather.Rain:
                return Qt.resolvedUrl("../images/raining.png");
            case Weather.Clouds:
                return Qt.resolvedUrl("../images/sun-cloud.png");
            default:
                return Qt.resolvedUrl("../images/dice.png");
        }
    }

    readonly property QtObject internal: QtObject {
        readonly property WeatherService weatherService: WeatherService { }
    }
}
