import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        MButton {
            buttonText: "Button1"
            onButtonClicked: {
                console.log("Clicked on button 1 from main file")
            }
        }

        MButton {
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked on button 2 from main file")
            }
        }
    }
}
