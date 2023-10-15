import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    color: "#2c4251"
    width: 640
    height: 480

    WeatherViewModel {
        id: viewModel
    }

    Text {
        id: text1
        width: 640
        height: 100
        color: "#c1c1c1"
        text: "QtWS Example App"
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 50
        anchors.top: root.top
    }

    WeatherDisplay {
        id: weatherDisplay

        anchors.centerIn: root
        icon: viewModel.weatherIcon
        temperature: viewModel.temperature
    }
}
