var characters = [];
var stages = [];
var listPlayer = ["Ale","Leo","Sandro","Siwei"];
var listKills = [];
var listDeaths = [];
var currentPage = 0;
var queriedVideos = [];

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
            listKills = data;
        }            
    });

    $.ajax({
        type: "GET",
        url: "/deaths",
        async: false,
        success: function(data) {
            listDeaths = data;
        }            
    });

    let sortedCharacters = characters.sort((a,b) => {
        if (a.character < b.character) return -1;
        if (a.character > b.character) return 1;
        return 0;
    });

//USE MENU------------------------------------------------------------------------------------------------------------------------------------------
    sortedCharacters.forEach((pg) => {
        //DATALIST FOR USE
        $("#pg-code").append(`
            <option value="${pg.character}">${pg.character}</option>
        `);
        $("#use").append(`
            <div class="pg" name="${pg.code}">
                <div class="pg-left">
                    <img src="pic_pg?pg=${pg.code}&type=selected0-min" height=100 alt="PNG not found">
                    <p style="font-weight: bolder;">${pg.character}</p>
                </div>
                <div class="pg-right">
                    <input type="radio" name="ale" value="${pg.code}">&ensp;Ale<br>
                    <input type="radio" name="leo" value="${pg.code}">&ensp;Leo<br>
                    <input type="radio" name="sandro" value="${pg.code}">&ensp;Sandro<br>
                    <input type="radio" name="siwei" value="${pg.code}">&ensp;Siwei<br>
                </div>
            </div>
        `);
    });

    $("#goto-pg").keypress(function (e) {
        if(e.which == 13) {
            if($(this).val() == "Chiunque") {
                document.getElementById("use").scrollLeft = 0;   
            }
            else {
                let targetCharacter = sortedCharacters.find(_=>_.character == $(this).val());
                if(targetCharacter == undefined) {
                    alert("Personaggio non riconosciuto");
                    return false;
                }
                let pos = sortedCharacters.indexOf(targetCharacter)+1;
                let width = document.getElementById("use").scrollWidth;
                let n = $(".pg").length;
                document.getElementById("use").scrollLeft = width/n*pos;
            }
        }
        $("#goto-pg").text("");
        return true;
    });

//KILLS MENU------------------------------------------------------------------------------------------------------------------------------------------
    //KILLS HOW OPTIONS
    listKills.forEach((item) => {        
        //DATALIST FOR KILL
        $("#kill-code").append(`
            <option value="${item.name}">${item.name}</option>
        `);
        $("#kills").append(`
            <div class="kill">
                <img src="gif?type=kills&how=${item.code}" height=100 alt="PNG not found">
                <div>
                    <input type="radio" name="kills-come" value="${item.name}" style="font-weight: bolder;">&ensp;${item.name}<br>
                </div>
            </div>
        `);
    });

    $("#goto-kill").keypress(function (e) {
        if(e.which == 13) {
            if($(this).val() == "Qualunque") {
                document.getElementById("kills").scrollLeft = 0;   
                document["main-form"]["kills-come"].value = "True";
            }
            else {
                let targetHow = listKills.find(_=>_.name == $(this).val());
                if(targetHow == undefined) {
                    alert("KO+ non riconosciuto");
                    return false;
                }    
                let pos = listKills.indexOf(targetHow)+1;
                let width = document.getElementById("kills").scrollWidth;
                let n = $(".kill").length;
                document.getElementById("kills").scrollLeft = width/n*pos;

                document["main-form"]["kills-come"].value = $(this).val();
            }
        }
        $("#goto-kill").text("");
        return true;
    });

