import Felgo 3.0
import QtQuick 2.0
import "../components"
Page {
    id: page
    width: 700
    height: 300
    signal settingsClicked()
    function resize(){
        if (page.width <= page.height) {
            customButton.width = page.width-16

            column.height = (parent.height/2)+8
            column.width = (page.width/2)-16-8
        } else {
            customButton.width = page.width/5
            column.height = parent.height-16
            column.width = page.width/4
        }
    }

    onHeightChanged: {
        resize()
    }
    onWidthChanged: {
        resize()
    }

    Column {
        id: column
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        spacing: 8
        CustomButton {
            width: parent.width
            height: (parent.height/2)-4
        }
        CustomButton {
            width: parent.width
            height: (parent.height/2)-4
        }
    }
    Row {
        width: (parent.width/2)-10
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        spacing: 8
        height: parent.height/2
        CustomButton {
            height: (parent.height)-4
            width: parent.width/2
        }
        CustomButton {
            height: (parent.height)-4
            width: parent.width/2
        }
    }
    CustomButton {
        id: customButton
        width: parent.width/5
        height: 55
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: page.settingsClicked()
        Text {
            color: "#ffffff"
            text: "Ustawienia"
            font.pointSize: 18.6
            lineHeight: 0.9
            renderType: Text.NativeRendering
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
