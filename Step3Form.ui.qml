import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    id: page
    width: 400
    height: 400

    Text {
        id: element
        x: 180
        text: qsTr("Comment:")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 15
    }

    TextEdit {
        id: textEdit
        text: qsTr("")
        renderType: Text.QtRendering
        cursorVisible: true
        font.pointSize: 14
        anchors.top: element.bottom
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Rectangle {
        id: rectangle
        color: "#ffffff"
        radius: 7
        border.color: "#0f19be"
        anchors.rightMargin: -5
        anchors.leftMargin: -5
        anchors.bottomMargin: -5
        anchors.top: textEdit.top
        anchors.right: textEdit.right
        anchors.bottom: textEdit.bottom
        anchors.left: textEdit.left
        anchors.topMargin: -5
        z: -1
    }
}




/*##^## Designer {
    D{i:1;anchors_y:20}D{i:2;anchors_height:20;anchors_width:80;anchors_x:40;anchors_y:60}
D{i:3;anchors_height:317;anchors_width:345;anchors_x:19;anchors_y:44}
}
 ##^##*/