//DEATHS MENU------------------------------------------------------------------------------------------------------------------------------------------
    //DEATHS HOW OPTIONS
    listDeaths.forEach((item) => {
        //DATALIST FOR DEATH
        $("#death-code").append(`
            <option value="${item.name}">${item.name}</option>
        `);
        $("#deaths").append(`
            <div class="death">
                <img src="gif?type=deaths&how=${item.code}" height=100 alt="PNG not found">
                <div>
                    <input type="radio" name="deaths-come" value="${item.name}" style="font-weight: bolder;">&ensp;${item.name}<br>
                </div>
            </div>
        `);
    });
    //DEATHS MAP
    stages.filter(_=>_.value == 1).forEach((item) => {
        $("#death-code").append(`
            <option value="${item.name}">${item.name}</option>
        `);
        $("#deaths").append(`
            <div class="death">
                <img src="${item.url}" height=100 alt="PNG not found">
                <div>
                    <input type="radio" name="deaths-come" value="${item.name}" style="font-weight: bolder;">&ensp;${item.name}<br>
                </div>
            </div>
        `);
    });

    let allDeaths = [...(listDeaths.map(_=>_.name)), ...(stages.filter(_=>_.value == 1).map(_=>_.name))];

    $("#goto-death").keypress(function (e) {
        if(e.which == 13) {
            if($(this).val() == "Qualunque") {
                document.getElementById("deaths").scrollLeft = 0;
                document["main-form"]["deaths-come"].value = "True";
            }
            else {
                let targetHow = allDeaths.find(_=>_ == $(this).val());
                if(targetHow == undefined) {
                    alert("KO+ non riconosciuto");
                    return false;
                }    
                let pos = allDeaths.indexOf(targetHow)+1;
                let width = document.getElementById("deaths").scrollWidth;
                let n = $(".death").length;
                document.getElementById("deaths").scrollLeft = width/n*pos;   

                document["main-form"]["deaths-come"].value = $(this).val();
            }
        }
        $("#goto-death").text("");
        return true;
    });

    /*
    //ON CHANGE: NESSUNO -> CHIUNQUE AND VICEVERSA
    $("input[type=radio][name='deaths-come']").change(function() {
        if($(this).val() != "True")
            $("select[name='deaths-chi']").val("True").change();
        else {
            alert($(this).val());

            $("select[name='deaths-chi']").val("Ale").change();
            alert(document["main-form"]["deaths-chi"].value);
            document["main-form"]["deaths-chi"].value = 'Ale';
        }
        return true;
    });
    $("input[type=radio][name='deaths-come']").change(function() {
        $("select[name='deaths-chi'").val("True");
    });
    */

    /*
    $("select[name='win']").change(function() {
        if($(this).val() != "True")
            $("select[name='win1']").prop('disabled', false);
        else {
            $("select[name='win1']").prop('disabled', true);
            $("select[name='win1']").val("True");
        }
    });
    */

//RESET AND SUBMIT------------------------------------------------------------------------------------------------------------------------------------------
    $('.btn-secondary').click(function() {
        //<div class="loader"></div>
        $("#videos").html("");
        $("#videos-ris").text("");
        $("#videos-navigator").html("");
        return true;
    });

    //DISABLE ENTER SUBMIT
    $(document).on("keypress", 'form', function (e) {
        var code = e.keyCode || e.which;
        if (code == 13) {
            e.preventDefault();
            return false;
        }
    });
    
    $('form[name="main-form"]').submit(function(e) {
        e.preventDefault(); //DISABLE REDIRECT
        let win = $("select[name='win'] option:selected").val();
        let win1 = $("select[name='win1'] option:selected").val();
        if(win == win1 && win != "True") {
            alert("Vincitore-1 e Vincitore-2 non possono essere gli stessi!");
            return;
        }

        let uccide = $("select[name='kills-uccide'] option:selected").val();
        let ucciso = $("select[name='kills-ucciso'] option:selected").val();
        if(uccide == ucciso && uccide != "True") {
            alert("I nomi in KO+ non possono essere gli stessi!");
            return;
        }

        $("#videos").html(`<div class="loader"></div>`);
        $("#videos-ris").text("");
        $("#videos-navigator").html("");

        $.ajax({
            type: 'GET',
            url: '/query_video',
            data: $('form[name="main-form"]').serialize(),
            success: function(data) {
                $("#videos").html("");

                let elemInPage = 3;

                if(data.length == 0) {
                    $("#videos-ris").text("NESSUN RISULTATO TROVATO");
                    return;
                }

                $("#videos-ris").text(`${data.length} RISULTATI TROVATI`);

                queriedVideos = data.sort(orderByName);

                currentPage = 0;
                reloadPage(elemInPage);
                
                $("#videos-navigator").html(`
                    <div style="display: flex; justify-content: center; align-items: center; height: 100%;">
                        <button id="previous" class="btn btn-primary">&lt;</button>
                        <div style="margin: 1%">1/${Math.ceil(queriedVideos.length/elemInPage)}</div>
                        <button id="next" class="btn btn-primary">&gt;</button>
                    </div>
                    <div style="display: flex; justify-content: center;">
                        Premi invio per andare alla pagina:&ensp;<input type="text" maxlength="4" size="1" id="goto">
                    </div>
                    <span id="order-by-Player" style="display: flex; justify-content: center;">
                        <div style="display: flex; justify-content: center; margin: 1%; width: 20%;">
                            <button id="order-by-Title" class="btn btn-primary">ORDINA PER TITOLO</button>
                        </div>
                    </span>
                    <br>
                `);

                $("#previous").click(function() {
                    currentPage -= elemInPage;
                    reloadPage(elemInPage);
                });

                $("#next").click(function() {
                    currentPage += elemInPage;
                    reloadPage(elemInPage);
                });

                $("#goto").keypress(function (e) {
                    if(e.which == 13) {
                        let page = parseInt($(this).val());
                        if(isNaN(page)) {
                            alert("Non è un numero!");
                            return false;
                        }
                        if(page <= 0 || page > Math.ceil(queriedVideos.length/elemInPage)) {
                            alert("Pagina non valida!")
                            return false;
                        }
                        currentPage = (page-1)*elemInPage;
                        reloadPage(elemInPage);
                    }
                    return true;
                });
                
                listPlayer.forEach((player) => {
                    $("#order-by-Player").append(`
                        <div style="display: flex; justify-content: center; margin: 1%; width: 20%;">
                            <button id="order-by-${player}" class="btn btn-primary">ORDINA PER KO+ DI ${player.toUpperCase()}</button>
                        </div>
                    `);
                    $(`#order-by-${player}`).click(function() {
                        queriedVideos = orderByPlayer(queriedVideos,player);
                        reloadPage(elemInPage);
                    });
                });
                
                $("#order-by-Title").click(function() {
                    queriedVideos = queriedVideos.sort(orderByName);
                    reloadPage(elemInPage);
                });

                disableButtons(elemInPage);
            }
        });
    });
});

