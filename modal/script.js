var characters = [];
var stages = [];
var listPlayer = ["Ale","Leo","Sandro","Siwei"];
var listDeaths = [];
var maxTier = 0;
var minTier = 0;

$(document).ready(function() {
    $.ajax({
        type: "GET",
        url: "/characters",
        async: false,
        success: function(data) {
            characters = data;
        }
    });

    $.ajax({
        type: "GET",
        url: "/stage",
        async: false,
        success: function(data) {
            stages = data;
        }
    });

    $.ajax({
        type: "GET",
        url: "/query_tier_list",
        async: false,
        success: function(data) {
            maxTier = data[0].ratio;
            minTier = data.slice(-1)[0].ratio;
        }            
    });

    $.ajax({
        type: "GET",
        url: "/deaths",
        async: false,
        success: function(data) {
            listDeaths = [...data.map(_=>_.name),"Mappa"];
        }            
    });
});

function calculateTier(value) {
    let color = "linear-gradient(45deg, #dc3b3e, #3b99dc 50%, #3bdc90 75%, rgb(255 141 0) 100%)";
    let letter = whichTier(value);
    switch(letter) {
        case "S": color = "linear-gradient(45deg, #dc3b3e, #3b99dc 50%, #3bdc90 75%, rgb(255 141 0) 100%)"; break;
        case "A": color = "linear-gradient(red,red)"; break;
        case "B": color = "linear-gradient(orange,orange)"; break;
        case "C": color = "linear-gradient(yellow,yellow)"; break;
        case "D": color = "linear-gradient(green,green)"; break;
        case "E": color = "linear-gradient(lightblue,lightblue)"; break;
        case "F": color = "linear-gradient(blue,blue)"; break;
        default: color = "linear-gradient(black,black)"; break;
    }
        
    return `
    <h2 style="color: white; -webkit-text-stroke: 1px black; background-image: ${color}; border-radius: 2vw; font-weight: bolder;">
        &ensp;${letter} - ${value.toFixed(3)}&ensp;
    </h2>`;
}

function whichTier(value) {
    function interval(n, start, end) {
        return n > start && n <= end;
    }
    let listLetters = [..."SABCDEF"];
    let step = (maxTier-minTier)/7;
    let maxTier_i = maxTier;
    for(let i = 0; i < listLetters.length; i++) {
        if(interval(value,maxTier_i-step,maxTier_i)) return listLetters[i];
        else maxTier_i -= step;            
    }
    return "F";
}

