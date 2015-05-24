import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1
import QtQuick 2.0
import "layouts"
//import "componentCreation.js" as MyScript

ApplicationWindow {
    title: qsTr("Hello World" + containerLayouts.mode)
    width: Screen.width
    height: Screen.height
    visible: true
    id: appWin
    property string currentLayout: "L3L"

    menuBar: MenuBar {
        id: menuconfig
        Menu {
            title: qsTr("&Configure")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem{
                text: qsTr("&Run")
                onTriggered: messageDialog.show(qsTr("Execute"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }

        }
        Menu {
            id: menuLayouts
            title: qsTr("Layouts")
            MenuItem {
                text: qsTr("L1C")
                onTriggered: updateLayout(this.text)
            }
            MenuItem {
                text: qsTr("L2E")
                onTriggered: updateLayout(this.text)
            }
            MenuItem {
                text: qsTr("L3L")
                onTriggered: updateLayout(this.text)
            }
        }

    }

    Item{
        id: grdContainer
        anchors.fill: parent

        ContainerLayout{
            id: containerLayouts
            currentLayout: appWin.currentLayout
        }
    }

    function updateLayout(layName){
        if (layName !== appWin.currentLayout)
        {
            console.log("menu currentLayout has clicked:", layName);
            appWin.currentLayout = layName
            containerLayouts.currentLayout = appWin.currentLayout;
        }
    }


}
