var characters = [];
var stages = [];
var listPlayer = ["Ale","Leo","Sandro","Siwei"];
var currentPlayer = "Ale";
var currentFilter = "usage";
var listKills = [];
var listDeaths = [];

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
        url: "/kills",
        async: false,
        success: function(data) {
            listKills = data.map(_=>_.name);
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

    reloadTable(`/query_player?player=${currentPlayer}&filter=${currentFilter}`,false);

//TOP MENU------------------------------------------------------------------------------------------------------------------------------------------
    listPlayer.forEach((name) => {
        $(`#nav-item-${name}`).click(function() {
            currentPlayer = name;
            $(this).addClass("active");
            listPlayer.forEach((nameO)=> {
                if(nameO != name) $(`#nav-item-${nameO}`).removeClass("active");
                $("#nav-item-map").removeClass("active");
            });
            if(currentFilter == "deaths&come=Mappa")
                reloadTableMap();
            else if(currentFilter == "kills&come=Peculiare")
                reloadTable(`/query_player?player=${name}&filter=${currentFilter}`,true);
            else
                reloadTable(`/query_player?player=${name}&filter=${currentFilter}`,false);
        });
    });

    $("#nav-item-map").click(function() {
        currentPlayer = "Mappa";
        $(".flexbox-container-column-center").html(`<div class="loader"></div>`);
        $(this).addClass("active");
        listPlayer.forEach((name)=> {
            $(`#nav-item-${name}`).removeClass("active");
        });
        $.ajax({
            type: "GET",
            url: "/query_map_kills",
            success: function(data) {
                $(".flexbox-container-column-center").html("");
                let color = {
                    "Ale": "background-image: linear-gradient(red, red, black)",
                    "Leo": "background-image: linear-gradient(rgb(42, 88, 187), rgb(42, 88, 187), black)",
                    "Sandro": "background-image: linear-gradient(yellow, yellow, black)",
                    "Siwei": "background-image: linear-gradient(green, green, black)"
                }
                $(".flexbox-container-column-center").append(`
                    <div style = 'display: flex; align-items: center; justify-content: flex-start; position: relative; margin-left: auto; margin-right: auto; width: 100%;'>
                        <div class="bar" style="width: 20px; height: 20px; ${color["Ale"]}; "></div>
                        <div>Ale</div>
                        &ensp;
                        <div class="bar" style="width: 20px; height: 20px; ${color["Leo"]}; "></div>
                        <div>Leo</div>
                        &ensp;
                        <div class="bar" style="width: 20px; height: 20px; ${color["Sandro"]}; "></div>
                        <div>Sandro</div>
                        &ensp;
                        <div class="bar" style="width: 20px; height: 20px; ${color["Siwei"]}; "></div>
                        <div>Siwei</div>
                    </div>
                `); 
                data.forEach((item) => {
                    let max = Math.max(item["Ale"],item["Leo"],item["Siwei"],item["Sandro"]);
                    $(".flexbox-container-column-center").append(`
                        <div style="display: flex; width: 100%; margin: 1%; align-items: center;">
                            <div class="pg-pic" style="background-image: url(${stages.find(_=>_.name == item.map).url}); width: 25%;">
                                <p style="position: absolute; top: 100%;">${item.map}</p>
                            </div>
                            <div style="display: flex; flex-direction: column; width: 100%;">
                                <div style="display: flex; width: 100%; align-items: center;">
                                    <div class="bar" style="width: ${95*item["Ale"]/max}%; height: 20px; ${color["Ale"]}; "></div>
                                    <div>${item["Ale"]}</div>
                                </div>
                                <div style="display: flex; width: 100%; align-items: center;">
                                    <div class="bar" style="width: ${95*item["Leo"]/max}%; height: 20px; ${color["Leo"]};"></div>
                                    <div>${item["Leo"]}</div>
                                </div>
                                <div style="display: flex; width: 100%; align-items: center;">
                                    <div class="bar" style="width: ${95*item["Sandro"]/max}%; height: 20px; ${color["Sandro"]}; "></div>
                                    <div>${item["Sandro"]}</div>
                                </div>
                                <div style="display: flex; width: 100%; align-items: center;">
                                    <div class="bar" style="width: ${95*item["Siwei"]/max}%; height: 20px; ${color["Siwei"]};"></div>
                                    <div>${item["Siwei"]}</div>
                                </div>
                            </div>
                        </div>
                    `);                 
                });
            }
        });
    });

//SIDE MENU------------------------------------------------------------------------------------------------------------------------------------------
    listKills.forEach((come) => {
        $(".menu-flex").append(`
            <div class="side-item">
                KO+: ${come}
                <p hidden>kills&come=${come}</p>
            </div>
        `);
    });
    listDeaths.forEach((come) => {
        $(".menu-flex").append(`
            <div class="side-item">
                KO-: ${come}
                <p hidden>deaths&come=${come}</p>
            </div>
        `);
    });

    $(".side-item").click(function() {
        let allSideItems = $(".side-item");
        for(let i = 0; i < allSideItems.length; i++) {
            allSideItems[i].classList.remove("side-item-active");
        }
        $(this).addClass("side-item-active");
        let filter = $(this).find("p").text();
        currentFilter = filter;
        if(filter == "deaths&come=Mappa")
            reloadTableMap();
        else if(filter == "kills&come=Peculiare")
            reloadTable(`/query_player?player=${currentPlayer}&filter=${filter}`,true);
        else
            reloadTable(`/query_player?player=${currentPlayer}&filter=${filter}`,false);
    });
});

