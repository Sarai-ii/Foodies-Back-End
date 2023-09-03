const express = require("express");

const menus = express.Router({ mergeParams: true });
const {
  getAllMenus,
  getMenu,
  newMenu,
  deleteMenu,
  updateMenu,
} = require("../queries/menus");
const { isCombo, checkCost, checkName } = require("../validations/checkMenus.js");


// INDEX
menus.get("/", async (req, res) => {
  const { restaurantId } = req.params;

  try {
    const allMenus = await getAllMenus(restaurantId);
    res.json(allMenus);
  } catch (err) {
    res.json(err);
  }
});

// SHOW
menus.get("/:id", async (req, res) => {
  const { id } = req.params;
  const menu = await getMenu(id);
  if (menu) {
    res.json(menu);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// UPDATE
menus.put("/:id", isCombo, checkCost, checkName, async (req, res) => {
  const { id } = req.params;
  const updatedMenu = await updateMenu(id, req.body);
  if (updatedMenu.id) {
    res.status(200).json(updatedMenu);
  } else {
    res.status(404).json("Menu not found");
  }
});
//CREATE
menus.post("/", isCombo, checkCost, checkName,  async (req, res) => {
  const menu = await newMenu(req.body);
  res.status(200).json(menu);
});

// DELETE
menus.delete("/:id", async (req, res) => {
  const { id } = req.params;

  const deletedMenu = await deleteMenu(id);
  if (deletedMenu.id) {
    res.status(200).json(deletedMenu);
  } else {
    res.status(404).json({ error: "Menu not found" });
  }
});

module.exports = menus;