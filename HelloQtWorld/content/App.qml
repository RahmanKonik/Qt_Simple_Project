// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import HelloQtWorld
import QtQuick.Controls

Window {
    id: mainWindow
    width: 500
    height: 500

    Rectangle {
        id: background
        height: parent.height
        width: parent.width
        color: "lightblue"

        Text {
            text: "Weekly Exercise 01"
            anchors.top: background.top
            anchors.horizontalCenter: background.horizontalCenter
        }


    }

    Button{

        id: clickButton
        anchors.bottom: background.bottom
        anchors.horizontalCenter: background.horizontalCenter

        Text {
            text: "Click Me"
            anchors.centerIn: clickButton
        }

        onClicked: doRotation() //conect to innerRectangle with button

    }

    Rectangle {
        id: innerRectangle
        height: 200
        width: 200
        radius: 20
        anchors.centerIn: background

        Text {
            id: helloText
            text: "Hello World!"
            anchors.centerIn: innerRectangle
        }

        MouseArea {
            anchors.fill: innerRectangle
            onClicked: doRotation()
            onPressed: innerRectangle.scale = 0.9
            onReleased: innerRectangle.scale = 1.0
        }
    }

    function doRotation() {
        innerRectangle.rotation += 45
        innerRectangle.scale = 0.9
        innerRectangle.scale = 1.0

    }

}

