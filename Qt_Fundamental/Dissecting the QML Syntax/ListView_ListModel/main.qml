import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ListView_ListModel")

    ListView {
        id: mListViewId
        anchors.fill: parent
        header: headerId
        footer: Rectangle {
            width: parent.width
            height: 50
            color: "dodgerblue"
            Text {
                anchors.centerIn: parent
                text: "Footer"
                font.pointSize: 20
            }
        }

        highlight: Rectangle {
            width: parent.width
            color: "blue"
            radius: 14
            border.color: "yellowgreen"
            z: 3
            opacity: 0.1
        }

        model: mModelId
        delegate: delegateId
        section {
            property: "number"
            criteria: ViewSection.FullString
            delegate: Rectangle {
                id: sectionRectId
                width: parent.width
                height: 50
                color: "gray"
                border.color: "red"
                radius: 14

                Text {
                    id: sectionTexttId
                    text: section
                    anchors.centerIn: parent
                    font.pointSize: 20
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("CLicked on: " + section)
                    }
                }
            }
        }
    }

    ListModel {
        id: mModelId
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
        }
        ListElement {
            name: "John Brown1"
            number: "555 8426"
        }
        ListElement {
            name: "John Brown2"
            number: "555 8426"
        }
        ListElement {
            name: "Sam Wise1"
            number: "555 0473"
        }
        ListElement {
            name: "Sam Wise2"
            number: "555 0473"
        }
        ListElement {
            name: "Sam Wise3"
            number: "555 0473"
        }
    }

    Component {
        id: delegateId
        Rectangle {
            id: rectangleId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: name + ": " + number //atribute of ListElement in ListModel
            }

            //Make the listElemens inside LV flickable
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on: " + name + ": " + number)
                    mListViewId.currentIndex = index
                }
            }
        }
    }

    //Header
    Component {
        id: headerId
        Rectangle {
            id: headerRectId
            width: parent.width
            height: 50
            color: "yellowgreen"
            border {color: "#9EDDF2"; width: 2}


            Text {
                anchors.centerIn: parent
                text: "Phone Directory"
                font.pointSize: 20
            }
        }

    }
}
