// Event handlers
window.addEventListener("load", loadContent, false);

// Functions
function loadContent() {
    // Get selected map name
    var selector = document.getElementById("map_select");
    selector.blur();

    // Load content
    loadMapWithHotspots(selector.value);
    loadAdventureData(selector.value);
    loadBattleTactics(0);

    clearHighlight();
}


function calcActualXY(relativeCoordString) {
    var img = document.getElementById("map_image"),
        rels = relativeCoordString.split(',');
    return (Math.floor(rels[0] * img.clientWidth) + ','
          + Math.floor(rels[1] * img.clientHeight) + ','
          + Math.floor(rels[2] * img.clientWidth) + ','
          + Math.floor(rels[3] * img.clientHeight));
}


window.addEventListener("resize", function () {
    // Recalculate area coordinates
    var areas = document.getElementsByTagName("area");
    for (var i = 0; i < areas.length; i++) {
        areas[i].setAttribute("coords", calcActualXY(areas[i].getAttribute("relCoords")));
    }
    highlightArea(selectedArea);
}, false);


var selectedArea;
function highlightArea(area) {
    selectedArea = area;
    var canvas = document.getElementById("map_overlay"),
        context = canvas.getContext('2d'),
        edges = selectedArea.getAttribute("coords").split(','),
        canvX = parseInt(edges[0]) + 1,
        canvY = parseInt(edges[1]) + 1,
        canvW = parseInt(edges[2]) - canvX + 2,
        canvH = parseInt(edges[3]) - canvY + 2;

    canvas.style.left = canvX + "px";
    canvas.style.top = canvY + "px";
    canvas.setAttribute("width", canvW);
    canvas.setAttribute("height", canvH);
    context.fillStyle = "rgba(255,255,0,.6)";
    context.fillRect(0, 0, canvW, canvH);
}


function clearHighlight() {
    var overlay = document.getElementById("map_overlay");
    overlay.style.left = 0;
    overlay.style.top = 0;
    overlay.getContext('2d').clearRect(0, 0, 100, 100);
}