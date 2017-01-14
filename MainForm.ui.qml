import QtQuick 2.7
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.0

Rectangle {
    property alias mouseArea: mouseArea
    property alias textEdit: textEdit

    width: 360
    height: 360
    property alias switch3: switch3
    property alias switch2: switch2
    property alias switch1: switch1

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        Dial {
            id: dial
            x: 196
            y: 181
            width: 149
            height: 106
        }

        Switch {
            id: switch1
            x: 39
            y: 88
            text: qsTr("iniciar Serial")
        }

        Switch {
            id: switch2
            x: 54
            y: 170
            text: qsTr("azul")
        }

        Switch {
            id: switch3
            x: 54
            y: 247
            text: qsTr("rojo")
        }
    }

    TextEdit {
        id: textEdit
        text: qsTr("Enter some text...")
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            border.width: 1
        }
    }
}
