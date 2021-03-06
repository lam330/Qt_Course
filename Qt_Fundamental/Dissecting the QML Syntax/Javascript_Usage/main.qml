import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: containerRectId
        width: getWidth() //Js in Function
        height: 100
        color: x > 300 ? "red" : "green" //Js in property binding

        //Js in signal handler
        onXChanged: {
            console.log("Current value of x: " + x)
        }

        //Custom function
        function getWidth() {
            return height * 2
        }
    }

    MouseArea {
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX: parent.width - containerRectId.width
    }
}
