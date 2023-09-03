const db = require("../db/dbconfig.js");

const getAllReviews = async (restaurant_id) => {
  try {
  const allReviews = await db.any(
  "SELECT * FROM reviews WHERE restaurant_id=$1",
  restaurant_id
  );
  return allReviews;
  } catch (err) {
  return err;
  }
}

const getReview = async (id) => {
  try {
    const oneReview = await db.one("SELECT * FROM reviews WHERE id=$1", id);
    return oneReview;
  } catch (error) {
    return error;
  }
};

const newReview = async (review) => {
  try {
    const newReview = await db.one(
      "INSERT INTO reviews (reviewer, content, stars_rating, restaurant_id) VALUES($1, $2, $3, $4) RETURNING *",
      [
        review.reviewer,
        review.content,
        review.stars_rating,
        review.restaurant_id,
      ]
    );
    return newReview;
  } catch (error) {
    return error;
  }
};

const deleteReview = async (id) => {
  try {
    const deletedReview = await db.one(
      "DELETE FROM reviews WHERE id = $1 RETURNING *",
      id
    );
    return deletedReview;
  } catch (error) {
    return error;
  }
};

const updateReview = async (id, review) => {
  try {
    const updatedReview = await db.one(
      "UPDATE reviews SET reviewer=$1, content=$2, stars_rating=$3, restaurant_id=$4 where id=$5 RETURNING *",
      [
        review.reviewer,
        review.content,
        review.stars_rating,
        review.restaurant_id,
        id,
      ]
    );
    return updatedReview;
  } catch (error) {
    return error;
  }
};
module.exports = {
  getAllReviews,
  getReview,
  newReview,
  deleteReview,
  updateReview,
};