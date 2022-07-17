var characters = [];
var overall = {};



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
        url: "/query_overall",
        async: false,
        success: function(data) {
            overall = data;
            $(".title").html(`
                <h1>
                    <b>${overall["Tot"]["Single"]+overall["Tot"]["Team"]}</b> partite
                </h1>
                <h2>
                    <b>${overall["Tot"]["Single"]}</b> partite Single e <b>${overall["Tot"]["Team"]}</b> partite Team
                </h2>
            `);
        }
    });

    ["Ale","Leo","Sandro","Siwei"].forEach((player) => {
        $("#main").append(`
            <div id="${player}"></div>
        `);
        $.ajax({
            type: "GET",
            url: `/query_player?player=${player}&filter=usage`,
            success: function(data) {
                let i = 0;
                $(`#${player}`).append(`
                    <div><h2>${player}</h2></div>
                `);
                data.slice(0,4).forEach((pg) => {
                    if(i % 2 == 0) {
                        $(`#${player}`).append(`
                            <svg viewbox="0 0 10 6.7">
                                <defs>
                                    <clipPath id="clip-right">
                                        <polygon points="10 2, 10 4.7, 0 6.7, 0 0" />
                                    </clipPath>
                                </defs>
                                <image xlink:href="pic_pg?pg=${characters.find(_=>_.character == pg.pg).code}&type=avatar0" x="0" y="0" height="6.7" width="10" clip-path="url(#clip-right)"/>
                            </svg>
                        `);
                    }
                    else {
                        $(`#${player}`).append(`
                            <svg viewbox="0 0 10 6.7">
                                <defs>
                                    <clipPath id="clip-left">
                                        <polygon points="10 0, 10 6.7, 0 4.7, 0 2" />
                                    </clipPath>
                                </defs>
                                <image xlink:href="pic_pg?pg=${characters.find(_=>_.character == pg.pg).code}&type=avatar0" x="0" y="0" height="6.7" width="10" clip-path="url(#clip-left)"/>
                            </svg>
                        `);
                    }
                    i += 1;

                });

                $(`#${player}`).append(`
                    <br>
                    <div>Vittorie Totali: <span style="color: yellow">${overall[player].winsS+overall[player].winsT}</span></div>
                    <div>Vittorie Single: <span style="color: yellow">${overall[player].winsS}</div></span>
                    <div>Vittorie Team: <span style="color: yellow">${overall[player].winsT}</div></span>
                    <div>KO+: <span style="color: yellow">${overall[player].kills}</div></span>
                `);
            }
        });
    });
});