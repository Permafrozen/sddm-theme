import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import SddmComponents 2.0

Rectangle {
    width: Screen.width
    height: Screen.height
    color: "black"

    TextInput {
        id: userNameInput
        width: 200
        height: 30
        anchors.centerIn: parent
        color: "white"
        focus: true
        KeyNavigation.tab: passwordInput
    }

    TextInput {
        id: passwordInput
        width: 200
        height: 30
        anchors.top: userNameInput.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        echoMode: TextInput.Password
        KeyNavigation.tab: userNameInput
    }

    Keys.onEnterPressed: sddm.login(userNameInput.text, passwordInput.text, sessionModel.lastIndex)
    Keys.onReturnPressed: sddm.login(userNameInput.text, passwordInput.text, sessionModel.lastIndex)
}
