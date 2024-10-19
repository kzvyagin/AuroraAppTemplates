import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.0


Page {
    id: root
    objectName: "SecondPage"
    allowedOrientations: Orientation.All

    property string parametr1: ""
    property string parametr2: ""

    Rectangle{
        id: rootRect
        anchors.fill: parent
        color: "lightgreen"
        property color buttonsColor: "#efe00e"

        RowLayout{

            Button {
                width: 100
                anchors.top: parent.top
                anchors.margins: 40
                color: Qt.darker(rootRect.buttonsColor)

                text: "Previos Page"
                onClicked: {
                    pageStack.pop()
                }
            }

            Button {
                width: 100
                anchors.top: parent.top
                anchors.margins: 40

                text: "Third Page"
                color: Qt.lighter(rootRect.buttonsColor)
                onClicked: {
                    pageStack.push(Qt.resolvedUrl( "ThirdPage.qml" ))
                }

            }
        }

        Text {
            id: text
            anchors.centerIn: parent
            text: root.objectName
            color: "black"
            font.pixelSize: 30
        }
    }
}

