import QtQuick 2.6
import Sailfish.Silica 1.0

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


    Drawer {
           id: drawer

           objectName: "drawer"
           anchors {
               top: pageHeader.bottom
               left: parent.left
               right: parent.right
               bottom: parent.bottom
           }
           open: true
           backgroundSize: backgroundView.contentHeight
           background: SilicaListView {
               id: backgroundView

               objectName: "backgroundView"
               anchors.fill: parent
               model: [
                   {
                       labelText: qsTr("First Page"),
                       destinationPage: "FirstPage",
                       destinationProperties: { "parametr1": "1", "parametr2": "2" }
                   }, {
                       labelText: qsTr("Second Page"),
                       destinationPage: "SecondPage",
                       destinationProperties: { "parametr1": "1", "parametr2": "2" }
                   }, {
                       labelText: qsTr("Third Page"),
                       destinationPage: "ThirdPage",
                       destinationProperties: { "parametr1": "1", "parametr2": "2" }
                   }

               ]
               delegate: BackgroundItem {
                   id: drawerMenuItem

                   objectName: "drawerMenuItem_%1".arg(index)
                   anchors {
                       left: parent.left
                       right: parent.right
                   }
                   height: contentHeight
                   contentHeight: Theme.itemSizeMedium

                   onClicked: {
                       //drawer.hide();
                       pageStack.push(Qt.resolvedUrl( "%1.qml".arg(modelData.destinationPage)),
                                                                   modelData.destinationProperties);
                   }

                   Label {
                       objectName: "drawerItemLabel"
                       anchors.centerIn: parent
                       text: modelData.labelText
                   }
               }
           }
    }


}
