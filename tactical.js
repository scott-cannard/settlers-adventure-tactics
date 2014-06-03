var battleData;


function loadMapWithHotspots(mapName) {
    // Load image
    document.getElementById("map_image").setAttribute("src", "./Maps/" + mapName + ".png");

    // Select map element
    var map = document.getElementById("map_hotspots");
    // Remove existing map areas
    var areas = map.getElementsByTagName("area");
    for (var i = areas.length - 1; i >= 0; i--) {
        areas[i].parentNode.removeChild(areas[i]);
    }

    var areaData;
    // ************************************************* MAP AREAS DATA BLOCK *************************************************
    if (mapName === "Outlaws") {
        areaData = [".1669,.1987,.2027,.2582", ".4651,.3802,.5000,.4397", ".1816,.1643,.2165,.2237", ".4944,.3630,.5302,.4225",
                    ".4715,.3411,.5064,.4021", ".1532,.1643,.1880,.2237", ".6752,.7668,.7110,.8278", ".7477,.7527,.7825,.8122",
                    ".7431,.4945,.7779,.5539", ".2256,.2895,.2605,.3411", ".5311,.1971,.5660,.2582", ".5532,.1721,.5880,.2316",
                    ".7926,.3411,.8275,.4006", ".7587,.3489,.7926,.4084", ".5073,.1737,.5431,.2347", ".7724,.1721,.8073,.2316",
                    ".5302,.1658,.5651,.2237", ".7284,.1737,.7642,.2316", ".7495,.1236,.7853,.1815", ".2550,.3599,.2908,.4178",
                    ".3348,.4350,.3706,.4960", ".3183,.4866,.3541,.5461", ".5752,.5336,.6100,.5931", ".5954,.5868,.6311,.6447",
                    ".6788,.6917,.7146,.7527"];
    }
    else if (mapName === "Stealing from the Rich") {
        areaData = [];
    }
    else if (mapName === "The Dark Priests") {
        areaData = [".4311,.5399,.4623,.5852", ".5018,.3849,.5321,.4319", ".4431,.3583,.4733,.4037", ".5018,.3255,.5321,.3677",
                    ".3339,.1564,.3651,.2018", ".2669,.1721,.2981,.2159", ".2330,.2175,.2642,.2644", ".1568,.2363,.1871,.2801",
                    ".8036,.2801,.8330,.3239", ".8119,.1971,.8412,.2394", ".6366,.1580,.6669,.2003", ".7357,.1251,.7669,.1643",
                    ".2577,.3755,.2899,.4209", ".4091,.3020,.4394,.3474", ".3412,.4960,.3724,.5414", ".5688,.5054,.6000,.5508",
                    ".6330,.5054,.6633,.5492", ".5733,.5680,.6055,.6118", ".6110,.2253,.6422,.2691"];
    }
    else if (mapName === "The Lost Skull") {
        areaData = [".4691,.6598,.5078,.7111", ".7249,.5029,.7617,.5542", ".3431,.3797,.3817,.4296", ".5133,.1803,.5519,.2287"];
    }
    else if (mapName === "Traitors") {
        areaData = [".1366,.6463,.1678,.6885", ".1477,.4835,.1788,.5258", ".2036,.3192,.2357,.3630", ".2853,.2112,.3146,.2519",
                    ".3972,.5727,.4284,.6212", ".4412,.7120,.4733,.7558", ".5201,.7981,.5513,.8403", ".6449,.7511,.6761,.7918",
                    ".6899,.5774,.7211,.6197", ".7807,.6181,.8119,.6604", ".7477,.5665,.7788,.6071"];
    }
    else if (mapName === "Tropical Sun") {
        areaData = [".5844,.7782,.6183,.8412", ".3596,.8841,.3935,.9470", ".2926,.7725,.3266,.8354", ".4440,.5908,.4779,.6537",
                    ".4357,.3662,.4688,.4277", ".3596,.3190,.3935,.3834", ".2770,.4163,.3110,.4806", ".2788,.2217,.3128,.2846",
                    ".1623,.3376,.1954,.4020"];
    }
    // *********************************************** END MAP AREAS DATA BLOCK ***********************************************

    // Append map areas
    for (var i = 0; i < areaData.length; i++) {
        var newArea = document.createElement("area");
        newArea.setAttribute("shape", "rect");
        newArea.setAttribute("relCoords", areaData[i]);
        newArea.setAttribute("coords", calcActualXY(areaData[i]));
        newArea.setAttribute("href", "javascript:loadBattleTactics(" + (i + 1) + ");");
        newArea.setAttribute("alt", "Battle " + (i + 1));
        newArea.addEventListener("click", function (e) { highlightArea(e.target || e.srcElement); }, false);
        map.appendChild(newArea);
    }
}


