import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.0

Page {
    id: root

    objectName: "FirstPage"
    allowedOrientations: Orientation.All

    property string parametr1: ""
    property string parametr2: ""

    Rectangle{
        id: rootRect
        anchors.fill: parent
        color: "lightcyan"
        property color buttonsColor: "#efe00e"
        RowLayout{
            spacing: 40
            Button {
                width: 100
                anchors.top: parent.top
                anchors.margins: 40

                text: "Previos Page"
                onClicked: {
                    pageStack.pop()
                }
                color: Qt.darker(rootRect.buttonsColor)
            }

            Button {
                width: 100
                anchors.top: parent.top
                anchors.margins: 40

                text: "Second Page"
                color: Qt.lighter(rootRect.buttonsColor)

                onClicked: {
                    pageStack.push(Qt.resolvedUrl( "SecondPage.qml" ))
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
