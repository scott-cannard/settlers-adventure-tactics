var currentBoxSide = null;
var highlightColor = "palegoldenrod";


window.addEventListener("keydown", function (e) {
    switch (e.keyCode) {
        case 27: var mapper = document.getElementById("area_mapper");
                 mapper.style.visibility = (mapper.style.visibility == "visible" ? "collapse" : "visible");
                 break;
        case 37: currentBoxSide = document.getElementById("cLeft");
                 break;
        case 38: currentBoxSide = document.getElementById("cTop");
                 break;
        case 39: currentBoxSide = document.getElementById("cRight");
                 break;
        case 40: currentBoxSide = document.getElementById("cBottom");
                 break;
    }
    if (currentBoxSide != null) currentBoxSide.style.backgroundColor = highlightColor;
}, false);


window.addEventListener("keyup", function (e) {
    switch (e.keyCode) {
        case 37:
        case 38:
        case 39:
        case 40: currentBoxSide.style.backgroundColor = "white";
                 currentBoxSide = null;
                 break;
    }
}, false);


window.addEventListener("click", function () {
    if (currentBoxSide == document.getElementById("cLeft") || currentBoxSide == document.getElementById("cRight")) {
        currentBoxSide.value = mapX;
    }
    else if (currentBoxSide == document.getElementById("cTop") || currentBoxSide == document.getElementById("cBottom")) {
        currentBoxSide.value = mapY;
    }
}, false);


function clearCoords() {
    document.getElementById("coordsList").innerHTML = "";
}


function addCoordsToList() {
    var img = document.getElementById("map_image"),
        cl = document.getElementById("cLeft"),
        ct = document.getElementById("cTop"),
        cr = document.getElementById("cRight"),
        cb = document.getElementById("cBottom"),
        list = document.getElementById("coordsList");
    list.innerHTML += '".' + Math.floor(10000 * cl.value / img.clientWidth)
                    + ',.' + Math.floor(10000 * ct.value / img.clientHeight)
                    + ',.' + Math.floor(10000 * cr.value / img.clientWidth)
                    + ',.' + Math.floor(10000 * cb.value / img.clientHeight) + '",\n';
    cl.value = "";
    ct.value = "";
    cr.value = "";
    cb.value = "";
}


function saveCoordsToFile() {
    save_content_to_file(document.getElementById("coordsList").innerText, "AreasData");
}


function save_content_to_file(content, filename) {
    var dlg = false;
    with (document) {
        ir = createElement('iframe');
        ir.id = 'ifr';
        ir.location = 'about.blank';
        ir.style.display = 'none';
        body.appendChild(ir);
        with (getElementById('ifr').contentWindow.document) {
            open("text/plain", "replace");
            charset = "utf-8";
            write(content);
            close();
            document.charset = "utf-8";
            dlg = execCommand('SaveAs', false, filename + '.txt');
        }
        body.removeChild(ir);
    }
    return dlg;
}