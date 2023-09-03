const db = require("../db/dbconfig");

const getAllMenus = async (restaurant_id) => {
  try {
  const allMenus = await db.any("SELECT * FROM menus WHERE restaurant_id=$1",
  restaurant_id
  );
  return allMenus;
  } catch (err) {
  return err;
  }
}

const getMenu = async (item_id) => {
  try {
    const oneMenu = await db.one("SELECT * FROM menus WHERE item_id=$1", item_id);
    return oneMenu;
  } catch (error) {
    return error;
  }
};

const newMenu = async (menu) => {
  try {
    const newMenu = await db.one(
      "INSERT INTO menus (item_name, item_category, item_cost, item_description, combo, image, restaurant_id) VALUES($1, $2, $3, $4, $5, $6, $7) RETURNING *",
      [
        menu.item_name, 
        menu.item_category, 
        menu.item_cost, 
        menu.item_description, 
        menu.combo, 
        menu.image, 
        menu.restaurant_id
      ]
    );
    return newMenu;
  } catch (error) {
    return error;
  }
};

const deleteMenu = async (id) => {
  try {
    const deletedMenu = await db.one(
      "DELETE FROM menus WHERE item_id = $1 RETURNING *",
      id
    );
    return deletedMenu;
  } catch (error) {
    return error;
  }
};

const updateMenu = async (id, menu) => {
  try {
    const updatedMenu = await db.one(
      "UPDATE menus SET item_name=$1, item_category=$2, item_cost=$3, item_description=$4, combo=$5, image=$6, restaurant_id=$7 where item_id=$8 RETURNING *",
      [
        menu.item_name, 
        menu.item_category, 
        menu.item_cost, 
        menu.item_description, 
        menu.combo, 
        menu.image, 
        menu.restaurant_id,
        item_id,
      ]
    );
    return updatedMenu;
  } catch (error) {
    return error;
  }
};
module.exports = {
  getAllMenus,
  getMenu,
  newMenu,
  deleteMenu,
  updateMenu,
};