function noResultTable() {
    $(".flexbox-container-column-center").html("<h1 style = 'display: flex; align-items: center; justify-content: center; position: relative; margin-left: auto; margin-right: auto;'>NESSUN RISULTATO TROVATO!</h1>");
    return true;
}

function reloadTable(url, isPeculiar) {
    $(".flexbox-container-column-center").html(`<div class="loader"></div>`);
    if(currentPlayer == "Mappa") return noResultTable();
    $.ajax({
        type: "GET",
        url: url,
        success: function(data) {
            if(data.length == 0) return noResultTable();
            $(".flexbox-container-column-center").html("");
            $(".flexbox-container-column-center").append(`
                <h1 style='display: flex; align-items: center; justify-content: center; position: relative; margin-left: auto; margin-right: auto; width: 100%;'>
                    Clicca su un personaggio per i dettagli!
                </h1>
            `); 
            let max = data[0].n;
            data.forEach((item) => {
                let peculiarText = isPeculiar ? characters.find(_=>_.character == item.pg).peculiar: item.pg;
                $(".flexbox-container-column-center").append(`
                    <div style="display: flex; width: 98%; margin: 1%; align-items: center;">
                        <div class="pg-pic" style="background-image: url(pic_pg?pg=${characters.find(_=>_.character == item.pg).code}&type=avatar0);" data-toggle="modal" data-target="#pg-modal">
                            <span hidden>${item.pg}</span>
                            <p style="position: absolute; top: 100%;">${peculiarText}</p>
                        </div>                 
                        <div class="bar" style="width: ${85*item.n/max}%;"></div>
                        <div>${item.n}</div>
                    </div>
                `); 
            });
            $(".pg-pic").click(function() {
                createModal($(this).find("span").text(), currentPlayer);
            });
        }
    });
}

function reloadTableMap() {
    $(".flexbox-container-column-center").html(`<div class="loader"></div>`);
    if(currentPlayer == "Mappa") return noResultTable();
    $.ajax({
        type: "GET",
        url: "/query_map_kills",
        success: function(data) {
            $(".flexbox-container-column-center").html("");
            let sortData = data.sort((a,b)=>b[currentPlayer]-a[currentPlayer]);
            let max = sortData[0][currentPlayer];
            sortData.forEach((item) => {
                if(item[currentPlayer] == 0) return;
                $(".flexbox-container-column-center").append(`
                    <div style="display: flex; width: 98%; margin: 1%; align-items: center;">
                        <div class="pg-pic" style="background-image: url(${stages.find(_=>_.name == item.map).url});">
                            <p style="position: absolute; top: 100%;">${item.map}</p>
                        </div>                 
                        <div class="bar" style="width: ${75*item[currentPlayer]/max}%;"></div>
                        <div>${item[currentPlayer]}</div>
                    </div>
                `);                
            });
        }
    });
}