import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    id: page
    width: 400
    height: 400

    ComboBox {
        id: cbTypeOperation
        x: 215
        width: 155
        height: 32
        currentIndex: 0
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 30
        model: ["Arrival", "Expense", "Transfer"]
    }

    ComboBox {
        id: cbFromAccount
        x: 215
        width: 155
        height: 32
        currentIndex: 0
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: cbTypeOperation.bottom
        anchors.topMargin: 30

        model: ["AccounForm1", "AccounForm2", "AccounForm3"]
    }

    ComboBox {
        id: cbToAccount
        x: 215
        width: 155
        height: 32
        currentIndex: 0
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: cbFromAccount.bottom
        anchors.topMargin: 30

        model: ["AccounTo1", "AccounTo2", "AccounTo3"]
    }

    Text {
        id: element
        y: 39
        text: qsTr("Type operation")
        verticalAlignment: Text.AlignVCenter
        textFormat: Text.PlainText
        font.capitalization: Font.MixedCase
        font.pointSize: 14
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenterOffset: 0
        anchors.verticalCenter: cbTypeOperation.verticalCenter
    }

    Text {
        id: element1
        y: 104
        text: qsTr("From Account:")
        verticalAlignment: Text.AlignVCenter
        style: Text.Normal
        anchors.verticalCenter: cbFromAccount.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Text {
        id: element2
        y: 178
        text: qsTr("To account:")
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter: cbToAccount.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 30
    }
}

/*##^## Designer {
    D{i:1;anchors_y:30}D{i:2;anchors_y:104}D{i:3;anchors_y:169}D{i:4;anchors_x:34}D{i:5;anchors_x:34;anchors_y:104}
D{i:6;anchors_x:34}
}
 ##^##*/

