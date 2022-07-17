var characters = [];
var stages = [];
var mod = 5;

$(document).ready(function() {
    hideAll();

    $("h2").click(function() {
        let label = $(this).text();

        let x = (section) => {
            if($(section).css("display") === "none") {
                hideAll();
                $(section).show();
            }
            else hideAll();
        }

        switch(label) {
            case "KO+": {
                x("#kills");
                $("#kills").html(`
                    <div class="my-row">
                        <div class="my-col"><img src="gif?type=kills&how=sides" alt="ricarica la pagina!"><p>Smash Laterale</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=ups" alt="ricarica la pagina!"><p>Smash in Su</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=downs" alt="ricarica la pagina!"><p>Smash in Giù</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=sf" alt="ricarica la pagina!"><p>Smash Finale</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=shield" alt="ricarica la pagina!"><p>Scudo Rotto</p></div>
                    </div><hr/>

                    <div class="my-row">
                        <div class="my-col"><img src="gif?type=kills&how=fair" alt="ricarica la pagina!"><p>Aereo Frontale</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=bair" alt="ricarica la pagina!"><p>Aereo Posteriore</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=uair" alt="ricarica la pagina!"><p>Aereo in Su</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=dair" alt="ricarica la pagina!"><p>Aereo in Giù</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=foot" alt="ricarica la pagina!"><p>Footstool</p></div>
                    </div><hr/>
                    
                    <div class="my-row">
                        <div class="my-col"><img src="gif?type=kills&how=nair" alt="ricarica la pagina!"><p>Aereo Standard</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=dash" alt="ricarica la pagina!"><p>In Corsa</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=met" alt="ricarica la pagina!"><p>Meteora</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=grab" alt="ricarica la pagina!"><p>Grab</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=fa" alt="ricarica la pagina!"><p>Fuoco Amico</p></div>
                    </div><hr/>

                    <div class="my-row">
                        <div class="my-col"><img src="gif?type=kills&how=neutralb" alt="ricarica la pagina!"><p>Speciale Standard</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=sideb" alt="ricarica la pagina!"><p>Speciale Laterale</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=upb" alt="ricarica la pagina!"><p>Speciale in Su</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=downb" alt="ricarica la pagina!"><p>Speciale in Giù</p></div>
                        <div class="my-col"><img src="gif?type=kills&how=o" alt="ricarica la pagina!"><p>Altro</p></div>
                    </div>
                `);
                break;
            }
            case "KO+: ATTACCHI PECULIARI": {
                x("#peculiars");
                $.ajax({
                    type: "GET",
                    url: "/characters",
                    async: false,
                    success: function(data) {
                        characters = data;
                        let i = 0;
                        let toAppend = "";
                        characters.filter(_=>_.peculiar != undefined).sort((a,b) => {
                            if (a.character < b.character) return -1;
                            if (a.character > b.character) return 1;
                            return 0;
                        }).forEach((item) => {
                            if(i%mod == 0) {
                                toAppend += `<div class="my-row">`;
                            }
                            toAppend += `
                                <div class="my-col">
                                    <img src="peculiar?pg=${item.code}" alt="ricarica la pagina!">${item.character}: ${item.peculiar}
                                </div>
                            `;
                            i++;
                            if(i%mod == 0) {
                                toAppend += `</div><hr>`;
                            }
                        });
                        $("#peculiars").html(toAppend);
                    }
                });
                break;
            }
            case "KO-": {
                x("#deaths");
                $("#deaths").html(`
                    <div class="my-row">
                        <div class="my-col"><img src="gif?type=deaths&how=sd" alt="ricarica la pagina!"><p>Autodistruzione</p></div>
                        <div class="my-col"><img src="gif?type=deaths&how=mr" alt="ricarica la pagina!"><p>Mancato Recupero</p></div>
                        <div class="my-col"><img src="gif?type=deaths&how=fa" alt="ricarica la pagina!"><p>Fuoco Amico</p></div>
                        <div class="my-col"><img src="gif?type=deaths&how=shield" alt="ricarica la pagina!"><p>Scudo Rotto</p></div>
                        <div class="my-col"><img src="gif?type=deaths&how=BUG" alt="ricarica la pagina!"><p>BUG</p></div>
                    </div>                
                `);
                break;
            }
            case "KO-: MAPPE": {
                x("#maps");
                $.ajax({
                    type: "GET",
                    url: "/stage",
                    async: false,
                    success: function(data) {
                        stages = data;
                        let i = 0;
                        let toAppend = "";
                        stages.filter(_=>_.value == 1).forEach((item) => {
                            if(i%mod == 0) {
                                toAppend += `<div class="my-row">`;
                            }
                            toAppend += `
                                <div class="my-col"><img src="${item.url}" alt="ricarica la pagina!">${item.name}</div>
                            `;
                            i++;
                            if(i%mod == 0) {
                                toAppend += `</div><hr>`;
                            }
                        });
                        $("#maps").html(toAppend);
                    }
                });
                break;
            }
            default:
                console.log("Noooo");
                break;
        }
    });
});

function hideAll() {
    $("#kills").hide();
    $("#peculiars").hide();
    $("#deaths").hide();
    $("#maps").hide();
}