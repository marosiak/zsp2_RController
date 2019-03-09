import Felgo 3.0
import QtQuick 2.0

Item {
    id: item
    property color primaryColor: "#F79F1F"
    property color secondaryColor: "#EE5A24"
    signal clicked()
    signal pressed()
    signal released()
    width: 150
    height: 60
    Rectangle {
        anchors.fill: parent
        color: parent.primaryColor
        MouseArea {
            anchors.fill: parent
            onPressed: {
                parent.color = item.secondaryColor
                item.pressed()
            }
            onReleased: {
                parent.color = item.primaryColor
                item.released()
            }
            onClicked: item.clicked()
        }
    }
}
