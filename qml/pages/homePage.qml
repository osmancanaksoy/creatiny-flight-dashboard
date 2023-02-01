import QtQuick 2.15
import QtQuick.Controls 2.15
import QtLocation 5.6
import QtPositioning 5.6


Item {
    Rectangle {
        id: main_area
        color: "#2c313c"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Flow {
            id: flow_area
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 60
            anchors.topMargin: 10

            Rectangle {
                id: air_speed
                width: 225
                height: 225
                color: "#272935"
                radius: 25
                anchors.left: parent.left
                anchors.leftMargin: 39

                Rectangle {
                    id: indicator_area
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10

                    Image {
                        id: ais_case
                        anchors.fill: parent
                        source: "../../images/svg_images/ais/asi_case.svg"
                        fillMode: Image.PreserveAspectFit

                        Image {
                            id: ais_face
                            anchors.fill: parent
                            source: "../../images/svg_images/ais/asi_face.svg"
                            fillMode: Image.PreserveAspectFit

                            Image {
                                id: indicator
                                anchors.fill: parent
                                source: "../../images/svg_images/ais/asi_hand.svg"
                                anchors.bottomMargin: 0
                                rotation: 0
                                fillMode: Image.PreserveAspectFit
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: attitude_direction
                width: 225
                height: 225
                color: "#272935"
                radius: 25
                anchors.left: air_speed.right
                anchors.leftMargin: 10

                Rectangle {
                    id: indicator_area1
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10

                    Image {
                        id: adi_back
                        anchors.fill: parent
                        source: "../../images/svg_images/adi/adi_back.svg"
                        antialiasing: false
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: adi_ring
                        anchors.fill: parent
                        source: "../../images/svg_images/adi/adi_ring.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: adi_face
                        anchors.fill: parent
                        source: "../../images/svg_images/adi/adi_face.svg"
                        //degisecek deger
                        fillMode: Image.PreserveAspectFit
                    }
                    Image {
                        id: adi_case
                        anchors.fill: parent
                        source: "../../images/svg_images/adi/adi_case.svg"
                        antialiasing: false
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            Rectangle {
                id: altimeter
                width: 225
                height: 225
                color: "#272935"
                radius: 25
                anchors.left: attitude_direction.right
                anchors.leftMargin: 10

                Rectangle {
                    id: indicator_area2
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10

                    Image {
                        id: alt_face_1
                        anchors.fill: parent
                        source: "../../images/svg_images/alt/alt_face_1.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: alt_face_2
                        anchors.fill: parent
                        source: "../../images/svg_images/alt/alt_face_2.svg"
                        fillMode: Image.PreserveAspectFit
                    }



                    Image {
                        id: alt_hand_1
                        anchors.fill: parent
                        source: "../../images/svg_images/alt/alt_hand_1.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: alt_hand_2
                        anchors.fill: parent
                        source: "../../images/svg_images/alt/alt_hand_2.svg"
                        fillMode: Image.PreserveAspectFit
                    }



                    Image {
                        id: alt_case
                        anchors.fill: parent
                        source: "../../images/svg_images/alt/alt_case.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            Rectangle {
                id: turn_cordinator
                width: 225
                height: 225
                color: "#272935"
                radius: 25
                anchors.left: altimeter.right
                anchors.leftMargin: 10

                Rectangle {
                    id: indicator_area3
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10

                    Image {
                        id: ts_back
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_back.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: ts_face1
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_face_1.svg"
                        fillMode: Image.PreserveAspectFit
                    }


                    Image {
                        id: ts_face2
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_face_2.svg"
                        fillMode: Image.PreserveAspectFit
                    }


                    Image {
                        id: ts_ball
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_ball.svg"
                        fillMode: Image.PreserveAspectFit
                    }



                    Image {
                        id: ts_mark
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_mark.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: ts_case
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_case.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            Rectangle {
                id: horizontal_situation
                height: 225
                color: "#272935"
                radius: 25
                anchors.left: turn_cordinator.right
                anchors.right: parent.right
                anchors.rightMargin: 39
                anchors.leftMargin: 10

                Rectangle {
                    id: indicator_area4
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10

                    Image {
                        id: hsi_face
                        anchors.fill: parent
                        source: "../../images/svg_images/hsi/hsi_face.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: hsi_case
                        anchors.fill: parent
                        source: "../../images/svg_images/hsi/hsi_case.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            Rectangle {
                id: map
                width: 500
                height: 350
                color: "#272935"
                radius: 25
                anchors.left: parent.left
                anchors.top: air_speed.bottom
                anchors.leftMargin: 39
                anchors.topMargin: 5

                Plugin {
                    id: mapPlugin
                    name:"osm"

                    PluginParameter {
                        name: "osm.mapping.providersrepository.disabled"
                        value: "true"
                    }
                    PluginParameter {
                        name: "osm.mapping.providersrepository.address"
                        value: "http://maps-redirect.qt.io/osm/5.6/"
                    }
                }
                Map {
                    id:mapWiew
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10
                    plugin: mapPlugin
                    center: QtPositioning.coordinate(40.9916125, 39.7764613)
                    zoomLevel:15
                }
            }

            Rectangle {
                id: stream
                width: 500
                height: 350
                color: "#272935"
                radius: 25
                anchors.left: map.right
                anchors.top: turn_cordinator.bottom
                anchors.topMargin: 5
                anchors.leftMargin: 200
            }

            Button {
                id: manuel_mode
                text: qsTr("Manuel Mode")
                background: Rectangle {
                    radius: 25
                    color: "#0fbcf9"
                }
                anchors.left: map.right
                anchors.right: stream.left
                anchors.top: altimeter.bottom
                font.family: "Arial"
                anchors.topMargin: 100
                anchors.rightMargin: 10
                anchors.leftMargin: 10
            }

            Button {
                id: otonom_mode
                width: 180
                text: qsTr("Otonom Mode")
                background: Rectangle {
                    radius: 25
                    color: "#0fbcf9"
                }
                anchors.left: map.right
                anchors.right: stream.left
                anchors.top: manuel_mode.bottom
                font.family: "Arial"
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                anchors.topMargin: 10
            }

            Button {
                id: fail_safe_mode
                width: 180
                text: qsTr("Fail Safe Mode")
                background: Rectangle {
                    radius: 25
                    color: "#0fbcf9"
                }
                anchors.left: map.right
                anchors.right: stream.left
                anchors.top: otonom_mode.bottom
                font.family: "Arial"
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                anchors.topMargin: 10
            }

            Button {
                id: qr_mission
                text: qsTr("Qr Mission")
                background: Rectangle {
                    radius: 25
                    color: "#0fbcf9"
                }
                anchors.left: map.right
                anchors.right: stream.left
                anchors.top: fail_safe_mode.bottom
                font.family: "Arial"
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                anchors.topMargin: 10
            }


        }

        Rectangle {
            id: bottom_area
            y: 670
            height: 50
            color: "#00000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 49
            anchors.bottomMargin: 0

            Row {
                id: row_bottom
                width: 200
                height: 400

                Rectangle {
                    id: arm_box
                    width: 100
                    height: 45
                    color: "#272935"
                    radius: 10

                    Text {
                        id: arm_text
                        height: 50
                        color: "#ffffff"
                        text: qsTr("ARM")
                        anchors.fill: parent
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Medium
                        font.family: "Arial"
                    }
                }

                Rectangle {
                    id: mode_box
                    width: 310
                    height: 45
                    color: "#272935"
                    radius: 10
                    anchors.left: arm_box.right
                    anchors.leftMargin: 5

                    Text {
                        id: flight_mode_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: mode.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                    }

                    Text {
                        id: mode
                        width: 97
                        color: "#0fbcf9"
                        text: qsTr("Uçuş Modu")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        anchors.leftMargin: 15
                        font.family: "Arial"
                        font.weight: Font.Medium
                    }

                    Text {
                        id: mode1
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Flight Mode")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        anchors.bottomMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }

                Rectangle {
                    id: battery_box
                    width: 150
                    height: 45
                    color: "#272935"
                    radius: 10
                    anchors.left: mode_box.right
                    anchors.leftMargin: 5

                    Text {
                        id: battery_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: bat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: bat
                        width: 67
                        color: "#0fbcf9"
                        text: qsTr("Batarya")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: mode2
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Battery")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }

                Rectangle {
                    id: server_status
                    width: 175
                    height: 45
                    color: "#272935"
                    radius: 10
                    anchors.left: battery_box.right
                    anchors.leftMargin: 5

                    Text {
                        id: server_text
                        width: 104
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: sat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: server
                        width: 46
                        color: "#0fbcf9"
                        text: qsTr("Sunucu")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: mode_3
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Server")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }

                Rectangle {
                    id: gps_lat_box
                    width: 230
                    height: 45
                    color: "#272935"
                    radius: 10
                    anchors.left: server_status.right
                    anchors.leftMargin: 5

                    Text {
                        id: lat
                        width: 64
                        color: "#0fbcf9"
                        text: qsTr("Enlem")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: lat_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: lat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: mode4
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Latitude")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }

                Rectangle {
                    id: gps_lon_box
                    width: 230
                    height: 45
                    color: "#272935"
                    radius: 10
                    anchors.left: gps_lat_box.right
                    anchors.leftMargin: 5

                    Text {
                        id: lon
                        width: 64
                        color: "#0fbcf9"
                        text: qsTr("Boylam")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: lon_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: lon.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: mode5
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Longitude")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:661;width:1274}D{i:5}D{i:4}D{i:10}
D{i:12}D{i:13}D{i:9}D{i:17}D{i:18}D{i:15}D{i:22}D{i:30}D{i:29}D{i:45}D{i:47}
}
##^##*/
