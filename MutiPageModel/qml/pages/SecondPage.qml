import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: root
    objectName: "SecondPage"
    allowedOrientations: Orientation.All

    property string parametr1: ""
    property string parametr2: ""

    Rectangle{
        anchors.fill: parent
        color: "lightgreen"
        Text {
            id: text
            anchors.centerIn: parent
            text: root.objectName
            color: "black"
            font.pixelSize: 30
        }
    }
}

