/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import UI

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        text: qsTr("Hello UI")
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Flickable {
        id: flickable
        x: rectangle.childrenRect.left
        y: 128
        width: 335
        height: 807
        originX: 500
        contentX: 0

        Rectangle {
            id: rectangle
            x: 68
            y: 248
            width: 200
            height: 200
            color: "#ffffff"
        }
    }
}
