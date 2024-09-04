import QtQuick 2.15
// Status Bar
Rectangle {
    id: statusBar
    width: parent.width
    height: parent.height * 0.1
    color: "#dcdcdc"
    opacity: 0.6
    property string displayMode: "home" // "home" or "app"

    Row {
        width: parent.width
        height: parent.height
        spacing: parent.width*0.01
        padding: statusBar.height*0.05

        // Home
        Rectangle {
            width: parent.width * 0.05
            height: statusBar.height*0.9
            color: "transparent"

            Image {
                anchors.right: parent.right
                source: "qrc:/MockQt/assets/icon/home.png"
                fillMode: Image.Stretch
                width: 35
                height: parent.height
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Home button clicked");
                    appManager.loadHome()
                }
            }
        }

        // Back
        Rectangle {
            visible: displayMode === "app"
            width: parent.width * 0.1
            height: statusBar.height*0.9
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source: "qrc:/MockQt/assets/icon/back.png"
                fillMode: Image.Stretch
                width: 50
                height: parent.height
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Back button clicked");
                }
            }
        }
    }

    // Time
    Rectangle {
        width: parent.width *0.3
        anchors.centerIn: parent
        height: statusBar.height*0.9
        color: "transparent"

        Text {
            anchors.centerIn: parent
            id: timeDisplay
            font.pixelSize: parent.height * 0.6
            color: "white"
            text: displayMode === "home" ?
                              Qt.formatDateTime(new Date(), "dd/MM/yyyy | hh:mm:ss") :
                              Qt.formatDateTime(new Date(), "hh:mm:ss")
            font.bold: true
        }

        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: {
                timeDisplay.text = displayMode === "home" ?
                                       Qt.formatDateTime(new Date(), "dd/MM/yyyy | hh:mm:ss") :
                                       Qt.formatDateTime(new Date(), "hh:mm:ss");
            }
        }
    }

    // Icon wifi
    Rectangle {
        width: parent.width *0.05
        height: statusBar.height*0.9
        color: "transparent"
        anchors.right: parent.right

        Image {
            anchors.centerIn: parent
            source: "qrc:/MockQt/assets/icon/wifi.png"
            fillMode: Image.Stretch
            width: 25
            height: 25
        }
    }
}
