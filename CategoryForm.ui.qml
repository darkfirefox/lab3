import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Controls 1.4 as C

Page {
    id: page
    width: 400
    height: 400

    Dialog {
        id: dialog
        width: 400
        height: 400
        modal: true
        focus: true
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        closePolicy: Popup.CloseOnEscape
        contentItem: EditOperation {
            anchors.fill: parent
        }
    }

    TabBar {
        id: tabBar
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        TabButton {
            id: tbArrival
            text: qsTr("Arrival")
        }

        TabButton {
            id: tbExpense
            text: qsTr("Expense")
        }

        TabButton {
            id: tbTransfer
            text: qsTr("Transfer")
        }
    }

    SwipeView {
        id: swipeView
        anchors.bottomMargin: 30
        clip: true
        anchors.top: tabBar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.topMargin: 0
        currentIndex: tabBar.currentIndex

        C.TableView {
            id: tvArrival
            property var removing
            anchors.fill: swipeView
            Menu {
                id: contextMenuArrival
                MenuItem {
                    text: qsTr('Delete')
                    // @disable-check M222
                    onClicked: arrivalListModel.remove(tvArrival.removing)
                }
                MenuItem {
                    text: qsTr('Edit')
                    // @disable-check M222
                    onClicked: dialog.open()
                }
            }
            C.TableViewColumn {
                title: "TimeStamp"
                role: "timestamp"
            }
            C.TableViewColumn {
                title: "Type"
                role: "type"
            }
            C.TableViewColumn {
                title: "Value"
                role: "value"
            }
            C.TableViewColumn {
                title: "AccountFrom"
                role: "accountFrom"
            }
            C.TableViewColumn {
                title: "AccountTo"
                role: "accountTo"
            }
            C.TableViewColumn {
                title: "Category"
                role: "category"
            }
            C.TableViewColumn {
                title: "Description"
                role: "description"
            }

            itemDelegate: Item {
                Text {
                    anchors.centerIn: parent
                    renderType: Text.NativeRendering
                    text: styleData.value
                    color: "green"
                }

                MouseArea {
                    anchors.fill: parent
                    // @disable-check M223
                    onClicked: {
                        tvArrival.removing = tvArrival.rowCount - 1
                        // @disable-check M222
                        contextMenuArrival.popup()
                    }
                }
            }
            model: ListModel {
                id: arrivalListModel
                ListElement {
                    timestamp: "timestamp1"
                    type: "type1"
                    value: "value1"
                    accountFrom: "accountFrom1"
                    accountTo: "accountTo1"
                    category: "category1"
                    description: "description1"
                }
                ListElement {
                    timestamp: "timestamp2"
                    type: "type2"
                    value: "value2"
                    accountFrom: "accountFrom2"
                    accountTo: "accountTo2"
                    category: "category2"
                    description: "description2"
                }
                ListElement {
                    timestamp: "timestamp3"
                    type: "type3"
                    value: "value3"
                    accountFrom: "accountFrom3"
                    accountTo: "accountTo3"
                    category: "category3"
                    description: "description3"
                }
            }
        }

        C.TableView {
            id: tvExpense
            property var removing
            anchors.fill: swipeView
            Menu {
                id: contextMenu
                MenuItem {
                    text: qsTr('Delete')
                    // @disable-check M222
                    onClicked: expenseListModel.remove(tvExpense.removing)
                }
                MenuItem {
                    text: qsTr('Edit')
                    // @disable-check M222
                    onClicked: dialog.open()
                }
            }
            C.TableViewColumn {
                title: "TimeStamp"
                role: "timestamp"
            }
            C.TableViewColumn {
                title: "Type"
                role: "type"
            }
            C.TableViewColumn {
                title: "Value"
                role: "value"
            }
            C.TableViewColumn {
                title: "AccountFrom"
                role: "accountFrom"
            }
            C.TableViewColumn {
                title: "AccountTo"
                role: "accountTo"
            }
            C.TableViewColumn {
                title: "Category"
                role: "category"
            }
            C.TableViewColumn {
                title: "Description"
                role: "description"
            }

            itemDelegate: Item {
                Text {
                    anchors.centerIn: parent
                    renderType: Text.NativeRendering
                    text: styleData.value
                    color: "green"
                }

                MouseArea {
                    anchors.fill: parent
                    // @disable-check M223
                    onClicked: {
                        tvExpense.removing = tvExpense.rowCount - 1
                        // @disable-check M222
                        contextMenu.popup()
                    }
                }
            }
            model: ListModel {
                id: expenseListModel
                ListElement {
                    timestamp: "timestamp1"
                    type: "type1"
                    value: "value1"
                    accountFrom: "accountFrom1"
                    accountTo: "accountTo1"
                    category: "category1"
                    description: "description1"
                }
                ListElement {
                    timestamp: "timestamp2"
                    type: "type2"
                    value: "value2"
                    accountFrom: "accountFrom2"
                    accountTo: "accountTo2"
                    category: "category2"
                    description: "description2"
                }
                ListElement {
                    timestamp: "timestamp3"
                    type: "type3"
                    value: "value3"
                    accountFrom: "accountFrom3"
                    accountTo: "accountTo3"
                    category: "category3"
                    description: "description3"
                }
            }
        }
        C.TableView {
            id: tvTransfer
            property var removing
            anchors.fill: swipeView
            clip: true
            Menu {
                id: contextMenuTransfer
                MenuItem {
                    text: qsTr('Delete')
                    // @disable-check M222
                    onClicked: transferListModel.remove(tvTransfer.removing)
                }
                MenuItem {
                    text: qsTr('Edit')
                    // @disable-check M222
                    onClicked: dialog.open()
                }
            }
            C.TableViewColumn {
                title: "TimeStamp"
                role: "timestamp"
            }
            C.TableViewColumn {
                title: "Type"
                role: "type"
            }
            C.TableViewColumn {
                title: "Value"
                role: "value"
            }
            C.TableViewColumn {
                title: "AccountFrom"
                role: "accountFrom"
            }
            C.TableViewColumn {
                title: "AccountTo"
                role: "accountTo"
            }
            C.TableViewColumn {
                title: "Category"
                role: "category"
            }
            C.TableViewColumn {
                title: "Description"
                role: "description"
            }

            itemDelegate: Item {
                Text {
                    anchors.centerIn: parent
                    text: styleData.value
                    color: "green"
                }

                MouseArea {
                    anchors.fill: parent
                    // @disable-check M223
                    onClicked: {
                        tvTransfer.removing = tbTransfer.rowCount - 1
                        // @disable-check M222
                        contextMenuTransfer.popup()
                    }
                }
            }
            model: ListModel {
                id: transferListModel
                ListElement {
                    timestamp: "timestamp1"
                    type: "type1"
                    value: "value1"
                    accountFrom: "accountFrom1"
                    accountTo: "accountTo1"
                    category: "category1"
                    description: "description1"
                }
                ListElement {
                    timestamp: "timestamp2"
                    type: "type2"
                    value: "value2"
                    accountFrom: "accountFrom2"
                    accountTo: "accountTo2"
                    category: "category2"
                    description: "description2"
                }
                ListElement {
                    timestamp: "timestamp3"
                    type: "type3"
                    value: "value3"
                    accountFrom: "accountFrom3"
                    accountTo: "accountTo3"
                    category: "category3"
                    description: "description3"
                }
            }
        }
    }
}
