import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4

ApplicationWindow {

    title: qsTr("Hello World")
    width: 900
    height: 600
    visible: true
    flags: "FramelessWindowHint"
    style:ApplicationWindowStyle {
            background: BorderImage {
                source: "background.png"
                border { left: 20; top: 20; right: 20; bottom: 20 }
            }
        }
    Rectangle {
           id: rect
           width: 900; height: 600
          color: "red"
          opacity: 0
        MouseArea{
            anchors.fill: parent
            onClicked: {
            console.log("clicked yellow")
            }
        }
    }
}
