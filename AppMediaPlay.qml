import QtQuick 2.15

Rectangle {
    width: 800
    height: 320

    // Background image
    Image {
        id: homebackground
        source: "qrc:/MockQt/assets/background/backgroundmedia.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        onStatusChanged: {
            if (homebackground.status === Image.Error) {
                console.log("Error loading image: " + homebackground.source);
            }
        }
    }

    // Display song information
    Column {
        width: parent.width
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.2
        spacing: 10
        padding: 10

        Text {
            id: songTitle
            text: "Song Title"
            color: "white"
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: songArtist
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
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50

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
                width: 0
                height: parent.height
                color: "blue"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var clickPosition = mouse.x;
                    var newTime = (clickPosition / progressBar.width) * musicPlayer.getDuration();
                    musicPlayer.setCurrentTime(newTime);
                    progress.width = clickPosition;
                }
            }
        }

        Text {
            id: totalTime
            text: "00:00"
            color: "white"
            font.pixelSize: 14
            width: 40
            horizontalAlignment: Text.AlignRight
        }
    }

    // Control buttons
    Row {
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height * 0.05

        // Previous button
        Rectangle {
            width: 40
            height: 40
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source: "qrc:/MockQt/assets/icon/previous_icon.png" // Path to the Previous icon
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Functionality for Previous button goes here
                    parent.color = "transparent"
                }

                onEntered: {
                    parent.color = "lightsteelblue"
                }
            }
        }

        // Play/Pause button
        Rectangle {
            width: 40
            height: 40
            color: "transparent"

            Image {
                id: playPauseIcon
                anchors.centerIn: parent
                source: "qrc:/MockQt/assets/icon/resume_icon.png" // Path to the Play/Pause icon
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    parent.color = "transparent"
                    if(musicPlayer.getStatus()===0){
                        playPauseIcon.source = "qrc:/MockQt/assets/icon/pause_icon.png"
                        musicPlayer.play("/home/hung/Desktop/Data/C++/Data/mock21jul/code/Vo-Nguoi-Ta-Phan-Manh-Quynh.mp3")
                        songTitle.text=musicPlayer.getName();
                        songArtist.text=musicPlayer.getArtist();
                    }
                    else if(musicPlayer.getStatus()===1){
                        playPauseIcon.source = "qrc:/MockQt/assets/icon/resume_icon.png"
                        musicPlayer.pause()
                    }
                    else {
                        playPauseIcon.source = "qrc:/MockQt/assets/icon/pause_icon.png"
                        musicPlayer.resume()
                    }
                }
                onEntered: {
                    parent.color = "lightsteelblue"
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
                source: "qrc:/MockQt/assets/icon/next_icon.png" // Path to the Next icon
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Functionality for Next button goes here
                    parent.color = "transparent"
                }
                onEntered: {
                    parent.color = "lightsteelblue"
                }
            }
        }
    }

    // Volume control
    Row {
        spacing: 10
        anchors.right: parent.right
        anchors.rightMargin: 80
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height * 0.05

        Image {
            source: "qrc:/MockQt/assets/icon/volume_icon.png" // Path to the Volume icon
            width: 20
            height: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.2
        }

        Rectangle {
            id: volumemax
            width: 70
            height: 10
            color: "white"
            border.color: "gray"

            Rectangle {
                id: volumeBar
                width: 0 // This will be updated with the volume level
                height: parent.height
                color: "#00aced"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var newVolume = (mouse.x / volumemax.width);
                    volumeBar.width = newVolume * volumemax.width;
                    musicPlayer.setVolume(newVolume);
                }
            }
        }
    }

    Timer {
        id: updateTimer
        interval: 1000 // Cập nhật mỗi giây
        running: true
        repeat: true
        onTriggered: {
            // Cập nhật thời gian phát hiện tại và thanh tiến độ dựa trên vị trí của trình phát nhạc
            currentTime.text = formatTime(musicPlayer.getCurrentTime());
            totalTime.text = formatTime(musicPlayer.getDuration());
            progress.width = (musicPlayer.getCurrentTime() / musicPlayer.getDuration()) * progressBar.width;
            volumeBar.width=(musicPlayer.getVolume()*volumemax.width);
        }
    }

    function formatTime(ms) {
        var minutes = Math.floor(ms / 60000);
        var seconds = Math.floor((ms % 60000) / 1000);
        return (minutes < 10 ? '0' : '') + minutes + ":" + (seconds < 10 ? '0' : '') + seconds;
    }



}
