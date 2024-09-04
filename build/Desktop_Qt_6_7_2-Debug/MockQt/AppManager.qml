import QtQuick 2.15

Item {
    id: appManager
    property Item currentScreen: homeScreen

    function loadHome() {
        currentScreen.destroy()
        var component = Qt.createComponent("AppHomeScreen.qml")
        currentScreen = component.createObject(appManager)
    }

    function loadSettingsScreen() {
        currentScreen.destroy()
        var component = Qt.createComponent("AppSettings.qml")
        currentScreen = component.createObject(appManager)
    }

    function loadAppClimate() {
        currentScreen.destroy()
        var component = Qt.createComponent("AppClimate.qml")
        currentScreen = component.createObject(appManager)
    }

    function loadAppmediaPlay() {
        currentScreen.destroy();
        var component = Qt.createComponent("AppMediaPlay.qml")
        currentScreen = component.createObject(appManager)
        if (currentScreen === null) {
                console.log("Error creating object")
            } else {
                // Set displayMode to "app"
                statusBar.displayMode = "app"
            }
    }

    AppHomeScreen {
        id: homeScreen
    }
}
