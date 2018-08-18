var mysql = require("mysql");
var inquirer = require("inquirer");

//create connection info for db
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "products"
})

//connect to db and run function if all good, throw err if not
function run() {
    connection.query("SELECT * FROM items", function(err, res) {
        if (err) {
            throw err
        } else {
            console.log("-----------------------------------------------------------------------\n")
            console.log("                        Welcome to Bamazon!\n")
            console.log("-----------------------------------------------------------------------\n")
            console.log("                        Browse items below\n")
            console.log("                --------------------------------------")

            for (var i = 0; i < res.length; i++) {
                console.log("ID: " + res[i].item_id + " | " + res[i].product_name + " | " + res[i].department_name + " | " + "$"+  res[i].price + " | " + res[i].stock_quantity + "\n");
            }

        }

        // inquirer.prompt([
        //     {
        //         type: "input",
        //         name: "item_id",
        //         message: ""
        //     }
        // ])
    })
};


