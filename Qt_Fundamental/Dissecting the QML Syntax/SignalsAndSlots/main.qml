import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and Slots")

    property int increment: 50

    Rectangle {
        id: rectangleId
        width: 200 + increment
        height: 300
        color: "red"

        signal greet(string message) //Declare Signal

        onGreet: {
            console.log("\nonGreet: greet signal emited")
        }

        onWidthChanged: {

        }

        function myGreeting (mMessage) {
            console.log("My greeting slot called. The parameter is: " + mMessage)
            increment += 50
        }

        function myGreeting2 (msg) {
            console.log("My greeting2 slot calledr. The para is: " + msg)
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("Hello from signal")
                rectangleId.greet.connect(rectangleId.myGreeting)
            }
        }

        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting2)
        }
    }
}
