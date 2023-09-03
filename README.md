# Foodies-back-end
##### Table of Contents
- Introduction: Why Foodies?
- Getting / Functionality
- Future Features


## Why Foodies?
I created Foodies because I noticed a lot of flaws within many other food delivery apps. My goal is to address the serious concerns I and many other clients of apps like Door Dash and Uber Eats may have. Starting with,
1. Delivering Food across the entire NYC
2. If the food is delievered to the same building the algorithm should reveal the delivery address for both orders to save delivery drivers time and to ensure the fastest delievry possible which = higher tips for many users of the app.
3. Self Delivery: Restaurants with their own delivery drivers can decide to assign their own people as delivery drivers for locations that fit their criteria.
4. Zero Hidden Fees: no more fees that make the food nearly impossible to afford.
## Future Features
## Getting Started

#### `/restaurants`
- Displays all of the restaurants we currently offer to our customers
  - restaurant name
  - artist
  - album
  - is_favorite
  - time
- Displays two buttons

  - <kbd>back</kbd>, takes the user back to the `/songs` view
  - <kbd>delete</kbd>, deletes the log and takes the user back to the `/songs` view

- button for `edit` - which takes the user to the edit form for this song

<details><summary>Inspiration</summary>

![](./assets/show.png)

</details>

####`/songs/new`

- Displays a form with the following inputs and appropriate labels:

  - name (text)
  - artist (text)
  - album (text)
  - is_favorite (boolean)
  - time (text)

#### Delete & Edit Functionality 
Available on the show page you can delete or edit the menu of any restaurant