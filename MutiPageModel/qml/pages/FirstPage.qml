import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: root

    objectName: "FirstPage"
    allowedOrientations: Orientation.All

    property string parametr1: ""
    property string parametr2: ""

    Rectangle{
        anchors.fill: parent
        color: "lightcyan"
        Text {
            id: text
            anchors.centerIn: parent
            text: root.objectName
            color: "black"
            font.pixelSize: 30
        }
    }
}
