import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML datatypes")

    Item {
        id: containerItemId
        x: 50; y: 50

        width: 400
        height: 300

//        Rectangle {
//            anchors.fill: parent
//            color: "beige"
//            border.color: "black"
//            border.width: 5
//        }

        Rectangle {
            x: 0
            y: 10
            width: 50
            height: 50
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    mTextId.text = "red click"
                }
            }
        }

        Rectangle {
            x: 70
            y: 10
            width: 50
            height: 50
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    mTextId.text = "blue click"
                }
            }
        }

//        Text {
//            x: 100
//            y: 100
//            id: mTextId
//            text: "Hello World!"
//            color: "red"
//            font {
//                family: "Helvetica"; pointSize: 24; bold: true
//            }
//        }

        Image {
            x: 150
            y: 150
            z: 30
            width: 100
            height: 100
            //load image from the working directory
            source: "images/QtCreator.png"
        }

//        Image {
//            x: 100
//            y: 150
//            width: 100
//            height: 100
//            //load image from the resource file
//            source: "images/QtCreator.png"
//        }
    }
}
