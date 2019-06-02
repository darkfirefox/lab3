import QtQuick 2.9
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
    width: 640
    height: 500
    id: window
    minimumWidth: 640
    minimumHeight: 500
    readonly property int responsiveWidth: 800
    property variant win;
    title: qsTr("Lab3")

    Dialog {
        id: dialog
        width: 640
        height: 500
        modal: true
        focus: true
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        closePolicy: Popup.CloseOnEscape
        contentItem: Dashboard {
            anchors.fill: parent
        }
    }

    SwipeView  {
        id: swipeView
        currentIndex: 1
        anchors.fill: parent
        states: [
            State {
                when: window.width >= responsiveWidth
                ParentChange { target: accountsList; parent: accountListContainer; }
                ParentChange { target: operationsList; parent: operationListContainer; }
                PropertyChanges { target: indicator; visible: hide }
            }
        ]
        Item {
            Rectangle {
                id: accountsList
                anchors.fill: parent
                color: "lightblue"; border.width: 5; border.color: "white"
                Accounts {
                    anchors.fill: parent
                }
            }
        }
        Item {
            Rectangle{
                id: operationsList
                anchors.fill: parent
                color: "lightgray"; border.width: 5; border.color: "white"
                Category {
                    anchors.fill: parent
                }
            }
        }
    }

    PageIndicator {
        id: indicator
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.bottom: swipeView.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: swipeView.horizontalCenter
    }

    Row {
        id: splitView
        anchors.fill: parent
        Item {
            id: accountListContainer
            width: parent.width / 2; height: parent.height
        }
        Item {
            id: operationListContainer
            width: parent.width / 2; height: parent.height
        }
    }

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem {
                text: "Create operation"
                onClicked: {
                    var component = Qt.createComponent("WizardMainForm.qml");
                    win = component.createObject(window);
                    win.show();
                }
            }
            MenuItem {
                text: "draw dasboard"
                onClicked: {
                    dialog.open()
                }
            }

            MenuItem {
                text: "Exit"
                onClicked: window.close()
            }
        }
    }

}


