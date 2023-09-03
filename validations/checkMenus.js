const checkName = (req, res, next) => {
    if (req.body.item_name) {
        next();
    } else {
        res.status(400).json({ error: "Item Name is required" });
    }
};
  
const checkCost = (req, res, next) => {
    if (req.body.item_cost) {
        next();
    } else {
        res.status(400).json({ error: "Cost is required" });
    }
};
   
const isCombo = (req, res, next) => {
const {  combo } = req.body;
    if (
        combo == "true" ||
        combo == "false" ||
        combo == true ||
        combo == false ||
        combo == undefined
    ) {
        next();
    } else {
        res.status(400).json({ error: "Combo must be a boolean value" });
    }
};
 
module.exports = { isCombo, checkName, checkCost };
  
    