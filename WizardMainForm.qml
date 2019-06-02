import QtQuick 2.4
import QtQuick.Controls 2.3

ApplicationWindow {
    id: page
    maximumHeight: 480
    maximumWidth: 640
    minimumWidth: 640
    minimumHeight: 480

    Button {
        id: backButton
        x: 419
        y: 428
        text: "Back"
        visible: swipeView.currentIndex != 0
        focusPolicy: Qt.StrongFocus
        font.family: "Times New Roman"
        anchors.right: nextButton.left
        anchors.rightMargin: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        onClicked:{
            if (swipeView.currentIndex > 0) {
                swipeView.currentIndex--
                backButton.visible = swipeView.currentIndex != 0
                nextButton.text = swipeView.currentIndex == 2 ? "Done" : "Next"
            }
        }
    }

    Button {
        id: nextButton
        x: 515
        y: 428
        text:  "Next"
        spacing: 7
        display: AbstractButton.TextBesideIcon
        font.weight: Font.Normal
        anchors.right: parent.right
        anchors.rightMargin: 59
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        onClicked: {
            if (swipeView.currentIndex == 2) {
                page.close()
            } else {
                swipeView.currentIndex++
            }
            nextButton.text = swipeView.currentIndex == 2 ? "Done" : "Next"
            backButton.visible = swipeView.currentIndex != 0
        }
    }

    SwipeView {
        id: swipeView
        interactive: false
        clip: true
        focusPolicy: Qt.TabFocus
        currentIndex: 0
        orientation: Qt.Horizontal
        anchors.right: parent.right
        anchors.rightMargin: 48
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.top: parent.top
        anchors.topMargin: 140

        Step1Form {
            id: step1Form
            width: swipeView.width
            height: swipeView.height
        }

        Step2Form {
            id: step2Form
            width: swipeView.width
            height: swipeView.height
        }

        Step3Form {
            id: step3Form
            width: swipeView.width
            height: swipeView.height
        }

    }

    PageIndicator {
        id: pageIndicator
        x: 143
        height: 23
        currentIndex: swipeView.currentIndex
        count: swipeView.count
        enabled: false
        transformOrigin: Item.Center
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 60
    }

}








































































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:3;anchors_height:225;anchors_width:520;anchors_x:57;anchors_y:140}
}
 ##^##*/
