import QtQuick
import QtQuick.Controls

Rectangle {
    id: rectangle
    width: 200
    height: 200
    color: "#b6c649"
    radius: 50

    property alias icon: image.source
    property alias temperature: temeperatureText.text

    Image {
        id: image
        y: 92
        source: Qt.resolvedUrl("../images/dice.png")
        anchors.horizontalCenter: rectangle.horizontalCenter

        width: 100
        height: 100
    }

    Text {
        id: temeperatureText
        x: 45
        y: 44
        width: 50
        height: 34
        color: "white"

        text: "0"
        anchors.bottom: image.top
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignTop
        font.pointSize: 24
        anchors.bottomMargin: 14
    }

    Text {
        id: textUnit
        x: 131
        y: 24
        width: 33
        height: 34
        text: "°C"
        color: temeperatureText.color
        anchors.left: temeperatureText.right
        anchors.right: image.right
        anchors.top: temeperatureText.top
        anchors.bottom: temeperatureText.bottom
        anchors.bottomMargin: 0
        font.pointSize: temeperatureText.font.pointSize
        anchors.leftMargin: 6
    }
}