function orderByName(a,b) {
    let a_ = '' + a.tipo+("0000000"+a.n).substring(("0000000"+a.n).length - 4, ("0000000"+a.n).length);
    let b_ = b.tipo+("0000000"+b.n).substring(("0000000"+b.n).length - 4, ("0000000"+b.n).length);
    return ('' + a_).localeCompare(b_);
}

function orderByPlayer(list,player) {
    return list.sort((a,b) => {
        let a_ = a.killRow.filter(_=>_.uccide == player).length;
        let b_ = b.killRow.filter(_=>_.uccide == player).length
        return b_-a_;    
    });
}

function disableButtons(elemInPage) {
    if(currentPage <= 0)
        $("#previous").prop("disabled",true);
    else
        $("#previous").prop("disabled",false);

    if(currentPage+elemInPage >= queriedVideos.length)
        $("#next").prop("disabled",true);
    else
        $("#next").prop("disabled",false);
}

function reloadPage(elemInPage) {
    disableButtons(elemInPage);
    
    $("#videos").html("");
    queriedVideos.slice(currentPage, currentPage+elemInPage).forEach((item) => {
        let winner = item.killRow[0].win;
        if(item.killRow[0].win1 != "NULL") winner += " & "+item.killRow[0].win1;

        let finalCount = `
            <b>
            Ale: ${item.killRow.filter(_=>_.uccide == "Ale").length}
            Leo: ${item.killRow.filter(_=>_.uccide == "Leo").length}
            Sandro: ${item.killRow.filter(_=>_.uccide == "Sandro").length}
            Siwei: ${item.killRow.filter(_=>_.uccide == "Siwei").length}
            </b>
        `;

        let killsPar = "";
        item.killRow.forEach((elem) => {
            killsPar += `
                <div>
                    KO+ di <b>${elem.uccide}</b> contro <b>${elem.ucciso}</b> con <b>${elem.come}</b>
                </div>
            `;
        });

        let deathsPar = "";
        item.deathRow.forEach((elem) => {
            deathsPar += `
                <div>
                    KO- di <b>${elem.chi}</b> a causa di <b>${elem.come}</b>
                </div>
            `;
        });

        $("#videos").append(`
            <div class="video">
                <div class="video-top">
                    <iframe src="https://www.youtube-nocookie.com/embed/${item.id}" frameborder="0" allow="accelerometer; encrypted-media; gyroscope" allowfullscreen>
                    </iframe>
                </div>
                <div class="video-bottom">
                    <b>Ale</b>: ${item.killRow[0].ale}
                    <b>Leo</b>: ${item.killRow[0].leo}
                    <b>Sandro</b>: ${item.killRow[0].sandro}
                    <b>Siwei</b>: ${item.killRow[0].siwei}
                    <hr style="	width: 100%; border: 0.5px solid black;">
                    <div>Vincitore/i: <b>${winner}</b></div>
                    <hr style="	width: 100%; border: 0.5px solid black;">
                    <div>${finalCount}</div>
                    <hr style="	width: 100%; border: 0.5px solid black;">
                    ${killsPar}
                    <hr style="	width: 100%; border: 0.5px solid black;">
                    ${deathsPar}
                </div>
            </div>
        `);
    });

    $("#videos-navigator div div").text(`
        ${Math.ceil((currentPage+1)/elemInPage)}/${Math.ceil(queriedVideos.length/elemInPage)}
    `);
}
