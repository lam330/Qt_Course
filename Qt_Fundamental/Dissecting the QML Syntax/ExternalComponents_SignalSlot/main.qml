import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External components communicate_Signals and Slots")

    Notifier {
        id: notifierId
        rectColor: "yellowgreen"
        target: receiverId
    }

    Receiver {
        id: receiverId
        rectColor: "dodgerblue"
        anchors.right: parent.right
    }

//    Component.onCompleted: {
//        notifierId.notify.connect(receiverId.receiveInfo)//Connect signal to slot
//    }

}
