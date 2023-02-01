import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: main_area
        color: "#2c313c"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Rectangle {
            id: server_settings
            width: 500
            height: 250
            color: "#272935"
            radius: 25
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.leftMargin: 39

            Label {
                id: user_name_label
                x: 8
                y: 39
                height: 25
                color: "#5f6a82"
                text: qsTr("Kullanıcı Adı:")
            }

            Label {
                id: password_label
                x: 8
                y: 70
                height: 25
                color: "#5f6a82"
                text: qsTr("Şifre:")
            }

            TextField {
                id: user_name_text
                x: 120
                y: 39
                width: 200
                height: 25
                text: qsTr("")
            }

            TextField {
                id: password_text
                x: 120
                y: 70
                height: 25
                text: qsTr("")
            }

            Button {
                id: button
                x: 120
                y: 105
                text: qsTr("Bağlan")
            }
        }
    }

}
/*##^##
Designer {
    D{i:0;autoSize:true;height:661;width:1274}D{i:2}
}
##^##*/
