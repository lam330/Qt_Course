import QtQuick 2.14
import QtQuick.Window 2.14
import Qt.labs.settings 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Settings")

    Rectangle {
        id : containerRectId
        anchors.fill: parent

        Rectangle {
            id: sky
            width: parent.width
            height: 200
            //color : "blue"
            gradient: Gradient {
                GradientStop {id: skyStartColorId; position: 0.0; color: "blue" }
                GradientStop {id : skyEndColorId; position: 1.0; color: "#66CCFF" }
            }
        }

        Rectangle {
            id: ground
            anchors.top: sky.bottom
            anchors.bottom: parent.bottom
            width: parent.width
            //color: "lime"
            gradient: Gradient {
                GradientStop {id: groundStartColorId; position: 0.0; color: "lime" }
                GradientStop {id : groundEndColorId; position: 1.0; color: "#66CCFF" }
            }
        }

        Image {
            id: treespringId
            x : 50
            y : 100
            width : 200
            height: 300
            source: "images/treespringsmall.png"
        }
        Image {
            id: treeSummerId
            x : 50
            y : 100
            width : 200
            height: 300
            source: "images/treesummersmall.png"
        }

        Rectangle {
            id : sun
            x : parent.width - width -100
            y : 50
            width : 100
            height: 100
            color : "yellow"
            radius: 60


        }

        //state : "spring"
        state: settings.state

        //States
        states : [
            State {
                name : "summer"
                PropertyChanges {
                    target: sky
                    color : "lightblue"
                    //                    gradient : Gradient {
                    //                        GradientStop { position: 0.0; color: "#AA80FF" }
                    //                        GradientStop { position: 1.0; color: "#AACCFF" }
                    //                    }
                }

                PropertyChanges {
                    target: skyStartColorId
                    color : "lightblue"
                }
                PropertyChanges {
                    target: skyEndColorId
                    color : "#EECCFF"
                }



                PropertyChanges {
                    target: treeSummerId
                    opacity : 1
                }
                PropertyChanges {
                    target: treespringId
                    opacity : 0
                }
                //                PropertyChanges {
                //                    target: ground
                //                    color : "darkkhaki"

                //                }

                PropertyChanges {
                    target: groundStartColorId
                    color : "lime"
                }
                PropertyChanges {
                    target: groundEndColorId
                    color : "darkkhaki"
                }
                PropertyChanges {
                    target: sun
                    color : "yellow"

                }


            },
            State {
                name : "spring"
                PropertyChanges {
                    target: sky
                    color : "deepskyblue"
                }

                PropertyChanges {
                    target: skyStartColorId
                    color : "deepskyblue"
                }

                PropertyChanges {
                    target: skyEndColorId
                    color : "#AACCFF"
                }

                PropertyChanges {
                    target: treeSummerId
                    opacity : 0
                }
                PropertyChanges {
                    target: treespringId
                    opacity : 1
                }
                //                PropertyChanges {
                //                    target: ground
                //                    color : "lime"
                //                }
                PropertyChanges {
                    target: groundStartColorId
                    color : "lime"
                }
                PropertyChanges {
                    target: groundStartColorId
                    color : "lime"
                }

                PropertyChanges {
                    target: sun
                    color : "lightyellow"

                }

            }


        ]

        /*
        //Transitions
       transitions : [

           Transition {
               from : "summer"
               to : "spring"
               ColorAnimation {
                   duration: 500
               }
               NumberAnimation {
                   properties : "opacity"
                   duration: 500
               }

           },
           Transition {
               from : "spring"
               to : "summer"
               ColorAnimation {
                   duration: 500
               }
               NumberAnimation {
                   properties : "opacity"
                   duration: 500
               }

           }


       ]
       */

        transitions : Transition {
            from : "*" ; to : "*"

            ColorAnimation {
                duration: 500
            }
            NumberAnimation {
                properties : "opacity"
                duration: 500
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                containerRectId.state = (containerRectId.state=="spring"?"summer":"spring")
            }
        }

        Settings {
            id: settings
            property string state: "spring"
        }

        Component.onDestruction: {
            settings.state = containerRectId.state
        }

    }
}
