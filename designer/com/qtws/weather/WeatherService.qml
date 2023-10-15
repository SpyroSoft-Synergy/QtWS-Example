import QtQuick

Item {
    property int weatherType: 3
    property int temperature: -12

    NumberAnimation on temperature {
        from: -100
        to: 100

        duration: (to - from) * 100

        loops: Animation.Infinite
        running: true
    }
}
