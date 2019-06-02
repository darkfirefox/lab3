import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    id: page
    width: 400
    height: 400

    Text {
        id: element
        y: 46
        text: qsTr("Value:")
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: textInput.verticalCenter
    }

    Text {
        id: element1
        y: 103
        text: qsTr("Category:")
        anchors.verticalCenter: cbCategory.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    ComboBox {
        id: cbCategory
        x: 220
        width: 150
        height: 32
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: textInput.bottom
        anchors.topMargin: 30

        model: ["Arrival", "Expense"]
    }

    TextInput {
        id: textInput
        x: 270
        width: 80
        height: 20
        text: qsTr("0")
        font.family: "Times New Roman"
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 30
        validator: RegExpValidator {
            regExp: /[0-9]+\.[0-9]+/
        }
    }

    Rectangle {
        id: rectangle
        radius: 6
        border.color: "#205af2"
        anchors.rightMargin: -3
        anchors.leftMargin: -3
        anchors.bottomMargin: -3
        anchors.top: textInput.top
        anchors.right: textInput.right
        anchors.bottom: textInput.bottom
        anchors.left: textInput.left
        anchors.topMargin: -3
        z: -1
    }
}




/*##^## Designer {
    D{i:1;anchors_x:19}D{i:2;anchors_x:25;anchors_y:103}D{i:3;anchors_y:95}D{i:4;anchors_y:27}
D{i:6;anchors_height:24;anchors_width:80;anchors_x:290;anchors_y:32}
}
 ##^##*/
