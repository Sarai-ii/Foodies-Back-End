// === DEPENDENCIES ===
const express = require('express');
const cors = require("cors");

// === CONFIGURATION ===
const app = express();

// === MIDDLEWARE
app.use(cors());
app.use(express.json());


// === ROUTES ===

app.get("/", (req, res) => {  
    res.send("<h1>Welcome to the Food Delivery App In NYC [Back-End]</h1>");
});

// Restaurants ROUTES
const restaurantsController = require("./controllers/restaurantController.js");
app.use("/restaurants", restaurantsController);

// 404 PAGE      
app.get("*", (req, res) => {
    res.status(404).send("Page not found");
});
// === EXPORT ===
module.exports = app;