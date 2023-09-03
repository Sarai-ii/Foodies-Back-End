// name is imperative
const checkName = (req, res, next) => {
  if (req.body.name) {
    next();
  } else {
    res.status(400).json({ error: "Restaurant is required" });
  }
};
//does the restaurant self deliver? Very important to not leave out
const selfDelivers = (req, res, next) => {
  const {  self_delivery } = req.body;
  if (
      self_delivery == "true" ||
      self_delivery == "false" ||
      self_delivery == true ||
      self_delivery == false ||
      self_delivery == undefined
  ) {
    next();
  } else {
    res.status(400).json({ error: "self_delivery must be a boolean value" });
  }
};
// checking if the url to the site is correct because sometimes people type fast
// const validateURL = (req, res, next) => {
//   if (
//     req.body.url.substring(0, 7) === "http://" ||
//     req.body.url.substring(0, 8) === "https://"
//   ) {
//     return next();
//   } else {
//     res
//       .status(400)
//       .json({ error: `You forgot to start your url with http:// or https://` });
//   }
// };


module.exports = { selfDelivers, checkName };



  