import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Dialogs 1.3
import Qt.labs.settings 1.0

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Settings")

    Rectangle {
        id: rectId
        anchors.fill: parent
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                colorDialogId.open()
            }

            ColorDialog {
                id: colorDialogId
                title: "Please choose a color"
                onAccepted: {
                    console.log("The new color is: " + color)
                    rectId.color = color
                }
                onRejected: {
                    console.log("Canceled")
                }
            }
        }
    }

    Settings {
        category: "window"
        property  alias x: rootId.x
        property  alias y: rootId.y
        property  alias width: rootId.x
        property  alias height: rootId.height
    }

    Settings {
        category: "color"
        property  alias rectColor: rectId.color
    }
}
