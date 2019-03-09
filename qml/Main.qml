import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 1.4
import "./pages"

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"
    id: root
    width: 700
    height: 300

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: mainPage

    }
    MainPage {
        visible: false
        id: mainPage
        onSettingsClicked: stack.push(settingsPage)
    }
    SettingsPage {
        visible: false
        id: settingsPage
    }
}
