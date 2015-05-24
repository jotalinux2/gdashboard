import QtQuick 2.0
import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import "../ItemViews"
import "../layouts"
Layouts{
    GridLayout {
        id: layL1C
        name: "L1C"
        rows: 1
        columns: 1
        anchors.fill: parent
        PieView {
            Layout.rowSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
         }
    }
}
