import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.0

Page {
    id: root
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        id: pageHeader
        objectName: "pageHeader"
        title: qsTr("MultiPage")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter

                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }


    RowLayout{
        anchors.top: pageHeader.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        width: 100
        anchors.margins: 40
        spacing: 40

        Button {
            width: 100
            text: "First Page"
            color: "#FFaeFF"
            onClicked: {
                pageStack.push(Qt.resolvedUrl( "FirstPage.qml" ))
            }
        }
    }


}
