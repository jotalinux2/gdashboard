var component;
var sprite;

function createLayoutObjects(currentLayout, parentObj) {
    component = Qt.createComponent("../layouts/"+ currentLayout+".qml");
    if (component.status === Component.Ready)
        finishCreation(parentObj);
    else
        component.statusChanged.connect(finishCreation);
}


function finishCreation(parentObj) {
    if (component.status === Component.Ready) {
        sprite = component.createObject(parentObj);
        if (sprite === null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status === Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}
