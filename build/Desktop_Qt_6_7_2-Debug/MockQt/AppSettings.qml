import QtQuick 2.15

Column {
    id: settingsScreen
    anchors.fill: parent
    spacing: 20
    padding: 20

    Text {
        text: "Settings"
        font.pixelSize: 18
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 15
    // Setting Language
        Rectangle {
            width: 90
            height: 80
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Text {
                text: "Setting Language"
                anchors.centerIn: parent
            }
        }

        // Setting Date/Time
        Rectangle {
            width: 90
            height: 80
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Text {
                text: "Setting Date/Time"
                anchors.centerIn: parent
            }
        }

        // Setting Theme
        Rectangle {
            width: 90
            height: 80
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Text {
                text: "Setting Theme (Black/White)"
                anchors.centerIn: parent
            }
        }

        // Setting Volume
        Rectangle {
            width: 90
            height: 80
            color: "lightgray"
            opacity: 0.8
            radius: 10
            Text {
                text: "Setting Volume"
                anchors.centerIn: parent
            }
        }
    }
}
