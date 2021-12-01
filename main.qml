import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 520
    visible: true
    title: qsTr("Hello World")
    onWindowStateChanged: {
        screen.width = width
        screen.height = height - bar.height - play.height
        bar.width = width
    }

    Rectangle {
        id: screen
        width: 640
        height: 480
        color: "blue"
    }

    ProgressBar {
        id: bar
        width: 640
        indeterminate: true
        anchors.top: screen.bottom
    }

    Button {
        id: stop
        text: "⏹"
        width: 30
        height: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: bar.bottom
    }

    Button {
        id: pause
        text: "⏸️"
        width: 30
        height: 30
        anchors.right: stop.left
        anchors.top: bar.bottom
    }

    Button {
        id: play
        text: "▶️"
        width: 30
        height: 30
        anchors.right: pause.left
        anchors.top: bar.bottom
    }

    Button {
        id: rewind
        text: "⏪️"
        width: 30
        height: 30
        anchors.left: stop.right
        anchors.top: bar.bottom
    }

    Button {
        id: fast_forward
        text: "⏩️"
        width: 30
        height: 30
        anchors.left: rewind.right
        anchors.top: bar.bottom
    }
}