function loadAdventureData(mapName) {
    // Display "loading" messages
    // ...initialArmy
    var oldInitial = document.getElementById("initial_army").getElementsByTagName("table")[0];
    var newInitial = document.createElement("h4");
    newInitial.style.textAlign = "center";
    newInitial.innerHTML = "Accessing database...";
    oldInitial.parentNode.replaceChild(newInitial, oldInitial);
    // ...expectedLosses
    var oldLosses = document.getElementById("expected_losses").getElementsByTagName("table")[0];
    var newLosses = document.createElement("h4");
    newLosses.style.textAlign = "center";
    newLosses.innerHTML = "Accessing database...";
    oldLosses.parentNode.replaceChild(newLosses, oldLosses);

    // Set up PHP request
    if (window.XMLHttpRequest) {
        var PHPRequest = new XMLHttpRequest();     // code for IE7+, Firefox, Chrome, Opera, Safari
    } else {
        var PHPRequest = new ActiveXObject("Microsoft.XMLHTTP");   // code for IE6, IE5
    }
    // Attach "ready" event handler
    PHPRequest.onreadystatechange = function () {
        if (PHPRequest.readyState == 4 && PHPRequest.status == 200) {
            battleData = JSON.parse(PHPRequest.responseText);

            var uList = new Array();
            for (var row = 0; row < battleData.length; row++) {                             // iterate player entries
                var players = JSON.parse(battleData[row])[1];                               // ...
                for (var u = players.length - 1; u >= 0; u--) {                             // iterate unit names
                    var unit = players[u].split(":")[1];                                    // ...
                    if (uList.indexOf(unit) == -1)                                          // unit name not in list?
                        uList.push(unit);                                                   // -> add it
                }
            }
            uList.sort(function (a, b) {
                var ordered = new Array("Recruits", "Militia", "Soldiers", "Elites", "Cavalry", "Bowmen", "Longbowmen", "Crossbowmen", "Cannoneers");
                return (ordered.indexOf(a) < ordered.indexOf(b) ? -1 : 1);
            });
            insertInitialArmyData(uList, newInitial);
            insertLossesData(uList, newLosses);
        }
    }
    // Execute PHP call
    PHPRequest.open("GET", "battleTactics.php?map=" + mapName, true);
    PHPRequest.send();
}


function insertInitialArmyData(unitList, targetNode) {
    // Create initialArmy table
    var newInitial = document.createElement("table");
    newInitial.setAttribute("class", "initialArmy chart");
    newInitial.innerHTML = "<caption>Initial Army Size</caption>";

    // Calculate initial army needs
    var ENEMIES = 0, PLAYERS = 1, LOSSES = 2,
        QTY = 0, UNITNAME = 1,
        MINLOST = 0, MAXLOST = 1, LOSSNAME = 2;

    for (var unitIdx = 0; unitIdx < unitList.length; unitIdx++) {                       // iterate battle-required units
        var have = 0,
            need = 0;
        for (var batIdx = 0; batIdx < battleData.length; batIdx++) {                    // iterate battles
            var row = JSON.parse(battleData[batIdx]);
            for (var plrIdx = 0; plrIdx < row[PLAYERS].length; plrIdx++) {              // iterate player entries
                var player = row[PLAYERS][plrIdx].split(":");
                if (row[LOSSES][0].split(":")[LOSSNAME] != "skip" && player[UNITNAME] == unitList[unitIdx]) {
                                                                                        // unit is sent into this battle? (ignore skipped battles)
                    var unitsInBattle = parseInt(player[QTY]);                     // how many of them
//                    alert("Have " + have + " " + unitList[unitIdx] + "\n"
//                        + unitsInBattle + " units in battle(" + (batIdx + 1) + ")");
                    if (unitsInBattle > have) {                                         // if there aren't enough...
//                        alert("Need: " + need + " + " + (unitsInBattle - have) + " = " + (need + unitsInBattle - have) + "\n"
//                            + "Have: " + unitsInBattle + " " + unitList[unitIdx]);
                        need += unitsInBattle - have;                                   // - add that number to 'need' (less 'have')
                        have = unitsInBattle;                                           // - 'have' becomes number of units in battle
                    }
                    for (var lossIdx = 0; lossIdx < row[LOSSES].length; lossIdx++) {    // iterate losses
                        var loss = row[LOSSES][lossIdx].split(":");
                        if (loss[LOSSNAME] == unitList[unitIdx]) {                      // unit has losses for this battle?
//                            alert("Lost " + loss[MAXLOST] + "\n"
//                                + "Have: " + (have - parseInt(loss[MAXLOST])) + " " + unitList[unitIdx] + ".");
                            have -= parseInt(loss[MAXLOST]);                       // subtract max losses from 'have'
                            break;
                        }
                    }
                }
            }
        }
        //        alert(need + " " + unitList[unitIdx] + " needed.");
        // Add unit needs to table
        newInitial.innerHTML += "<tr><td>" + need + "</td><td></td><td>" + unitList[unitIdx] + "</td></tr>";
    }
    // Replace table
    targetNode.parentNode.replaceChild(newInitial, targetNode);
}


