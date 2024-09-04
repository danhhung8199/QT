import QtQuick 2.15

Rectangle {
    width: 800
    height: 480
    color: "#001f3f"  // Night sky blue

    // Background image (if needed)
    Image {
        source: "qrc:/MockQt/assets/background/climatebackgroung.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        opacity: 0.2  // Reduced opacity to blend with the background
    }

    // Main content
    Rectangle {
        anchors.fill: parent
        color: "transparent"  // Transparent to allow background to show through

        Column {
            spacing: 30  // Increased spacing between groups
            anchors.top: parent.top
            anchors.topMargin: 60
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width * 0.8  // Reduced width of the groups

            // Temperature Group
            Rectangle {
                id: temperatureGroup
                width: parent.width
                height: 100  // Reduced height of the group
                color: "#2d3e50"  // Dark gray
                border.color: "#4a6572"
                radius: 10

                Column {
                    spacing: 8
                    anchors.fill: parent
                    anchors.margins: 10

                    Text {
                        text: "Temperature"
                        font.pixelSize: 16  // Reduced font size
                        color: "#ffffff"  // White for contrast
                    }

                    Row {
                        spacing: 10
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Temperature:"
                            font.pixelSize: 14
                            color: "#ffffff"  // White for contrast
                        }

                        Rectangle {
                            id: temperatureSlider
                            width: 180  // Reduced width of the slider
                            height: 8  // Reduced height of the slider
                            color: "#cfd8dc"  // Lighter gray
                            radius: 4
                            anchors.verticalCenter: parent.verticalCenter
                            // This rectangle shows the filled part of the slider
                            Rectangle {
                                id: filledPart
                                height: parent.height
                                color: "#007bff"  // Blue color for the filled part
                                radius: 4
                                anchors.left: parent.left
                                anchors.verticalCenter: parent.verticalCenter
                            }

                            Rectangle {
                                id: handle
                                width: 16  // Reduced handle size
                                height: temperatureSlider.height + 6
                                color: "#ffffff"
                                radius: 8
                                anchors.verticalCenter: parent.verticalCenter

                                MouseArea {
                                    id: handleArea
                                    anchors.fill: parent
                                    drag.target: handle
                                    onPressed: {
                                        handleArea.pressedX = mouse.x - handle.x
                                    }
                                    onPositionChanged: {
                                        handle.x = Math.max(0, Math.min(handle.x, temperatureSlider.width - handle.width));
                                        let tempValue = Math.round((handle.x / (temperatureSlider.width - handle.width)) * 50 - 10);
                                        temperatureText.text = tempValue + " °C";
                                        // Update the width of the filled part based on the handle position
                                        filledPart.width = handle.x + handle.width / 2;
                                    }
                                }
                            }

                            Component.onCompleted: {
                                let initialTempValue = 20;
                                let handlePos = (initialTempValue + 10) / 50 * (temperatureSlider.width - handle.width);
                                handle.x = Math.min(Math.max(handlePos, 0), temperatureSlider.width - handle.width);
                                temperatureText.text = initialTempValue + " °C";
                                filledPart.width = handle.x + handle.width / 2;
                            }
                        }

                        Text {
                            id: temperatureText
                            text: "20 °C"
                            font.pixelSize: 14
                            color: "#ffffff"  // White for contrast
                            width: 60  // Fixed width to avoid resizing
                            elide: Text.ElideRight  // Handle overflow text
                        }
                    }
                }
            }

            // Wind Direction Group
            Rectangle {
                id: directionGroup
                width: parent.width
                height: 100  // Reduced height of the group
                color: "#2d3e50"  // Dark gray
                border.color: "#4a6572"
                radius: 10

                Column {
                    spacing: 8
                    anchors.fill: parent
                    anchors.margins: 10

                    Text {
                        text: "Wind Direction"
                        font.pixelSize: 16  // Reduced font size
                        color: "#ffffff"  // White for contrast
                    }

                    Row {
                        spacing: 10
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Direction:"
                            font.pixelSize: 14
                            color: "#ffffff"  // White for contrast
                        }

                        Rectangle {
                            width: 140  // Reduced width of the selection box
                            height: 30  // Reduced height of the selection box
                            color: "#cfd8dc"  // Lighter gray
                            radius: 5

                            Text {
                                id: directionText
                                text: "North"
                                font.pixelSize: 14
                                color: "#333333"
                                anchors.centerIn: parent
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    var directions = ["North", "East", "South", "West"];
                                    directionText.text = directions[(directions.indexOf(directionText.text) + 1) % directions.length];
                                }
                            }
                        }
                    }
                }
            }

            // Wind Volume Group
            Rectangle {
                id: windVolumeGroup
                width: parent.width
                height: 100  // Reduced height of the group
                color: "#2d3e50"  // Dark gray
                border.color: "#4a6572"
                radius: 10

                Column {
                    spacing: 8
                    anchors.fill: parent
                    anchors.margins: 10

                    Text {
                        text: "Wind Volume"
                        font.pixelSize: 16  // Reduced font size
                        color: "#ffffff"  // White for contrast
                    }

                    Row {
                        spacing: 10
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Volume:"
                            font.pixelSize: 14
                            color: "#ffffff"  // White for contrast
                        }

                        Rectangle {
                            id: windVolumeSlider
                            width: 180  // Reduced width of the slider
                            height: 8  // Reduced height of the slider
                            color: "#cfd8dc"  // Lighter gray
                            radius: 4
                            anchors.verticalCenter: parent.verticalCenter
                            // This rectangle shows the filled part of the slider
                            Rectangle {
                                id: windFilledPart
                                height: parent.height
                                color: "#007bff"  // Blue color for the filled part
                                radius: 4
                                anchors.left: parent.left
                                anchors.verticalCenter: parent.verticalCenter
                            }

                            Rectangle {
                                id: windHandle
                                width: 16  // Reduced handle size
                                height: windVolumeSlider.height + 6
                                color: "#ffffff"
                                radius: 8
                                anchors.verticalCenter: parent.verticalCenter

                                MouseArea {
                                    id: windHandleArea
                                    anchors.fill: parent
                                    drag.target: windHandle
                                    onPressed: {
                                        windHandleArea.pressedX = mouse.x - windHandle.x
                                    }
                                    onPositionChanged: {
                                        windHandle.x = Math.max(0, Math.min(windHandle.x, windVolumeSlider.width - windHandle.width));
                                        let volumeValue = Math.round((windHandle.x / (windVolumeSlider.width - windHandle.width)) * 100);
                                        windVolumeText.text = volumeValue + " %";
                                        // Update the width of the filled part based on the handle position
                                        windFilledPart.width = windHandle.x + windHandle.width / 2;
                                    }
                                }
                            }

                            Component.onCompleted: {
                                let initialVolumeValue = 50;
                                let handlePos = initialVolumeValue / 100 * (windVolumeSlider.width - windHandle.width);
                                windHandle.x = Math.min(Math.max(handlePos, 0), windVolumeSlider.width - windHandle.width);
                                windVolumeText.text = initialVolumeValue + " %";
                                windFilledPart.width = windHandle.x + windHandle.width / 2;
                            }
                        }

                        Text {
                            id: windVolumeText
                            text: "50 %"
                            font.pixelSize: 14
                            color: "#ffffff"  // White for contrast
                            width: 60  // Fixed width to avoid resizing
                            elide: Text.ElideRight  // Handle overflow text
                        }
                    }
                }
            }
        }
    }
}
