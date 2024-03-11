// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import QtQuick.Controls 2.15
import QtQuick.Controls
import Qt_Final_Class_Project

Window {
    id: mainWindowid
    width: 500
    height: 700
    visible: true
    title: "Qt_Final_Class_Project"

    Item {
        id: firstScreen
        anchors.fill: parent

        Rectangle{

            id: rectanglefirstid
            width: 500
            height: 700
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "#dbc1ac"
                }
                GradientStop {
                    position: 1.0; color: "#634832"
                }
             }
            Text {
                id: textid
                anchors.horizontalCenter: rectanglefirstid.horizontalCenter
                anchors.verticalCenter: rectanglefirstid.verticalCenter
                text: " Welcome to Coffee
          Store!"
                font {
                    family: "Helvetica"
                    pixelSize: 48
                }
            }

            Button {
                id: myButtonid
                x: 160
                y: 460
                width: 200
                height: 100
                anchors.bottomMargin: rectanglefirstid
                text: "Start"
                font{
                    family: "Helvetica"
                    pixelSize: 30
                }

                onClicked: {
                   // Switch to the second screen when the button is clicked
                    firstScreen.visible = false
                    secondsereen.visible = true
                }
                background: Rectangle{
                    radius: 20
                    color: "#AB6832"
                }
            }
        }
    }


    // Second Screen content

    Item {
        id: secondsereen
        anchors.fill: parent
        visible: false

        Rectangle {
            id: secondRectangleid
            width: 500
            height: 700
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "#dbc1ac"
                }
                GradientStop {
                    position: 1.0; color: "#634832"
                }
             }

            Text {
                id: secondtextId
                x: 50
                text: " Option of Coffee "
                font {
                    family: "Helvetica"
                    pixelSize: 48
                }
            }

            Column {
                x: 10
                y: 150

                Button {
                    id: mySecondButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Cappuccino "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }
                    onClicked: {

                        secondsereen.visible = false
                        cappuccinoid.visible = true

                    }
                    background: Rectangle{
                        radius: 20
                        color: "#AB6832"
                    }
                }
                Button {
                    id: myThirdButtonid
                    x: 160
                    y: 560
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Chocolate "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    onClicked: {

                        secondsereen.visible = false
                        cappuccinoid.visible = true

                    }
                    background: Rectangle{
                        radius: 20
                        color: "#AB6832"
                    }
                }
                Button {
                    id: myFourthButtonid
                    x: 160
                    y: 560
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Latte "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    onClicked: {

                        secondsereen.visible = false
                        cappuccinoid.visible = true

                    }
                    background: Rectangle{
                        radius: 20
                        color: "#AB6832"
                    }
                }

                Button {
                    id: myfifthButtonid
                    x: 160
                    y: 560
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Water "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    onClicked: {

                        secondsereen.visible = false
                        cappuccinoid.visible = true

                    }
                    background: Rectangle{
                        radius: 20
                        color: "#AB6832"
                    }
                }
            }

            Button {
                id: homebackid
                width: 150
                height: 80
                x: 200
                y: 610
                text: " Back"
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {
                    firstScreen.visible = true
                    secondsereen.visible = false
                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }
        }
    }

    //ThirdScreen content ( cappiccino)

    Item {
        id: cappuccinoid
        anchors.fill: parent
        visible: false

        Rectangle {

            id: cappucinoRectangleid
            width: 500
            height: 700
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "#dbc1ac"
                }
                GradientStop {
                    position: 1.0; color: "#634832"
                }
            }

            Text {
                id: capppucinoTextid
                x: 50
                text: " Level of Coffee "
                font {
                    family: "Helvetica"
                    pixelSize: 48
                }
            }

            Column {

                x: 10
                y: 150

                Button {
                    id: capppucinoHighButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " High "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    property color buttonHighColor: "#AB6832"
                    onClicked: {
                        buttonHighColor = "#38220f"
                        capppucinoNormalButtonid.buttonNormalColor = "#AB6832"
                    }

                    background: Rectangle{
                        radius: 20
                        color: capppucinoHighButtonid.buttonHighColor
                    }
                }

                Button {
                    id: capppucinoNormalButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Normal "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }
                    property color buttonNormalColor: "#AB6832" // Initial color of the button

                    onClicked: {
                        buttonNormalColor = "#967259"
                        capppucinoHighButtonid.buttonHighColor = "#AB6832"
                    }
                    background: Rectangle{
                        radius: 20
                        color: capppucinoNormalButtonid.buttonNormalColor
                    }
                }

            }

            Button {
                id: lastScreenPageid
                width: 150
                height: 80
                x: 200
                y: 610
                text: "Start"
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {

                    cappuccinoid.visible = false
                    lastScreenid.visible = true

                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }

            Button {
                id: optionOfCoffeeScreen
                width: 150
                height: 80
                x: 10
                y: 610
                text: " Back"
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {
                    secondsereen.visible = true
                    cappuccinoid.visible = false
                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }
        }
    }

    // Third screen for chocolate

    Item {
        id: chocolateid
        anchors.fill: parent
        visible: false

        Rectangle {

            id: chocolateRectangleid
            width: 500
            height: 700
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "#dbc1ac"
                }
                GradientStop {
                    position: 1.0; color: "#634832"
                }
             }

            Text {
                id: chocolateTextid
                x: 50
                text: " Level of Coffee "
                font {
                    family: "Helvetica"
                    pixelSize: 48
                }
            }

            Column {

                x: 10
                y: 150

                Button {
                    id: chocolateHighButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " High "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    property color buttonHighColor: "#AB6832"
                    onClicked: {
                        buttonHighColor = "#38220f"
                        chocolateNormalButtonid.buttonNormalColor = "#AB6832"
                    }

                    background: Rectangle{
                        radius: 20
                        color: chocolateHighButtonid.buttonHighColor
                    }
                }

                Button {
                    id: chocolateNormalButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Normal "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    property color buttonNormalColor: "#AB6832"

                    onClicked: {
                        buttonNormalColor = "#38220f"
                        chocolateHighButtonid.buttonHighColor = "#AB6832"
                    }

                    background: Rectangle{
                        radius: 20
                        color: chocolateNormalButtonid.buttonNormalColor
                    }
                }

            }

            Button {
                id: chocolateButtonPageid
                width: 150
                height: 80
                x: 200
                y: 610
                text: "Start"
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {

                    chocolateid.visible = false
                    lastScreenid.visible = true

                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }

            Button {
                id: optionOfChocolateScreen
                width: 150
                height: 80
                x: 10
                y: 610
                text: " Back"
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {
                    secondsereen.visible = true
                    chocolateid.visible = false
                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }
        }
    }

    // third screen for latte

    Item {
        id: latteid
        anchors.fill: parent
        visible: false

        Rectangle {

            id: latteRectangleid
            width: 500
            height: 700
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "#dbc1ac"
                }
                GradientStop {
                    position: 1.0; color: "#634832"
                }
            }

            Text {
                id: latteTextid
                x: 50
                text: " Level of Coffee "
                font {
                    family: "Helvetica"
                    pixelSize: 48
                }
            }

            Column {

                x: 10
                y: 150

                Button {
                    id: latteHighButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " High "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    property color buttonHighColor: "#AB6832"
                    onClicked: {
                        buttonHighColor = "#38220f"
                        latteNormalButtonid.buttonNormalColor = "#AB6832"
                    }

                    background: Rectangle{
                        radius: 20
                        color: latteHighButtonid.buttonHighColor
                    }
                }

                Button {
                    id: latteNormalButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Normal "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }
                    property color buttonNormalColor: "#AB6832"

                    onClicked: {
                        buttonNormalColor = "#38220f"
                        latteHighButtonid.buttonHighColor = "#AB6832"
                    }

                    background: Rectangle{
                        radius: 20
                        color: latteNormalButtonid.buttonNormalColor
                    }
                }

            }

            Button {
                id: latteButtonPageid
                width: 150
                height: 80
                x: 200
                y: 610
                text: "Start"
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {

                    latteid.visible = false
                    lastScreenid.visible = true

                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }

            Button {
                id: optionOfLatteScreen
                width: 150
                height: 80
                x: 10
                y: 610
                text: " Back "
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {
                    secondsereen.visible = true
                    latteid.visible = false
                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }
        }
    }

    // third screen for water

    Item {
        id: waterid
        anchors.fill: parent
        visible: false

        Rectangle {

            id: waterRectangleid
            width: 500
            height: 700
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "#dbc1ac"
                }
                GradientStop {
                    position: 1.0; color: "#634832"
                }
            }

            Text {
                id: waterTextid
                x: 50
                text: " Level of Coffee "
                font {
                    family: "Helvetica"
                    pixelSize: 48
                }
            }

            Column {

                x: 10
                y: 150

                Button {
                    id: waterHighButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " High "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }
                    property color buttonHighColor: "#AB6832"

                    onClicked: {
                        buttonHighColor = "#38220f"
                        waterNormalButtonid.buttonNormalColor = "#AB6832"
                    }

                    background: Rectangle{
                        radius: 20
                        color: waterHighButtonid.buttonHighColor
                    }
                }

                Button {
                    id: waterNormalButtonid
                    x: 160
                    y: 460
                    width: 200
                    height: 100
                    anchors.bottomMargin: secondRectangleid
                    text: " Normal "
                    font{
                        family: "Helvetica"
                        pixelSize: 30
                    }

                    property color buttonNormalColor: "#AB6832"
                    onClicked: {
                        buttonNormalColor = "#38220f"
                        waterHighButtonid.buttonHighColor = "#AB6832"
                    }

                    background: Rectangle{
                        radius: 20
                        color: waterNormalButtonid.buttonNormalColor
                    }
                }

            }

            Button {
                id: waterButtonPageid
                width: 150
                height: 80
                x: 200
                y: 610
                text: " Start "
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {

                    waterid.visible = false
                    lastScreenid.visible = true

                }
                background: Rectangle{
                    radius: 20
                    color: "#dbc1ac"
                }
            }

            Button {
                id: optionOfWaterScreen
                width: 150
                height: 80
                x: 10
                y: 610
                text: " Back "
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {
                    secondsereen.visible = true
                    waterid.visible = false
                }

                background: Rectangle {
                    radius: 20
                    color: "#dbc1ac"
                }
            }
        }
    }

    // LastScreen for coffee mechine

    Item {
        id: lastScreenid
        anchors.fill: parent
        visible: false

        Rectangle {

            id: rectanglelastid
            width: 500
            height: 700
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "#dbc1ac"
                }
                GradientStop {
                    position: 1.0; color: "#634832"
                }
            }

            Text {
                id: textlastid
                anchors.horizontalCenter: rectanglelastid.horizontalCenter
                anchors.verticalCenter: rectanglelastid.verticalCenter
                text: "  Enjoy your coffee!!!
   Come back Again."
                font {
                    family: "Helvetica"
                    pixelSize: 48
                }
            }

            Button {
                id: lastScreenbuttonid
                width: 150
                height: 80
                x: 160
                y: 610
                text: " Home "
                font{
                    family: "Helvetica"
                    pixelSize: 20
                }
                onClicked: {
                    firstScreen.visible = true
                    lastScreenid.visible = false
                }

                property color backgroundDefaultColor: "#dbc1ac"
                property color backgroundPressedColor: Qt.darker(backgroundDefaultColor,1,2)

                background: Rectangle{
                    radius: 20
                    color: buttonBackground() //lastScreenbuttonid.down ? lastScreenbuttonid.backgroundPressedColor: lastScreenbuttonid.backgroundDefaultColor
                    layer.enabled: true
                    layer.effect: {
                        transparentBorder: true
                        color: buttonBackground() //lastScreenbuttonid.down ? lastScreenbuttonid.backgroundPressedColor: lastScreenbuttonid.backgroundDefaultColor
                        samples: 20
                    }
                }

            }
        }
    }
    function buttonBackground() {
           return lastScreenbuttonid.down ? lastScreenbuttonid.backgroundPressedColor : lastScreenbuttonid.backgroundDefaultColor
        }
}
