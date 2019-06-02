import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 400
    height: 400

    ListView {
        id: listView
        anchors.fill: parent
        property var removing
        Menu {
            id: contextMenu
            MenuItem {
                text: qsTr('Delete')
                // @disable-check M222
                onClicked: listModel.remove(listView.removing)
            }
            MenuItem {
                text: qsTr('Edit')
                // @disable-check M222
                onClicked: dialog.open()
            }
        }
        delegate: Item {
            width: parent.width
            height: 40
            Rectangle {
                anchors.fill: parent
                Row {
                    id: row1
                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                }
                border.color: "lightblue"
                border.width: 1

                MouseArea {
                    anchors.fill: parent
                    // @disable-check M223
                    onClicked: {
                        listView.removing = index
                        // @disable-check M222
                        contextMenu.popup()
                    }
                }
            }
        }
        model: ListModel {
            id: listModel
            ListElement {
                name: "AccountFrom1"
            }

            ListElement {
                name: "AccountFrom2"
            }

            ListElement {
                name: "AccountFrom3"
            }
            ListElement {
                name: "AccountTo1"
            }
            ListElement {
                name: "AccountTo2"
            }
            ListElement {
                name: "AccountTo3"
            }
        }
    }

    Dialog {
        id: dialog
        width: 400
        height: 400
        modal: true
        focus: true
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        contentItem: EditAccount {
            anchors.fill: parent
        }
    }
}




/*##^## Designer {
    D{i:1;anchors_height:160;anchors_width:110;anchors_x:128;anchors_y:114}
}
 ##^##*/
