import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("360Imaging")

    Rectangle
    {
        id : rootId
        x: 53
        y: 267
        width : 150 ;height :width
        color: "#ffffff"


        Item{
            id: game_buttons
            width : parent.width
            height : 50

            Button {
                id: play_button
                x: 10
                y: 5
                text: qsTr("Play")
                background: Rectangle {
                    color: "white"
                }
                anchors.left: play_rect.right
                font.pixelSize: 16
                font.family: "Arial"
                anchors.leftMargin: 3

                onPressed: play_button.state = "PRESSED"
                onReleased: play_button.state = "RELEASED"
                onHoveredChanged:{
                    if(hovered)
                        play_rect.width = 25
                    else
                        play_rect.width = 10
                }
                states: [
                    State {
                        name: "PRESSED"
                        PropertyChanges { target: play_rect; width: 30}
                        PropertyChanges { target: play_rect; color: "green"}
                    },
                    State {
                        name: "RELEASED"
                        PropertyChanges { target: play_rect; width: 20}
                        PropertyChanges { target: play_rect; color: "red"}
                    }
                ]
            }

            Rectangle{
                id:play_rect
                x: 0
                y: 0
                width: 10
                height: 40
                color : "#ff0000"
            }

            Button {
                id: settings_button
                x: 10
                y: 45
                background: Rectangle {
                    color: "white"
                }
                anchors.left: settings_rect.right
                font.pixelSize: 16
                font.family: "Arial"
                anchors.leftMargin: 2
                text: qsTr("Settings")

                onPressed: settings_button.state = "PRESSED"
                onReleased: settings_button.state = "RELEASED"
                onHoveredChanged:{
                    if(hovered)
                        settings_rect.width = 25
                    else
                        settings_rect.width = 10
                }
                states: [
                    State {
                        name: "PRESSED"
                        PropertyChanges { target: settings_rect; width: 30}
                        PropertyChanges { target: settings_rect; color: "green"}
                    },
                    State {
                        name: "RELEASED"
                        PropertyChanges { target: settings_rect; width: 20}
                        PropertyChanges { target: settings_rect; color: "red"}
                    }
                ]

            }

            Rectangle {
                id: settings_rect
                x: 0
                y: 40
                width: 10
                height: 40
                color: "#ff0000"
            }

            Button {
                id: quit_button
                x: 10
                y: 85
                text: qsTr("Quit")
                background: Rectangle {
                    color: "white"
                }
                anchors.left: quit_rect.right
                font.pixelSize: 16
                font.family: "Arial"
                anchors.leftMargin: 2

                onPressed: quit_button.state = "PRESSED"
                onReleased: quit_button.state = "RELEASED"
                onHoveredChanged:{
                    if(hovered)
                        quit_rect.width = 25
                    else
                        quit_rect.width = 10
                }
                states: [
                    State {
                        name: "PRESSED"
                        PropertyChanges { target: quit_rect; width: 30}
                        PropertyChanges { target: quit_rect; color: "green"}
                    },
                    State {
                        name: "RELEASED"
                        PropertyChanges { target: quit_rect; width: 20}
                        PropertyChanges { target: quit_rect; color: "red"}
                    }
                ]

            }

            Rectangle {
                id: quit_rect
                x: 0
                y: 80
                width: 10
                height: 40
                color: "#ff0000"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}
}
##^##*/
