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
            console.log("                       ----------------------\n")
            console.log("                         Browse items below\n")
            console.log("-----------------------------------------------------------------------\n")
            console.log("     || ID || Item Name || Department || Price || Quantity ||\n");
            console.log("-----------------------------------------------------------------------\n")


            for (var i = 0; i < res.length; i++) {
                console.log("|| " + res[i].item_id + " || " + res[i].product_name + " || " + res[i].department_name + " || " + "$"+  res[i].price + " || " + res[i].stock_quantity + " ||\n");
            }

        }
        //run inquirer to gather user input
        inquirer.prompt([
            {
                type: "input",
                name: "item_id",
                message: "Choose the ID of the item you'd like to purchase:\n",
                //validation function baked into inquirer. checks to see if user input item id is a number within the range
                validate: function(userVal) {
                    if(isNaN(userVal) == false && userVal >= 0 && userVal <= res.length) {
                        return true;
                    } else {
                        return false;
                    }
                }
            },
            {
                type: "input",
                name: "quantity",
                message: "Enter desired quantity:",
                validate: function(userVal) {
                    if(isNaN(userVal)) {
                        return false;
                    } else {
                        return true;
                    }
                }
            }
        //pass the answers from inquirer through this promise function which checks stock to see if it is available
            ]).then(function(ans) {
                var userChoice = (ans.item_id)-1;
                var userQty = (ans.quantity);
                var total = parseFloat(((res[userChoice].price) * userQty))
            //update db accordingly
                if (userQty <= res[userChoice].stock_quantity && userQty >= 0 ) {
                    connection.query("UPDATE items SET ? WHERE ?", [
                {stock_quantity: (res[userChoice].stock_quantity - userQty)},
                {item_id: ans.item_id}
                ], function (err, res2) {
                    if(err) {
                        throw err
                    } else {
                    console.log("\nGood choice, your total is $" + total.toFixed(2) + "!\n");
                    console.log("Your items will be arriving by carrier pigeon on 3-5 weeks.");
                    anotherOne();
                    }
                })
                } else {
                    console.log("Insufficient Stock.  Please select a valid quantity.");
                    anotherOne();
                }
            })
    })
};

//This runs after a completed purchase or after gets insufficient stock warning on an item
function anotherOne() {
    inquirer.prompt([
        {
            type: "confirm",
            name: "reply",
            message: "Continue shopping?\n",            
        },   
    ]).then(function(ans){
        if(ans.reply){
            run();
        } else {
            console.log("\nThanks for stopping by! Come again soon!");
            connection.end(function(err) {
                // The connection is terminated now
              });
        }
    })
}
run();


