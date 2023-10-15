import QtQuick
import QtQuick.Window

Window {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello QtWS")

    MainScreen {
        id: screen
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }
}
