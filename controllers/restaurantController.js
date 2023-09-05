const express = require("express");
const restaurant = express.Router();
const {
  getAllRestaurants,
  getRestaurant,
  createRestaurant,
  deleteRestaurant,
  updateRestaurant,
} = require("../queries/restaurant");
const { selfDelivers, checkName } = require("../validations/checkRestaurant.js");

//MENU ROUTE
const menuController = require("./menuController.js");
restaurant.use("/:restaurantId/menu", menuController);

//REVIEWS ROUTE
const reviewsController = require("./reviewsController.js");
restaurant.use("/:restaurantId/reviews", reviewsController);

// INDEX
restaurant.get("/", async (req, res) => {
    const allRestaurants = await getAllRestaurants();
    console.log(allRestaurants)
    if (allRestaurants[0]) {
      res.status(200).json(allRestaurants);
    } else {
      res.status(500).json({ error: "server error" });
    }
});

// SHOW
restaurant.get("/:id", async (req, res) => {
  const { id } = req.params;
  const restaurant = await getRestaurant(id);
  if (restaurant) {
    res.json(restaurant);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// CREATE
restaurant.post("/", selfDelivers, checkName, async (req, res) => {
  try {
    const restaurant = await createRestaurant(req.body);
    res.json(restaurant);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

// DELETE
restaurant.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedRestaurant = await deleteRestaurant(id);
  if (deletedRestaurant.id) {
    console.log("working")
    res.status(200).json(deletedRestaurant);
  } else {
    console.log(id)
    res.status(404).json(`Restaurant not found lets check the ID:${id}  ${deletedRestaurant}`);
  }
});

// UPDATE
restaurant.put("/:id", selfDelivers, checkName,  async (req, res) => {
  const { id } = req.params;
  const updatedRestaurant = await updateRestaurant(id, req.body);
  res.status(200).json(updatedRestaurant);
});

module.exports = restaurant;