import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls"


Window {
    id: mainWindow
    width: 1366
    height: 768
    minimumWidth: 1000
    minimumHeight: 680
    visible: true
    color: "#00000000"
    title: qsTr("Creatiny SIHA Kullanıcı Kontrol Arayüzü")

    // Remove title bar
    flags: Qt.Window | Qt.FramelessWindowHint

    // Propeties
    property int windowStatus: 0
    property int windowMargin: 10

    // Internal functions
    QtObject{
        id: internal

        function resetResizeBorders(){
            // Resize visibility
            resizeLeft.visible = true
            resizeRight.visible = true
            resizeBottom.visible = true
            resizeWindow.visible = true
        }

        function maximizeRestore(){
            if(windowStatus == 0){
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                // Resize visibility
                resizeLeft.visible = false
                resizeRight.visible = false
                resizeBottom.visible = false
                resizeWindow.visible = false
                buttonMaxRes.btnIconSource = "../images/svg_images/restore_icon.svg"
            }
            else{
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                buttonMaxRes.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function ifMaximizedWindowRestore(){
            if(windowStatus == 1){
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                buttonMaxRes.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function restoreMargins(){
            windowStatus = 0
            windowMargin = 10
            // Resize visibility
            internal.resetResizeBorders()
            buttonMaxRes.btnIconSource = "../images/svg_images/maximize_icon.svg"
        }
    }



    Rectangle {
        id: backround
        color: "#2c313c"
        border.color: "#383e4c"
        border.width: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: windowMargin
        anchors.leftMargin: windowMargin
        anchors.bottomMargin: windowMargin
        anchors.topMargin: windowMargin
        z: 1

        Rectangle {
            id: appContainer
            color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                x: 70
                y: 58
                width: 978
                height: 60
                color: "#1c1d20"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                ToggleButton {
                    onClicked: animationMenu.running = true
                }

                Rectangle {
                    id: topBarDescription
                    y: 28
                    height: 24
                    color: "#282c34"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 70
                    anchors.bottomMargin: 0

                    Label {
                        id: labelTopInfo
                        height: 25
                        color: "#5f6a82"
                        text: qsTr("Karadeniz Teknik Üniversitesi - CREATINY SIHA")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 300
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }
                }

                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 70
                    anchors.topMargin: 0

                    DragHandler {
                        onActiveChanged: if(active && windowStatus == 0){
                                             if(windowStatus == 1){window.y=5}
                                             mainWindow.startSystemMove()
                                             internal.ifMaximizedWindowRestore()
                                         }
                    }

                    Image {
                        id: iconApp
                        width: 28
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../images/Logo-ktu.png"
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: label
                        width: 765
                        color: "#c3cbdd"
                        text: qsTr("CREATINY SIHA | Kullanıcı Kontrol Arayüzü")
                        anchors.left: iconApp.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 10
                        anchors.leftMargin: 5
                    }

                    Row {
                        id: rowBtns
                        height: 35
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.rightMargin: 0
                        anchors.topMargin: 0

                        TopBarButton{
                            id: btnMinimize
                            anchors.right: btnMaximizeRestore.left
                            anchors.rightMargin: 0
                            onClicked: {
                                mainWindow.showMinimized()
                                internal.restoreMargins()
                            }
                        }

                        TopBarButton {
                            id: btnMaximizeRestore
                            anchors.right: btnClose.left
                            anchors.rightMargin: 0
                            btnIconSource: "../images/svg_images/maximize_icon.svg"
                            onClicked: internal.maximizeRestore()
                        }

                        TopBarButton {
                            id: btnClose
                            anchors.right: parent.right
                            anchors.rightMargin: -105
                            btnColorClicked: "#ff007f"
                            btnIconSource: "../images/svg_images/close_icon.svg"
                            onClicked: mainWindow.close()
                        }

                        CustomButton {
                            id: buttonConnect
                            width: 180
                            height: 35
                            text: "BAĞLAN"
                            anchors.right: btnMinimize.left
                            font.letterSpacing: 1.5
                            anchors.rightMargin: 50
                            colorPressed: "#98374e"
                            colorMouseOver: "#d44d6d"
                            colorDefault: "#ef5777"
                            font.italic: false
                            font.weight: Font.Medium
                            font.bold: true
                            font.pointSize: 10
                            font.family: "Arial"

                            onClicked: {
                                backend.getComPort(cb_com.displayText)
                                backend.getBaudRate(cb_baud.displayText)

                            }
                        }


                        ComboBoxBaud {
                            id: cb_baud
                            width: 100
                            height: 35
                            anchors.right: buttonConnect.left
                            anchors.rightMargin: 0
                            colorPressed: "#076fbf"
                            colorMouseOver: "#087cd5"
                            colorDefault: "#0984e3"
                        }

                        ComboBoxComPort {
                            id: cb_com
                            height: 35
                            anchors.right: cb_baud.left
                            anchors.rightMargin: 0
                            colorPressed: "#2f323d"
                            colorMouseOver: "#3b3e4c"
                            colorDefault: "#474a5b"

                        }
                        AnimatedImage {
                            id: loadingConnect
                            width: 20
                            height: 20
                            visible: false
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: cb_com.left
                            source: "../images/loading.gif"
                            anchors.rightMargin: 0
                        }
                    }
                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: 0

                Rectangle {
                    id: leftMenu
                    width: 70
                    color: "#1c1d20"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0

                    PropertyAnimation {
                        id: animationMenu
                        target: leftMenu
                        property: "width"
                        to: if(leftMenu.width==70) return 500; else return 70
                        duration: 1000
                        easing.type: Easing.OutExpo
                    }


                    Column {
                        id: column
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        clip: true
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 90
                        anchors.topMargin: 0

                        LeftMenuButton {
                            id: btnHome
                            width: leftMenu.width
                            text: qsTr("Anasayfa")
                            isActiveMenu: true
                            onClicked: {
                                btnHome.isActiveMenu = true
                                btnSettings.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("pages/homePage.qml"))
                            }
                        }

                        LeftMenuButton {
                            id: btnSettings
                            width: leftMenu.width
                            text: qsTr("Ayarlar")
                            btnIconSource: "../images/svg_images/settings_icon.svg"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSettings.isActiveMenu = true
                                stackView.push(Qt.resolvedUrl("pages/settingsPage.qml"))
                            }
                        }
                    }
                }

                Rectangle {
                    id: contentPages
                    color: "#2c313c"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 25

                    StackView {
                        id: stackView
                        anchors.fill: parent
                        initialItem: Qt.resolvedUrl("pages/homePage.qml")
                    }
                }

                Rectangle {
                    id: rectangle
                    color: "#282c34"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: contentPages.bottom
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    Label {
                        id: labelTopInfo1
                        color: "#5f6a82"
                        text: qsTr("CREATINY 2022")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.topMargin: 0
                        anchors.rightMargin: 30
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                    }

                    MouseArea {
                        id: resizeWindow
                        x: 884
                        y: 0
                        width: 25
                        height: 25
                        opacity: 0.5
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.rightMargin: 0
                        cursorShape: Qt.SizeFDiagCursor

                        DragHandler{
                            target: null
                            onActiveChanged: if (active){
                                                 mainWindow.startSystemResize(Qt.RightEdge | Qt.BottomEdge)
                                             }
                        }

                        Image {
                            id: resizeImage
                            width: 16
                            height: 16
                            anchors.fill: parent
                            source: "../images/svg_images/resize_icon.svg"
                            anchors.leftMargin: 5
                            anchors.topMargin: 5
                            sourceSize.height: 16
                            sourceSize.width: 16
                            fillMode: Image.PreserveAspectFit
                            antialiasing: false
                        }
                    }
                }
            }
        }
    }

    DropShadow{
        anchors.fill: backround
        horizontalOffset: 0
        verticalOffset: 0
        radius: 10
        samples: 16
        color: "#80000000"
        source: backround
        z: 0
    }

    MouseArea {
        id: resizeLeft
        width: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.LeftEdge) }
        }
    }

    MouseArea {
        id: resizeRight
        width: 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.RightEdge) }
        }
    }

    MouseArea {
        id: resizeBottom
        height: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 0
        cursorShape: Qt.SizeVerCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.BottomEdge) }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:16}
}
##^##*/
