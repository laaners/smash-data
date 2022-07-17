const { DataTypes, Sequelize } =  require("sequelize")
export const db = new Sequelize(process.env.DATABASE_URL, {
	logging: false,
	timestamps: false,
})
/*
const smash = db.define(
	"smash",
	{
		tipo: {
			type: DataTypes.STRING,
			primaryKey: true,
		},
		n: {
			type: DataTypes.INTEGER,
			primaryKey: true,
		},
		ale: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		leo: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		sandro: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		siwei: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		win: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		win1: {
			type: DataTypes.STRING,
			allowNull: true,
		},
	},
	{
		tableName: "smash",
        timestamps: false
	}
)

const kills = db.define(
	"kills",
	{
		tipo: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		n: {
			type: DataTypes.INTEGER,
			allowNull: false,
		},
		uccide: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		ucciso: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		come: {
			type: DataTypes.STRING,
			allowNull: false,
		},
	},
	{
		tableName: "kills",
        timestamps: false
	}
)

const deaths = db.define(
	"deaths",
	{
		tipo: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		n: {
			type: DataTypes.INTEGER,
			allowNull: false,
		},
		chi: {
			type: DataTypes.STRING,
			allowNull: false,
		},
		come: {
			type: DataTypes.STRING,
			allowNull: false,
		},
	},
	{
		tableName: "deaths",
        timestamps: false
	}
)

export const Models = {
	smash,
    kills,
    deaths
}
*/

export async function InitDatabaseConnection() {
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
