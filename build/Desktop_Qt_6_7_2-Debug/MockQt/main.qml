// main.qml
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 800
    height: 350
    title: "AVN Mini System"

    StatusBar {
        id: statusBar // Đặt ID cho StatusBar để dễ dàng tham chiếu
        anchors.top: parent.top
        width: parent.width
        height: parent.height * 0.1
        z: 1
        displayMode: "home"
    }

    Image {
        id: homebackgroundR
        source: "qrc:/MockQt/assets/background/homebackground.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        onStatusChanged: {
            if (homebackground.status === Image.Error) {
                console.log("Error loading image: " + homebackground.source);
            }
        }
    }

    AppManager {
        id: appManager
        anchors.top: statusBar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: parent.height * 0.9
    }
}
