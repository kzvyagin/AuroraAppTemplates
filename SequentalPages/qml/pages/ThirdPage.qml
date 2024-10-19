import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.0

Page {
    id: root
    objectName: "ThirdPage"
    allowedOrientations: Orientation.All

    property string parametr1: ""
    property string parametr2: ""




    Rectangle{
        id: rootRect
        anchors.fill: parent
        color: "lightblue"
        property color buttonsColor: "#efe00e"

        RowLayout{

            Button {
                width: 100
                anchors.top: parent.top
                anchors.margins: 40

                text: "Previos Page ( pop )"
                color: Qt.darker(rootRect.buttonsColor)

                onClicked: {
                    pageStack.pop()
                }
            }

           /* Button {
                width: 100
                anchors.top: parent.top
                anchors.margins: 40

                text: "Navigate Back"
                color: Qt.darker(rootRect.buttonsColor)

                onClicked: {
                    pageStack.navigateBack(PageStackAction.Immediate)
                }*/
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
