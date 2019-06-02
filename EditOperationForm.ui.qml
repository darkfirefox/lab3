import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 400
    height: 400

    ListView {
        id: listView
        anchors.fill: parent
        delegate: Item {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 40
            Row {
                id: row1
                anchors.fill: parent
                Label {
                    id: label
                    text: name
                    anchors.left: parent.left
                }
                TextInput {
                    text: value
                    readOnly: read
                    anchors.right: parent.right
                    anchors.left: label.right
                    maximumLength: 30
                    color: read ? "000000" : "#bb2020"
                }
            }
        }
        model: ListModel {
            ListElement {
                name: "Timestamp:"
                value: "2019.03.03 12:55"
                read: true
            }

            ListElement {
                name: "Type:"
                value: "Arrival"
                read: true
            }
            ListElement {
                name: "Value:"
                value: "500"
                read: true
            }
            ListElement {
                name: "AccountFrom:"
                value: "AccountFrom1"
                read: true
            }
            ListElement {
                name: "AccountTo:"
                value: "AccountTo1"
                read: true
            }
            ListElement {
                name: "Category:"
                value: "Arrival"
                read: true
            }
            ListElement {
                name: "Description:"
                value: "description"
                read: false
            }
        }
    }
}




/*##^## Designer {
    D{i:1;anchors_height:160;anchors_width:110;anchors_x:145;anchors_y:176}
}
 ##^##*/
