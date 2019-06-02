import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    id: page
    width: 400
    height: 400

    TextInput {
        id: textInput2
        x: 207
        width: 163
        height: 20
        color: "#bb2020"
        text: qsTr("New description")
        echoMode: TextInput.Normal
        font.pointSize: 12
        font.strikeout: false
        anchors.top: label4.bottom
        anchors.topMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 30
        horizontalAlignment: Text.AlignRight
        maximumLength: 30
        ToolTip {
            visible: textInput2.focus
            text: "new description for this account"
        }
    }

    Label {
        id: label
        y: 42
        text: qsTr("Name:")
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: label3.verticalCenter
    }

    Label {
        id: label1
        y: 91
        text: qsTr("Balance:")
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: label4.verticalCenter
    }

    Label {
        id: label2
        y: 133
        text: qsTr("Description:")
        anchors.verticalCenter: textInput2.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Label {
        id: label3
        x: 291
        text: qsTr("AccountName")
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 30
    }

    Label {
        id: label4
        x: 291
        text: qsTr("5000")
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: label3.bottom
        anchors.topMargin: 30
    }
}




/*##^## Designer {
    D{i:1;anchors_y:132}D{i:3;anchors_x:48}D{i:4;anchors_x:48}D{i:5;anchors_x:48}D{i:6;anchors_y:47}
D{i:7;anchors_y:91}
}
 ##^##*/
