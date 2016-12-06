import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import DarkStyle.Controls 1.0
import "mainPage"

Item {

    id: root

    SplitView {
        anchors.fill: parent
        MenuPage {
            id: menupage
            width: 200
        }
        JobPage {
            id: jobpage
            Layout.minimumWidth: 50
            Layout.fillWidth: true
        }
        orientation: Qt.Horizontal
    }

}