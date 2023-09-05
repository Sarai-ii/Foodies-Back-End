# Foodies Delivery App
##### Back End Created By Sarai Thomas
#### Table of Contents
- Introduction: Why Foodies?
- Getting / Functionality
- Future Features


## Why Foodies?
I created Foodies because I noticed a lot of flaws within many other food delivery apps. My goal is to address the serious concerns I and many other clients of apps like Door Dash and Uber Eats may have. Starting with,
1. Delivering Food across the entire NYC
2. If the food is delievered to the same building the algorithm should reveal the delivery address for both orders to save delivery drivers time and to ensure the fastest delievry possible which = higher tips for many users of the app.
3. Self Delivery: Restaurants with their own delivery drivers can decide to assign their own people as delivery drivers for locations that fit their criteria.
4. Zero Hidden Fees: no more fees that make the food nearly impossible to afford.

## Getting Started
-Fork and Clone this repo
`psql -U postgres -f db/schema.sql` 
`psql -U postgres -f db/seed.sql`
`Nodemon Server.js`