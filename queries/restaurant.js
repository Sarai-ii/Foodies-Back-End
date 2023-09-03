const db = require("../db/dbConfig.js");

//SHOW ALL ((GET))
const getAllRestaurants = async () => {
    try {
      const allRestaurants = await db.any("SELECT * FROM restaurants");
      return allRestaurants;
    } catch (error) {
      return error;
    }
};

//SHOW ONE ((GET))
const getRestaurant = async (id) => {
  try {
    const oneRestaurant = await db.one("SELECT * FROM restaurants WHERE id=$1", id);
    // return await db.one("SELECT * FROM restaurants WHERE id=$1", id);
    return oneRestaurant;
  } catch (error) {
    return error;
  }
};

// CREATE (POST)
const createRestaurant = async (restaurant) => {
  try {
    const newRestaurant = await db.one(
      "INSERT INTO restaurants (name, category, self_delivery, street_num, street_name, city, state, zip, opens, closes, image) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11) RETURNING *",
      [restaurant.name, 
        restaurant.category, 
        restaurant.self_delivery,
        restaurant.street_num,
        restaurant.street_name,
        restaurant.city,
        restaurant.state,
        restaurant.zip,
        restaurant.opens,
        restaurant.closes,
        restaurant.image]
    );
    return newRestaurant;
  } catch (error) {
    return error;
  }
};
// DELETE (DELETE)
const deleteRestaurant = async (id) => {
  try {
    const deletedRestaurant = await db.one(
      "DELETE FROM restaurants WHERE id = $1 RETURNING *",
      id
    );
    return deletedRestaurant;
  } catch (error) {
    return error;
  }
};

//UPDATE (PUT)
const updateRestaurant = async (id, restaurant) => {
  try {
    const updatedRestaurant = await db.one(
      "UPDATE Restaurants SET name=$1, category=$2, self_delivery=$3, street_num=$4, street_name=$5, city=$6, state=$7, zip=$8, opens=$9, closes=$10, image=$11 where id=$12 RETURNING *",
      [restaurant.name, 
        restaurant.category, 
        restaurant.self_delivery,
        restaurant.street_num,
        restaurant.street_name,
        restaurant.city,
        restaurant.state,
        restaurant.zip,
        restaurant.opens,
        restaurant.closes,
        restaurant.image, id]
    );
    return updatedRestaurant;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllRestaurants,
  getRestaurant,
  createRestaurant,
  deleteRestaurant,
  updateRestaurant
};