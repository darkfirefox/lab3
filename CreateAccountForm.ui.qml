import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    id: page
    width: 400
    height: 400

    Label {
        id: label
        y: 50
        text: qsTr("Name:")
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: textInput.verticalCenter
    }

    TextInput {
        id: textInput
        x: 290
        width: 80
        height: 20
        text: qsTr("Name")
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 30
        font.pixelSize: 12
    }

    TextInput {
        id: textInput1
        x: 290
        width: 80
        height: 20
        text: qsTr("Descrition")
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: textInput.bottom
        anchors.topMargin: 30
        font.pixelSize: 12
    }

    TextInput {
        id: textInput2
        x: 283
        width: 80
        height: 20
        text: qsTr("0")
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: textInput1.bottom
        anchors.topMargin: 30
        font.pixelSize: 12
    }

    Label {
        id: label1
        y: 101
        text: qsTr("Description:")
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: textInput1.verticalCenter
    }

    Label {
        id: label2
        y: 150
        text: qsTr("Balance:")
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: textInput2.verticalCenter
    }
}
