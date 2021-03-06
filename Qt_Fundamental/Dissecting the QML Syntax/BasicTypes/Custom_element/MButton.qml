import QtQuick 2.14
import QtQuick.Window 2.14

Item {
    id: rootId
    width: containerRectId.width
    height: containerRectId.height
    property alias buttonText: buttonTextId.text
    signal buttonClicked

    Rectangle {
        id: containerRectId
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: "red"
        border {color: "blue"; width: 3}

        Text {
            id: buttonTextId
            text: "Button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //console.log("Clicked ON: " + buttonTextId.text)
                rootId.buttonClicked()
            }
        }
    }
}