function insertLossesData(unitList, targetNode) {
    // Create expectedLosses table
    var newLosses = document.createElement("table");
    newLosses.setAttribute("class", "expectedLosses chart");
    newLosses.innerHTML = "<caption>Expected Losses</caption>";
    newLosses.innerHTML += "<tr><th></th><th>Min</th><th>Avg</th><th>Max</th><th></th></tr>";

    // Calculate losses
    var LOSSES = 2,
        MINLOST = 0, MAXLOST = 1, LOSSNAME = 2;

    for (var unitIdx = 0; unitIdx < unitList.length; unitIdx++) {                       // iterate battle-required units
        var minLost = 0,
            maxLost = 0;
        for (var batIdx = 0; batIdx < battleData.length; batIdx++) {
            var row = JSON.parse(battleData[batIdx]);
            for (var lossIdx = 0; lossIdx < row[LOSSES].length; lossIdx++) {
                var loss = row[LOSSES][lossIdx].split(":");
                if (loss[LOSSNAME] == unitList[unitIdx]) {
//                    alert("Battle(" + (batIdx + 1) + "): " + loss[MINLOST] + "-" + loss[MAXLOST] + " " + loss[LOSSNAME]);
                    minLost += parseInt(loss[MINLOST]);
                    maxLost += parseInt(loss[MAXLOST]);
                }
            }
        }
        if (maxLost > 0)
            newLosses.innerHTML += "<tr><td>" + unitList[unitIdx] + "</td><td>" + minLost + "</td><td>" + Math.ceil((minLost + maxLost) / 2) + "</td><td>" + maxLost + "</td><td></td></tr>";
    }
    // Replace table
    targetNode.parentNode.replaceChild(newLosses, targetNode);
}


function loadBattleTactics(battle) {
    // Create battleInfo table
    var oldBattle = document.getElementById("battle_info").getElementsByTagName("table")[0];
    var newBattle = document.createElement("table");
    newBattle.setAttribute("class", "battleInfo chart");
    newBattle.innerHTML = "<caption>Battle Strategy</caption>";
    newBattle.style.outlineColor = "steelblue";
    newBattle.style.backgroundColor = "aliceblue";

    if (battle == 0) {
        // No adventure selected, insert 'select a camp' message
        newBattle.innerHTML += "<tr><td align='center'>Select an enemy camp to view details</td></tr>";
        newBattle.style.outlineColor = "green";
        newBattle.style.backgroundColor = "transparent";
    }
    else {
        // Parse & add battleInfo data
        var enemy = JSON.parse(battleData[battle - 1])[0];
        var player = JSON.parse(battleData[battle - 1])[1];
        var losses = JSON.parse(battleData[battle - 1])[2];

        var bStr = "<tr><td style='text-decoration:underline;font-weight:bold;'>Enemies</td></tr>"
                 + "<tr><td>";
        for (var i = 0, d; i < enemy.length;) {
            d = enemy[i].split(':');
            bStr += d[0] + " " + d[1] + (++i < enemy.length ? ", " : "");
        }
        bStr += "</td></tr>"
              + "<tr><td>&nbsp;</td></tr>"
              + "<tr><td style='text-decoration:underline;font-weight:bold;'>Attackers</td></tr>"
              + "<tr><td>";
        for (var i = 0, d; i < player.length;) {
            d = player[i].split(':');
            bStr += d[0] + " " + d[1] + (++i < player.length ? ", " : "");
        }
        bStr += "</td></tr>"
              + "<tr><td>&nbsp;</td></tr>"
              + "<tr><td style='text-decoration:underline;font-weight:bold;'>Losses</td></tr>"
              + "<tr><td>";
        for (var i = 0, d; i < losses.length; i++) {
            d = losses[i].split(':');
            if (d[2] == "none") {
                bStr += "None";
            }
            else if (d[2] == "skip")
                bStr += "This battle should be skipped.";
            else
                bStr += d[0] + "-" + d[1] + " " + d[2] + (i + 1 < losses.length ? ", " : "");
        }
        bStr += "</td></tr>";
        newBattle.innerHTML = bStr;
    }
    // Replace table
    oldBattle.parentNode.replaceChild(newBattle, oldBattle);
}