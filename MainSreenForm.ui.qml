import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    width: 400
    height: 400
    readonly property int responsiveWidth: 500


    EditOperation {
        id: swipeView
        anchors.fill: parent
    }
}



