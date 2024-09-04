import QtQuick 2.15

Rectangle {
    width: 400
    height: 350
    color: "#1e1e1e"

    // Display song information
    Column {
        width: parent.width
        anchors.top: parent.top
        spacing: 10
        padding: 10

        Text {
            text: "Song Title"
            color: "white"
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "Artist"
            color: "gray"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    // Progress bar and current time display
    Row {
        width: parent.width - 40
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 100

        Text {
            id: currentTime
            text: "00:00" // This will be updated with the current playback time
            color: "white"
            font.pixelSize: 14
            width: 40
        }

        Rectangle {
            id: progressBar
            width: parent.width - 100
            height: 10
            color: "white"
            border.color: "gray"

            Rectangle {
                id: progress
                width: 0 // This will be updated with the playback progress
                height: parent.height
                color: "#00aced"
            }
        }

        Text {
            id: totalTime
            text: "03:45" // Total duration of the song, will be updated
            color: "white"
            font.pixelSize: 14
            width: 40
            horizontalAlignment: Text.AlignRight
        }
    }

    // Control buttons
    Row {
        spacing: 20
        anchors.top: progressBar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30

        // Previous button
        Rectangle {
            width: 40
            height: 40
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source: "icons/prev.png" // Path to the Previous icon
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Functionality for Previous button goes here
                }
            }
        }

        // Play/Pause button
        Rectangle {
            width: 40
            height: 40
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source: "icons/play.png" // Path to the Play/Pause icon
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Functionality for Play/Pause button goes here
                }
            }
        }

        // Next button
        Rectangle {
            width: 40
            height: 40
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source: "icons/next.png" // Path to the Next icon
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Functionality for Next button goes here
                }
            }
        }

        // Stop button
        Rectangle {
            width: 40
            height: 40
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source: "icons/stop.png" // Path to the Stop icon
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Functionality for Stop button goes here
                }
            }
        }
    }

    // Volume control
    Row {
        spacing: 10
        anchors.top: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20

        Image {
            source: "icons/volume.png" // Path to the Volume icon
            width: 20
            height: 20
        }

        Rectangle {
            width: 150
            height: 10
            color: "white"
            border.color: "gray"

            Rectangle {
                id: volumeBar
                width: 100 // This will be updated with the volume level
                height: parent.height
                color: "#00aced"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Functionality for volume adjustment goes here
                }
            }
        }
    }
}
