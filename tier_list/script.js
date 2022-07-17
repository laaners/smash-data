var characters = [];
var maxTier = 0;
var minTier = 0;
var latestN = 0;
var maxN = 0;
var listHL = [];

$(document).ready(function() {
    $.ajax({
        type: "GET",
        url: "/characters",
        async: false,
        success: function(data) {
            characters = data;
        }
    });

//NAVIGATOR SETUP------------------------------------------------------------------------------------------------------------------------------------------
    $.ajax({
        type: "GET",
        url: "/highlights",
        success: function(data) {
            listHL = data;
            let latest = listHL.sort((a,b) => b.n-a.n)[0];
            latestN = latest.n;
            maxN = latest.n;

            $(".tier-navigator").html(`
                <div style="display: flex; justify-content: center; align-items: center; height: 100%;">
                    <button class="previous btn btn-primary">&lt;</button>
                    <div style="margin: 1%; font-weight: 500 !important; font-size: 150%">Versione 25, Highlights [1,${latestN}]</div>
                    <button class="next btn btn-primary">&gt;</button>
                </div>
                <span style="display: flex; justify-content: center;">
                    <div class="desc" style="display: flex; justify-content: center; margin: 1%; width: 100%;">
                        desc
                    </div>
                </span>
                <div style="display: flex; justify-content: center;">
                    Premi invio per andare alla versione:&ensp;<input type="text" maxlength="4" size="1" class="goto">
                </div>
            `);

            $(".previous").click(function() {
                latestN -= 1;
                reloadTier(latestN);
            });

            $(".next").click(function() {
                latestN += 1;
                reloadTier(latestN);
            });

            $(".goto").keypress(function (e) {
                if(e.which == 13) {
                    let version = parseInt($(this).val());
                    if(isNaN(version)) {
                        alert("Non è un numero!");
                        return false;
                    }
                    if(version <= 0 || version > maxN) {
                        alert("Versione non valida!")
                        return false;
                    }
                    latestN = version;
                    reloadTier(version);
                }
                return true;
            });

            //TIERS CREATION------------------------------------------------------------------------------------------------------------------------------------------
            reloadTier(latestN);
        }
    });
});

function disableButtons(n) {
    if(n <= 1)
        $(".previous").prop("disabled",true);
    else
        $(".previous").prop("disabled",false);

    if(n >= maxN)
        $(".next").prop("disabled",true);
    else
        $(".next").prop("disabled",false);
}

function refreshDesc(n) {
    $(".desc").text("");
    let hl = listHL.find(_=>_.n == n);
    let text = "";
    for(typeMatch in hl) {
        if(typeMatch == "n" || hl[typeMatch] == 0) continue;
        else text += `${typeMatch} [1,${hl[typeMatch]}] - `;
    }
    $(".desc").text(text.slice(0,-3));
}

function reloadTier(n) {
    disableButtons(n);
    refreshDesc(n);

    $(".tier-navigator div div").text(`
        Versione ${n}, Highlights [1,${n}]
    `)

    $("#list").html(`<div class="loader"></div>`);

    $.ajax({
        type: "GET",
        //url: "/query_tier_list",
        url: "/query_tier_list"+"?n="+n,
        success: function(data) {
            maxTier = data[0].ratio;
            minTier = data.slice(-1)[0].ratio;
            $("#list").html("");

            data.forEach((item) => item["tier"] = whichTier(item.ratio));
            [..."SABCDEF"].forEach((tier) => {
                let color = "";
                switch(tier) {
                    case "S": color = "linear-gradient(45deg, #dc3b3e, #3b99dc 50%, #3bdc90 75%, rgb(255 141 0) 100%)"; break;
                    case "A": color = "linear-gradient(red,red)"; break;
                    case "B": color = "linear-gradient(orange,orange)"; break;
                    case "C": color = "linear-gradient(yellow,yellow)"; break;
                    case "D": color = "linear-gradient(green,green)"; break;
                    case "E": color = "linear-gradient(lightblue,lightblue)"; break;
                    case "F": color = "linear-gradient(blue,blue)"; break;
                    default: color = "linear-gradient(black,black)"; break;
                }
                let charBox = "";
                data.filter(_=>_.tier == tier).forEach((item) => {
                    charBox += `
                    <div class="pg-pic" data-toggle="modal" data-target="#pg-modal" style="float: left">
                        <span hidden>${item.pg}</span>
                        <img src="pic_pg?pg=${characters.find(_=>_.character == item.pg).code}&type=selected0-min" height=100 alt="PNG not found">
                        <p style="font-weight: bolder;">${item.pg}</p>
                    </div>
                    `;
                });
                
                let listLetters = [..."SABCDEF"];
                let step = (maxTier-minTier)/7;
                let maxTier_i = maxTier;
                for(let i = 0; i < listLetters.length; i++) {
                    if(listLetters[i] == tier) break;
                    else maxTier_i -= step;            
                }

                $("#list").append(`
                    <div class="flexbox-container">
                        <div class="left-flexbox">
                            <p style="color: white; -webkit-text-stroke: 1px black; background-image: ${color}; border-radius: 2vw; font-weight: bolder;">
                                <br>
                                ${tier} 
                                <br>
                                &ensp;
                            </p>
                            <div style="font-size: larger; font-weight: bolder;">
                                [${maxTier_i.toFixed(3)},${(maxTier_i-step <= 0 ? -1*(maxTier_i-step) : maxTier_i-step).toFixed(3)})
                            </div>
                            <a style="font-size: 10px;" href="#calculation">Perch&eacute; questi numeri?</a>
                        </div>
                        <div class="right-flexbox">
                            ${charBox}
                        </div>
                    </div>
                    <hr style="border: 0.5px solid lightblue;">
                `);
            });

            $(".pg-pic").click(function() {
                createModal($(this).find("span").text(), "Tutti", n);
            });
        }
    });
}