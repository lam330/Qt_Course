import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dynamic models")

    ColumnLayout {
        anchors.fill: parent

        ListModel {
            id : mListModel

            ListElement {
                firstName : "John"; lastName : "Snow"
            }
            ListElement {
                firstName : "Nicholai"; lastName : "Itchenko"
            }
            ListElement {
                firstName : "Mitch"; lastName : "Mathson"
            }
            ListElement {
                firstName : "Ken"; lastName : "Kologorov"
            }
            ListElement {
                firstName : "Vince"; lastName : "Luvkyj"
            }
        }

        ColumnLayout {
            Layout.fillWidth: parent
            ListView{
                id : mListViewId
                model:mListModel
                delegate :delegateId
                Layout.fillWidth : true
                Layout.fillHeight: true
            }

            Button {
                text: "Add Item"
                Layout.fillWidth : true
                onClicked: {
                    mListModel.append({"firstName"   : "Lam", "lastName" : "Le"})
                }
            }
            Button {
                text: "Clear"
                Layout.fillWidth : true
                onClicked: {
                    mListModel.clear()
                }
            }
            Button {
                text: "Delete item at index 2"
                Layout.fillWidth : true
                onClicked: {
                    if(2 < mListViewId.model.count) {
                        mListModel.remove(2, 1)
                    } else {
                        console.log(mListViewId.model.count)
                    }
                }
            }
            Button {
                text: "Set item at index 2"
                Layout.fillWidth : true
                onClicked: {
                    mListModel.set(2, {"firstName"   : "Trinh", "lastName" : "NMguyen"})
                }
            }

        }

        Component {
            id : delegateId
            Rectangle {
                id : rectangleId
                width : parent.width  // Remember to specify these sizes or you'll have problems
                height: 50
                color: "beige"
                border.color: "yellowgreen"
                radius: 14

                Text {
                    id : textId
                    anchors.centerIn: parent
                    text : firstName + " " + lastName
                    font.pointSize: 20
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Clicked on : " + firstName + " " + lastName)
                    }
                }
            }
        }
    }
}
