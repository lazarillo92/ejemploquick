import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true
    width: 800
    height: 480
    id: root
    title: qsTr("Hello World")


    MainForm {
        switch3.onClicked: {
            serialito.rojoRGB();
}
        switch2.onClicked: {
            serialito.azulRGB();
        }
        switch1.onClicked: {
            serialito.iniciarSerial();
        }
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))

        }
    }
}
