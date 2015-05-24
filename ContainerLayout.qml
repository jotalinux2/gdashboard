import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import "layouts"
import "componentCreation.js" as MyScript

Item {
    id: cntLayout
    width: parent.width
    height: parent.height

    property string mode: ("" || "config") ? "config" : "deploy"
    property string currentLayout: ""

    onCurrentLayoutChanged: {
        console.log("currentLayout has changed:", currentLayout);
        if(grdContainer.children.length > 1)
          grdContainer.children[1].destroy

        MyScript.createLayoutObjects( cntLayout.currentLayout, grdContainer);
    }
    //start configs
    //Component.onCompleted: MyScript.createLayoutObjects( cntLayout.currentLayout, grdContainer);
}

