
require('dotenv').config();
const express = require('express');  
const http = require('http');
const cors = require('cors');
const { Sequelize } =  require("sequelize");
const db = new Sequelize(process.env.DATABASE_URL, {
	logging: false,
	timestamps: false,
});
const listKills = require("./constants/listKills.json");
const listDeaths = require("./constants/listDeaths.json");
const stage = require("./constants/stage.json");
const characters = require("./constants/characters.json");

const app = express(); // Express configuration
app.use(cors()); //ajax client al server se http
const port = process.env.PORT || 3000;

async function InitDatabaseConnection() {
	try {
		await db.authenticate()
		console.log("Connection has been established successfully.")
	} catch (error) {
		console.error("Unable to connect to the database: ", error)
	}
	try {
		await db.sync({ force: false })
	} catch (error) {
		console.error("Failed to initialize models: ", error)
	}
}

//FILE HTML------------------------------------------------------------------------------------------------------------------------------------------------------------------
async function initServer() {
    await InitDatabaseConnection()
    let [smash] = await db.query("select tipo, n, ale, leo, sandro, siwei, win, coalesce(win1, 'NULL') as win1, url from smash")
    let [kills] = await db.query("select tipo, n, uccide, ucciso, come, ale, leo, sandro, siwei, win, coalesce(win1, 'NULL') as win1 from kills natural right join smash")
    let [deaths] = await db.query("select tipo, n, chi, come, ale, leo, sandro, siwei, win, coalesce(win1, 'NULL') as win1 from deaths natural right join smash")
    let playlist = {
        entries: smash.map(_=>{
            return {
                "title":_.tipo+"-"+_.n,
                "url":"https://www.youtube.com/watch?v="+_.url,
                "id":_.url
            } 
        })
    }
    let listHL = await retrieveHL()

    app.get('/update_db', async (req,res) => {
        [smash] = await db.query("select tipo, n, ale, leo, sandro, siwei, win, coalesce(win1, 'NULL') as win1, url from smash");
        [kills] = await db.query("select tipo, n, uccide, ucciso, come, ale, leo, sandro, siwei, win, coalesce(win1, 'NULL') as win1 from kills natural right join smash");
        [deaths] = await db.query("select tipo, n, chi, come, ale, leo, sandro, siwei, win, coalesce(win1, 'NULL') as win1 from deaths natural right join smash");
        playlist = {
            entries: smash.map(_=>{
                return {
                    "title":_.tipo+"-"+_.n,
                    "url":"https://www.youtube.com/watch?v="+_.url,
                    "id":_.url
                } 
            })
        }
        listHL = await retrieveHL()
        return res.json(smash);
    })

    app.get('/', function(req,res) {
        res.sendFile("home/index.html",{root:__dirname});
    });

    app.get('/stats', function(req,res) {
        res.sendFile("stats/index.html",{root:__dirname});
    });

    app.get('/tier_list', function(req,res) {
        res.sendFile("tier_list/index.html",{root:__dirname});
    });

    app.get('/search', function(req,res) {
        res.sendFile("search/index.html",{root:__dirname});
    });

    app.get('/legenda', function(req,res) {
        res.sendFile("legenda/index.html",{root:__dirname});
    });

    app.get('/style', function(req, res) {
        if(req.query.page != undefined) res.sendFile(`${req.query.page}/style.css`,{root:__dirname});
        else res.send("Undefined page");
    });

    app.get('/script', function(req, res) {
        if(req.query.page != undefined) res.sendFile(`${req.query.page}/script.js`,{root:__dirname});
        else res.send("Undefined page");
    });

    //CONST ARRAY------------------------------------------------------------------------------------------------------------------------------------------------------------------

    app.get('/characters', function(req,res) {
        res.send(characters);
    });

    app.get('/kills', function(req,res) {
        res.send(listKills);
    });

    app.get('/deaths', function(req,res) {
        res.send(listDeaths);
    });

    app.get('/highlights', function(req,res) {
        res.send(listHL);
    });

    app.get('/playlist', function(req,res) {
        return res.json(playlist)
    });

    app.get('/stage', function(req,res) {
        return res.json(stage)
    });

    //FILE PNG E GIF------------------------------------------------------------------------------------------------------------------------------------------------------------------

    app.get('/pic_pg', function(req,res) { //http://localhost:3000/pic_pg?pg=baie&type=avatar0
        if(req.query.pg == undefined || req.query.type == undefined) {
            res.send("Pg or type undefined");
            return;
        }
        let pg = req.query.pg;
        if(characters.find(_=>_.code == pg) == undefined) {
            res.send("Character unrecognized");
            return;
        }
        let type = req.query.type;
        if(type != "avatar0" && type != "full0-min" 
            && type != "selected0-min" && type != "stock0") {
            res.send("Type unrecognized");
            return;
        }
        if(pg == "r.b.") pg = "r.b";
        res.sendFile(`/img/characters/${pg}/${type}.png`,{root:__dirname});
    });

    app.get('/logo', function(req,res) {
        res.sendFile(`/img/download.png`,{root:__dirname});
    });

    app.get('/question', function(req,res) {
        res.sendFile(`/img/question.png`,{root:__dirname});
    });

    app.get('/gif', function(req,res) {
        if(req.query.type == undefined || req.query.how == undefined) {
            res.send("Undefined type or how");
            return;       
        }
        /*
        if(req.query.type == "deaths") {
            let dUrl = listDeaths.find(_=>_.code == req.query.how).url;
            if(dUrl != undefined) {
                request({
                    url: dUrl,
                    method: "GET",
                    encoding: null
                }, function(err, resp, body) {
                    if (!err && resp.statusCode === 200){
                        res.set("Content-Type", "image/gif");
                        res.send(resp.body);
                    }    
                });
            }
            else res.sendFile(`/img/${req.query.type}/${req.query.how}.gif`,{root:__dirname});
        }
        else {
            res.sendFile(`/img/${req.query.type}/${req.query.how}.gif`,{root:__dirname});
        }
        */
        res.sendFile(`/img/${req.query.type}/${req.query.how}.gif`,{root:__dirname});
    });

    app.get('/peculiar', function(req,res) {
        if(req.query.pg == undefined) {
            res.send("Undefined pg");
            return;
        }
        let pg = req.query.pg;
        if(characters.find(_=>_.code == pg) == undefined) {
            res.send("Character unrecognized");
            return;
        }
        if(pg == "r.b.") pg = "r.b";
        res.sendFile(`/img/peculiar/${pg}.gif`,{root:__dirname});
    });

    //CRITICAL QUERIES------------------------------------------------------------------------------------------------------------------------------------------------------------------

    app.get('/query_overall', function(req,res) { //stats.html
        let obj = {
            "Ale": {
                "winsS": smash.filter(_=>_.win == "Ale" && _.win1 == "NULL").length,
                "winsT": smash.filter(_=>_.win1 != "NULL" && (_.win == "Ale" || _.win1 == "Ale")).length,
                "kills": kills.filter(_=>_.uccide == "Ale").length
            },
            "Leo": {
                "winsS": smash.filter(_=>_.win == "Leo" && _.win1 == "NULL").length,
                "winsT": smash.filter(_=>_.win1 != "NULL" && (_.win == "Leo" || _.win1 == "Leo")).length,
                "kills": kills.filter(_=>_.uccide == "Leo").length
            },
            "Sandro": {
                "winsS": smash.filter(_=>_.win == "Sandro" && _.win1 == "NULL").length,
                "winsT": smash.filter(_=>_.win1 != "NULL" && (_.win == "Sandro" || _.win1 == "Sandro")).length,
                "kills": kills.filter(_=>_.uccide == "Sandro").length
            },
            "Siwei": {
                "winsS": smash.filter(_=>_.win == "Siwei" && _.win1 == "NULL").length,
                "winsT": smash.filter(_=>_.win1 != "NULL" && (_.win == "Siwei" || _.win1 == "Siwei")).length,
                "kills": kills.filter(_=>_.uccide == "Siwei").length
            },
            "Tot": {
                "Single": smash.filter(_=>_.win1 == "NULL").length,
                "Team": smash.filter(_=>_.win1 != "NULL").length
            }
        }
        res.send(obj);
    });

    app.get('/query_map_kills', function(req,res) { //map.html
        let obj = [];
        deaths.forEach((item) => {
            if(item.come == "Autodistruzione" || item.come == "Fuoco Amico" ||
                item.come == "BUG" || item.come == "Mancato Recupero" || item.come == "Scudo Rotto")
                return;
            let map = item.come;
            if(obj.find(_=>_.map == map) == undefined) {
                obj.push({
                    "map": map,
                    "Ale": item.chi == "Ale" ? 1:0,
                    "Leo": item.chi == "Leo" ? 1:0,
                    "Sandro": item.chi == "Sandro" ? 1:0,
                    "Siwei": item.chi == "Siwei" ? 1:0
                });
            }
            else {
                obj.find(_=>_.map == map)[item.chi] += 1;            
            }
        });
        obj = obj.sort((a,b) => {
            return (b["Ale"]+b["Leo"]+b["Sandro"]+b["Siwei"])-(a["Ale"]+a["Leo"]+a["Sandro"]+a["Siwei"]);
        });
        res.send(obj);
    });

    app.get('/query_player', function(req,res) { //http://localhost:3000/query_player?player=Ale&filter=usage
        if(req.query.player == undefined || req.query.filter == undefined) {
            res.send("Player or filter undefined");
            return;
        }
        let player = req.query.player;
        if(player != "Ale" && player != "Leo" && player != "Sandro" && player != "Siwei") {
            res.send("Player unrecognized");
            return;
        }
        let obj = [];
        switch(req.query.filter) {
            case "usage": {
                obj = createObj(smash,player);
                break;
            }
            case "wins": {
                obj = createObj(smash.filter(_=>_.win == player || _.win1 == player),player);
                break;
            }
            case "usageS": {
                obj = createObj(smash.filter(_=>_.win1 == "NULL"), player);
                break;
            }
            case "winsS": {
                obj = createObj(smash.filter(_=>_.win1 == "NULL").filter(_=>_.win == player), player);
                break;
            }
            case "usageT": {
                obj = createObj(smash.filter(_=>_.win1 != "NULL"), player);
                break;
            }
            case "winsT": {
                obj = createObj(smash.filter(_=>_.win1 != "NULL").filter(_=>_.win == player || _.win1 == player), player);
                break;
            }
            case "kills": { //http://localhost:3000/query_player?player=Ale&filter=kills&come=Smash%20in%20Su
                if(req.query.come == undefined) {
                    obj = createObj(kills.filter(_=>_.uccide == player),player);
                    break;
                }
                obj = createObj(kills.filter(_=>_.uccide == player && _.come == req.query.come),player);
                break;
            }
            case "deaths": { //http://localhost:3000/query_player?player=Ale&filter=deaths&come=Norfair
                if(req.query.come == undefined) {
                    deaths.filter(_=>_.chi == player).forEach((item) => {
                        let come = item.come;
                        if(obj.find(_=>_.come == come) == undefined) {
                            obj.push({
                                "come": come,
                                "n": 1
                            });
                        }
                        else {
                            obj.find(_=>_.come == come).n += 1;
                        }
                    });
                    //AGGIUNGO SCUDO ROTTO
                    let n = kills.filter(_=>_.come == "Scudo Rotto" && _.ucciso == player).length;
                    if(n != 0)
                        obj.push({
                            "come": "Scudo Rotto",
                            "n": n
                        });
                    obj = obj.sort((a,b) => b.n-a.n);
                    break;
                }
                obj = createObj(deaths.filter(_=>_.chi == player && _.come == req.query.come),player);
                break;
            }
            default: {
                obj = "Unrecognized filter"
                break;
            }
        }
        res.send(obj);
    });

    app.get('/query_tier_list', function(req,res) {
        //OVERALL TIER LIST-------------------------------------
        if(req.query.player == undefined) {
            let obj = [];
            smash.filter(hlFilter(parseInt(req.query.n))).forEach((item) => {
            //smash.forEach((item) => {
                ["Ale","Leo","Sandro","Siwei"].forEach((player) => {
                    let pg = item[player.toString().toLowerCase()];
                    if(obj.find(_=>_.pg == pg) == undefined) {
                        obj.push({
                            "pg": pg,
                            "n": 1
                        });
                    }
                    else {
                        obj.find(_=>_.pg == pg).n += 1;
                    }
                });
            });
            let tmp = [];
            kills.filter(hlFilter(parseInt(req.query.n))).forEach((item) => {
            //kills.forEach((item) => {
                ["Ale","Leo","Sandro","Siwei"].forEach((player) => {
                    let pg = item[player.toString().toLowerCase()];
                    if(player != item.uccide)
                        return;
                    if(tmp.find(_=>_.pg == pg) == undefined) {
                        tmp.push({
                            "pg": pg,
                            "n": 1
                        });
                    }
                    else {
                        tmp.find(_=>_.pg == pg).n += 1;
                    }
                });
            });
            obj = obj.map((item) => {
                let tmpItem = tmp.find(_=>_.pg == item.pg);
                let ratio = 0;
                let kills = 0;
                if(tmpItem != undefined) {
                    kills = tmpItem.n;
                    ratio = kills/item.n;
                }
                let newItem = {
                    "pg": item.pg,
                    "use": item.n,
                    "kills": kills,
                    "ratio": ratio
                }
                return newItem;
            });
            obj = obj.sort((a,b) => b.ratio-a.ratio);
            res.send(obj);
            return;
        }
        //TIER LIST BY PLAYER-----------------------------------
        let player = req.query.player;
        if(player != "Ale" && player != "Leo" && player != "Sandro" && player != "Siwei") {
            res.send("Player unrecognized");
            return;
        }
        let obj = createObj(smash,player);
        let tmp = createObj(kills.filter(_=>_.uccide == player),player);
        obj = obj.map((item) => {
            let tmpItem = tmp.find(_=>_.pg == item.pg);
            let ratio = 0;
            let kills = 0;
            if(tmpItem != undefined) {
                kills = tmpItem.n;
                ratio = kills/item.n;
            }
            let newItem = {
                "pg": item.pg,
                "use": item.n,
                "kills": kills,
                "ratio": ratio
            }
            return newItem;
        });
        obj = obj.sort((a,b) => b.ratio-a.ratio);
        res.send(obj);
    });

    app.get('/query_pg', function(req, res) {
        if(req.query.player == undefined || req.query.pg == undefined) {
            res.send("Player or pg undefined");
            return;
        }
        let player = req.query.player;
        if(player != "Ale" && player != "Leo" && player != "Sandro" && player != "Siwei") {
            res.send("Player unrecognized");
            return;
        }
        let pg = req.query.pg;
        if(characters.find(_=>_.code == pg) == undefined) {
            res.send("Character unrecognized");
            return;
        }

        let smashFiltered = smash.filter(hlFilter(parseInt(req.query.n)));
        let killsFiltered = kills.filter(hlFilter(parseInt(req.query.n)));
        let deathsFiltered = deaths.filter(hlFilter(parseInt(req.query.n)));

        let name = characters.find(_=>_.code == pg).character;
        let usageS = smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 == "NULL").length;
        let usageT = smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 != "NULL").length;
        let usage = usageS + usageT;
        let winsS = smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 == "NULL" && _.win == player).length;
        let winsT = smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 != "NULL" && (_.win1 == player || _.win == player)).length;
        let wins = winsS + winsT;
        let kills_par = [];
        killsFiltered.filter(_=>_.uccide == player && _[player.toString().toLowerCase()] == name).forEach((item) => {
            let target = kills_par.find(_=>_.come == item.come); 
            if(target == undefined) {
                kills_par.push({
                    "come": item.come,
                    "n": 1,
                    "order": orderHow(item.come)
                });
            }
            else {
                target.n += 1;
            }
        });
        kills_par = kills_par.sort((a,b) => b.n-a.n);
        
        let deaths_par = [];
        deathsFiltered.filter(_=>_.chi == player && _[player.toString().toLowerCase()] == name).forEach((item) => {
            let come = item.come;
            let target = deaths_par.find(_=>_.come == come); 
            if(target == undefined) {
                deaths_par.push({
                    "come": come,
                    "n": 1
                });
            }
            else {
                target.n += 1;
            }
        });
        deaths_par = deaths_par.sort((a,b) => b.n-a.n);
        let obj = {
            "pg": name,
            "usage": usage,
            "usageS": usageS,
            "usageT": usageT,
            "wins": wins,
            "winsS": winsS,
            "winsT": winsT,
            "kills": kills_par,
            "deaths": deaths_par 
        }
        res.send(obj);
    });

    app.get('/query_pg_tot', function(req,res) {
        if(req.query.pg == undefined) {
            res.send("Pg undefined");
            return;
        }
        let pg = req.query.pg;
        if(characters.find(_=>_.code == pg) == undefined) {
            res.send("Character unrecognized");
            return;
        }
        let name = characters.find(_=>_.code == pg).character;
        let usageS = 0;
        let usageT = 0;
        let usage = 0;
        let winsS = 0;
        let winsT = 0;
        let wins = 0;
        let kills_par = [];
        let deaths_par = [];

        let smashFiltered = smash.filter(hlFilter(parseInt(req.query.n)));
        let killsFiltered = kills.filter(hlFilter(parseInt(req.query.n)));
        let deathsFiltered = deaths.filter(hlFilter(parseInt(req.query.n)));

        ["Ale","Leo","Sandro","Siwei"].forEach((player) => {
            usageS += smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 == "NULL").length;
            usageT += smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 != "NULL").length;
            usage = (usageS + usageT);
            winsS += smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 == "NULL" && _.win == player).length;
            winsT += smashFiltered.filter(_=>_[player.toString().toLowerCase()] == name && _.win1 != "NULL" && (_.win1 == player || _.win == player)).length;
            wins = (winsS + winsT);
            killsFiltered.filter(_=>_.uccide == player && _[player.toString().toLowerCase()] == name).forEach((item) => {
                //let come = item.come;
                //come = come == "Peculiare" ? characters.find(_=>_.code == pg).peculiar : come;
                let target = kills_par.find(_=>_.come == item.come); 
                if(target == undefined) {
                    kills_par.push({
                        "come": item.come,
                        "n": 1,
                        "order": orderHow(item.come)
                    });
                }
                else {
                    target.n += 1;
                }
            });
            
            deathsFiltered.filter(_=>_.chi == player && _[player.toString().toLowerCase()] == name).forEach((item) => {
                let come = item.come;
                let target = deaths_par.find(_=>_.come == come); 
                if(target == undefined) {
                    deaths_par.push({
                        "come": come,
                        "n": 1
                    });
                }
                else {
                    target.n += 1;
                }
            });
        });
        deaths_par = deaths_par.sort((a,b) => b.n-a.n);
        kills_par = kills_par.sort((a,b) => b.n-a.n);
        let obj = {
            "pg": name,
            "usage": usage,
            "usageS": usageS,
            "usageT": usageT,
            "wins": wins,
            "winsS": winsS,
            "winsT": winsT,
            "kills": kills_par,
            "deaths": deaths_par 
        }
        res.send(obj);
    });

    app.get('/query_video', function(req, res) {
        let obj = req.query;
        let risSmash = smash.filter((item) => {
            let cWin = true;
            if(obj["win"] != "True")
                cWin = item.win == obj["win"] || item.win1 == obj["win"];
            
            let cWin1 = true;
            if(obj["win1"] == "False")
                cWin1 = item.win1 == "NULL";
            else if(obj["win1"] == "True")
                cWin1 = true;
            else
                cWin1 = item.win1 != "NULL" && (item.win == obj["win1"] || item.win1 == obj["win1"]);

            let cAle = true;
            if(obj["ale"] != "True")
                cAle = item.ale == characters.find(_=>_.code == obj["ale"]).character;

            let cLeo = true;
            if(obj["leo"] != "True")
                cLeo = item.leo == characters.find(_=>_.code == obj["leo"]).character;

            let cSandro = true;
            if(obj["sandro"] != "True")
                cSandro = item.sandro == characters.find(_=>_.code == obj["sandro"]).character;

            let cSiwei = true;
            if(obj["siwei"] != "True")
                cSiwei = item.siwei == characters.find(_=>_.code == obj["siwei"]).character;

            return cWin && cWin1 && cAle && cLeo && cSandro && cSiwei;
        }).map(_=>_.tipo+"-"+_.n);

        let risKills = kills.filter((item) => {
            let cUccide = true;
            if(obj["kills-uccide"] != "True")
                cUccide = item.uccide == obj["kills-uccide"];

            let cUcciso = true;
            if(obj["kills-ucciso"] != "True")
                cUcciso = item.ucciso == obj["kills-ucciso"];

            let cCome = true;
            if(obj["kills-come"] != "True")
                cCome = item.come == obj["kills-come"];
            
            return cUccide && cUcciso && cCome;
        }).map(_=>_.tipo+"-"+_.n);

        let ris = risSmash.filter(value => risKills.includes(value));
        if (obj["deaths-chi"] != "False") {
            let risDeaths = deaths.filter((item) => {
                let cChi = true;
                if(obj["deaths-chi"] != "True")
                    cChi = item.chi == obj["deaths-chi"];

                let cCome = true;
                if(obj["deaths-come"] != "True")
                    cCome = item.come == obj["deaths-come"];
                
                return cChi && cCome;
            }).map(_=>_.tipo+"-"+_.n);
            ris = risSmash.filter(value => risKills.includes(value)).filter(value => risDeaths.includes(value));
        }

        ris = ris.map((item) => {
            let video = playlist.entries.find(_=>_.title == item);
            let smashObj = smash.find(_=>(_.tipo+"-"+_.n) == item);
            let newObj = {
                "title": item,
                "tipo": smashObj.tipo,
                "n": smashObj.n,
                "url": video.url,
                "id": video.id,
                "killRow": kills.filter(_=>(_.tipo+"-"+_.n) == item),
                "deathRow": deaths.filter(_=>(_.tipo+"-"+_.n) == item),
            }
            return newObj;
        });

        return res.send(ris);
    });

    const httpServer = http.createServer(app);
    httpServer.listen(port, function() { 
        console.log(`In ascolto sulla porta ${port}`);
    });

    //FUNZIONI E VARIABILI AUSILIARIE------------------------------------------------------------------------------------------------------------------------------------------------------------------
    async function retrieveHL() {
        const [dbHL] = await db.query("select * from highlights")
        const ris = []
        dbHL.forEach((row) => {
            const obj = ris.find(_=>_.n === row.n)
            if(obj === undefined)
                ris.push({
                    n: row.n,
                    [row.tipo]: row.tipo_n
                })
            else
                obj[row.tipo] = row.tipo_n
        })
        return ris
    }

    function hlFilter(n) {
        if(n <= 0 || listHL.find(_=>_.n == n) == undefined) 
            return (elem) => true;
        else {
            return (elem) => {
                let condition = false;
                for(matchType in listHL[0]) {
                    if(matchType == "n") continue;
                    else {
                        condition = condition || (elem.tipo == matchType && elem.n <= listHL.find(_=>_.n == n)[matchType]);
                    };
                }
                return condition;
            };
        }
    }

    function createObj(list,player) {
        let obj = [];
        list.forEach((item) => {
            let pg = item[player.toString().toLowerCase()];
            let target = obj.find(_=>_.pg == pg); 
            if(target == undefined) {
                obj.push({
                    "pg": pg,
                    "n": 1
                });
            }
            else {
                target.n += 1;
            }
        });
        return obj.sort((a,b) => b.n-a.n);
    }

    function orderHow(come) {
        let d = {
            'Smash Laterale': 1, 'Smash in Su': 2, 'Smash in Giù' : 3, 'Aereo Standard': 4, 
            'Aereo Frontale': 5, 'Aereo Posteriore': 6, 'Aereo in Su': 7, 'Aereo in Giù': 8, 
            'Speciale Standard': 9, 'Speciale Laterale': 10, 'Speciale in Su': 11, 'Speciale in Giù': 12,
            'In Corsa': 13, 'Meteora': 14, 'Grab': 15, 'Scudo Rotto': 16,
            'Fuoco Amico': 17, 'Footstool': 18, 'Smash Finale': 19, 'Altro': 20, 'Peculiare': 0
        }
        return d[come];
    }
}

initServer()