function createModal(pg, initialPlayer, n) {
    $(".modal-body").html(`<div class="loader"></div>`);
    $("#modal-anchor .modal .modal-dialog .modal-content .modal-header div").html(`<div class="loader"></div>`);

    reloadModal(initialPlayer,pg);

    function createBar(label, maxTier, value, perc, color) {
        return `
        <p>${label}</p>
            <div style="display: flex; width: 98%; margin-bottom: 5%; margin-top: -4%; align-items: center;">
                <div style="width: ${perc*value/maxTier}%; height: 100%; ${color};"></div>
                <div style="font-weight: bolder; font-size: 100%;">&ensp;${value}</div>
            </div>
        <hr>`;
    }

    function reloadModal(selectedPlayer,pgPar) {
        $(".modal-body").html(`<div class="loader"></div>`);
        $("#modal-anchor .modal .modal-dialog .modal-content .modal-header div").html(`<div class="loader"></div>`);
        $(".modal-footer #tier").html("");
        let url = "/query_pg?player="+selectedPlayer+"&pg="+characters.find(_=>_.character == pgPar).code;
        if(selectedPlayer == "Tutti")
            url ="/query_pg_tot?pg="+characters.find(_=>_.character == pg).code;
        url = url+"&n="+n;
        $.ajax({
            type: "GET",
            url: url,
            success: function(data) {
                let killsPar = "";
                let maxTier = 0;
                let perc = 75;
                if(data.kills.length != 0) {
                    maxTier = data.kills[0].n;
                    maxTier = data.kills.map(_=>_.n).reduce((a,b)=>a+b);
                    killsPar += createBar("KO+: Totali", maxTier, maxTier, perc, "background-image: linear-gradient(yellow, orange,orange)");
                    data.kills.sort((a,b)=>a.order-b.order).forEach((item)=>{
                        killsPar += createBar(`KO+: ${item.come}`, maxTier, item.n, perc, "background-image: linear-gradient(yellow, orange,orange)");
                    });
                }
                if(data.deaths.length != 0) {
                    maxTier = data.deaths[0].n;
                    let listDeathsPar = listDeaths.slice(0,5);
                    listDeathsPar.forEach((elem)=>{
                        item = data.deaths.find(_=>_.come == elem);
                        if(item == undefined) return; 
                        killsPar += createBar(`KO-: ${item.come}`, maxTier, item.n, perc, "background-image: linear-gradient(#ffcccb, #FF6461, #FF6461)");
                    });
                    data.deaths.forEach((item) => {
                        if(listDeathsPar.includes(item.come)) return;
                        killsPar += createBar(`KO-: ${item.come}`, maxTier, item.n, perc, "background-image: linear-gradient(#ffcccb, #FF6461, #FF6461)");
                    });
                }

                //CHECK PECULIAR
                let peculiar = peculiarSection(data.kills.find(_=>_.come == "Peculiare"), pgPar);

                maxTier = data.usage;
                let usage = createBar(`Uso:`, maxTier, data.usage, perc, "background-image: linear-gradient(azure, skyblue, skyblue)");
                usage += createBar(`Uso in Single:`, maxTier, data.usageS, perc, "background-image: linear-gradient(azure, skyblue, skyblue)");
                usage += createBar(`Uso in Team:`, maxTier, data.usageT, perc, "background-image: linear-gradient(azure, skyblue, skyblue)");

                maxTier = data.wins;
                let win = createBar(`Vittorie:`, maxTier, data.wins, perc, "background-image: linear-gradient(lightgreen, green, green)");
                win += createBar(`Vittorie in Single:`, maxTier, data.winsS, perc, "background-image: linear-gradient(lightgreen, green, green)");
                win += createBar(`Vittorie in Team:`, maxTier, data.winsT, perc, "background-image: linear-gradient(lightgreen, green, green)");

                $("#modal-anchor .modal .modal-dialog .modal-content .modal-header div").html(`
                    <img src="pic_pg?pg=${characters.find(_=>_.character == pgPar).code}&type=stock0" alt="Immagine non ancora disponibile!">
                    <h2><b>&ensp;${pgPar} di ${selectedPlayer}</b></h2>
               `);

                $(".modal-body").html(`
                <div class="modal-body-container">
                    <img class="modal-pg-pic" src="pic_pg?pg=${characters.find(_=>_.character == pgPar).code}&type=selected0-min" alt="Immagine non ancora disponibile!">
                    <div class="modal-body-right">
                        ${peculiar}
                        ${usage}
                        ${win}
                        ${killsPar}
                    </div>
                </div>       
               `);
               
                if(selectedPlayer == "Tutti") {
                    let tierValue = 0;
                    if(data.kills.length != 0)
                        tierValue = data.kills.map(_=>_.n).reduce((a,b)=>a+b)/data.usage;
                    let tier = calculateTier(tierValue);
                    $(".modal-footer #tier").html(tier);
                }
            }            
        });
    }

    function peculiarSection(obj, pgPar) {
        if(obj != undefined) {
            return `
                <div>
                    <p style="text-align: center; padding-left: 0%;">
                        Attacco Peculiare:<br>
                        ${characters.find(_=>_.character == pgPar).peculiar}
                    </p>
                    <img class="modal-peculiar-gif" src="peculiar?pg=${characters.find(_=>_.character == pgPar).code}" alt="Immagine non ancora disponibile!">
                </div>
                <br>
                <hr>
            `;
        }
        return "";
    }

    listPlayer.forEach((name) => {
        $(`#modal-button-${name.toLowerCase()}`).off("click");
        $(`#modal-button-${name.toLowerCase()}`).click(function() {
            reloadModal(name,pg);
        });    
    });

    $(`#modal-button-tot`).off("click");
    $(`#modal-button-tot`).click(function() {
        reloadModal("Tutti",pg);
    });
}