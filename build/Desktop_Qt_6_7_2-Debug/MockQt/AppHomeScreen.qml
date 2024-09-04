import QtQuick 2.15

Column {
    id: homeScreen
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 10
        padding: 10

    // Row for main application
    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Rectangle {
            width: 200
            height: 150
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: map
                source: "qrc:/MockQt/assets/icon/map.png"
                anchors.centerIn: parent
                width: parent.width * 0.6
                height: parent.height * 0.8
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: { console.log("Main icon 1 clicked") }
            }
        }

        Rectangle {
            width: 200
            height: 150
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: climate
                source: "qrc:/MockQt/assets/icon/climate.png"
                anchors.centerIn: parent
                width: parent.width * 0.6
                height: parent.height * 0.8
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: {
                    console.log("Main icon 2 clicked")
                    appManager.loadAppClimate()
                }
            }
        }

        Rectangle {
            width: 200
            height: 150
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: youtube
                source: "qrc:/MockQt/assets/icon/youtube.png"
                anchors.centerIn: parent
                width: parent.width * 0.6
                height: parent.height * 0.8
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: { console.log("Main icon 3 clicked")
                    appManager.loadAppmediaPlay()}
            }
        }
    }

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 15

        // Icon 1
        Rectangle {
            width: 90
            height: 120
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: phone
                source: "qrc:/MockQt/assets/icon/telephone.png"
                anchors.centerIn: parent
                width: parent.width * 0.5
                height: parent.height * 0.4
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: { console.log("Icon 1 clicked") }
            }
        }

        Rectangle {
            width: 90
            height: 120
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: contact
                source: "qrc:/MockQt/assets/icon/contact-book.png"
                anchors.centerIn: parent
                width: parent.width * 0.5
                height: parent.height * 0.4
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: { console.log("Icon 2 clicked") }
            }
        }

        Rectangle {
            width: 90
            height: 120
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: messeges
                source: "qrc:/MockQt/assets/icon/messeges.png"
                anchors.centerIn: parent
                width: parent.width * 0.5
                height: parent.height * 0.4
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: { console.log("Icon 3 clicked") }
            }
        }

        Rectangle {
            width: 90
            height: 120
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: calendar
                source: "qrc:/MockQt/assets/icon/calendar.png"
                anchors.centerIn: parent
                width: parent.width * 0.5
                height: parent.height * 0.4
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: { console.log("Icon 4 clicked") }
            }
        }

        Rectangle {
            width: 90
            height: 120
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: settings
                source: "qrc:/MockQt/assets/icon/settings.png"
                anchors.centerIn: parent
                width: parent.width * 0.5
                height: parent.height * 0.4
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: {
                    console.log("Icon 5 clicked")
                    appManager.loadSettingsScreen()
                }
            }
        }

        Rectangle {
            width: 90
            height: 120
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Image {
                id: menu
                source: "qrc:/MockQt/assets/icon/menu.png"
                anchors.centerIn: parent
                width: parent.width * 0.5
                height: parent.height * 0.4
            }
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onClicked: { console.log("Icon 6 clicked") }
            }
        }
    }
}
