class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation, benefits;
  final List ingredients;

  Meal(
      {this.mealTime,
      this.name,
      this.imagePath,
      this.kiloCaloriesBurnt,
      this.timeTaken,
      this.preparation,
      this.benefits,
      this.ingredients});
}

final meals = [
  Meal(
      mealTime: "BREAKFAST",
      name: "Fruit Granola",
      kiloCaloriesBurnt: "271",
      timeTaken: "10",
      imagePath: "assets/fruit_granola.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
        "1/2 cup of coconut shavings",
      ],
      preparation:
          '''1.Heat oven to 160C/fan 140C/gas3. Heat the oil, honey and maple syrup together in a pan. Mix the granola, almonds, pine nuts, puffed rice and sesame seeds in a large mixing bowl.
2. Pour over the honey mix, stir well to coat, then tip onto a large baking tray.
3.Bake for 15 mins until everything is golden and crisp.
4.Take the tray from the oven, leave to cool, then break up any big clumps.
5.Mix together with the dried fruit and coconut shavings.
6.Serve with Greek yogurt and fresh raspberries.
7.The rest of the granola can be stored in a sealed jar and enjoyed over the next 2 weeks.''',
      benefits:
          '''1.Improve blood pressure. High-fiber ingredients like oats and flax seeds have been shown to help reduce blood pressure ( 8 , 9 ).
2.Reduce cholesterol levels.
3.Reduce blood sugar.
4.Improve gut health.
5.Provide many antioxidants.'''),

  Meal(
      mealTime: "DINNER",
      name: "/n",
      kiloCaloriesBurnt: "612",
      timeTaken: "15",
      imagePath: "assets/pesto_pasta.jpg",
      ingredients: [
        "1 package pasta",
        "1 onion",
        "2 1/2 cup of pesto",
        "1 cup of grated cheese",
        "salt to taste",
      ],
      preparation:
          '''1.Cook pasta in a large pot of boiling water until done. Drain./n
2.Meanwhile, heat the oil in a frying pan over medium low heat. Add pesto, onion, and salt and pepper. Cook about five minutes, or until onions are soft./n
3.In a large bowl, mix pesto mixture into pasta. Stir in grated cheese. Serve.''',
      benefits:
          '''1.It's Packed with Antioxidants.
2.Thanks to ingredients like basil and garlic, pesto is packed with numerous antioxidants.
3.It Can Help Normalize Your Blood Pressure. Pesto can also help to normalize your blood pressure.
4.It's a Good Source of Calcium.'''),
  Meal(
      mealTime: "SNACK",
      name: "Choco-Fruit Dip",
      kiloCaloriesBurnt: "300",
      timeTaken: "10",
      imagePath: "assets/chocolate_pudding.jpg",
      ingredients: [
        "1/2 cup dark chocolate melted",
        "1/2 cup chia-seeds",
        "1 cup seasonal fruits",
        "1 cup of heavy cream",
      ],
      preparation:
          '''1.Beat the heavy cream with an electric mixer until soft peaks form./n
2.Add 2 tablespoons powdered sugar to the cream and continue beating until stiff peaks form./n
3.In a separate mixing bowl, beat cream cheese, more powdered sugar, cocoa powder and vanilla until smooth./n
4.Mix in the heavy cream, along with the remaining powdered sugar./n
5.Add your favourite sesoanal fruits. Then serve it with hot melted chocolate''',
      benefits:
          '''1. Chocolate helps to boost immunity system and good for heart.
2. Adding fruits helps in getting vitamins.'''),
  Meal(
      mealTime: "SNACK",
      name: "Egg Salad",
      kiloCaloriesBurnt: "300",
      timeTaken: "10",
      imagePath: "assets/keto_snack.jpg",
      ingredients: [
        "1 egg",
        "1 tbsp lemon-juice",
        "1-2 onions",
        "2-3 mint leaves",
      ],
      preparation:
          '''1.Hard boil eggs on the stovetop or in the instant pot and cool. Once cooled, cut into desired pieces/n
2.Finely cube the celery and red onion. (sweet onion may be substituted for red onion)/n
3.Chop the chives (or green onions) and fresh dill./n
4.Prepare homemade dressing with mint leaves./n
5.Mix salad well to combine and enjoy!''',
      benefits:
          '''1. Egg has highest protein.
2. Vitamis in salad are very helpful to boost immune system'''),
  Meal(
      mealTime: "DINNER",
      name: "Pumpkin Soup",
      kiloCaloriesBurnt: "200",
      timeTaken: "20",
      imagePath: "assets/pumpkin_soup.jpg",
      ingredients: [
        "1 cup pumpkin",
        "1 tbsp lemon-juice",
        "1 cup chicken stock",
        "2-3 mint leaves",
        "2 onions, finely chopped",
        "150ml double cream",
        "2 tbsp olive oil",
        "4 slices bread",
      ],
      preparation:
          '''1.Heat 2 tbsp olive oil in a large saucepan, then gently cook 2 finely chopped onions for 5 mins, until soft but not coloured./n
2.Add 1kg pumpkin or squash, cut into chunks, to the pan, then carry on cooking for 8-10 mins, stirring occasionally until it starts to soften and turn golden./n
3.Pour 700ml vegetable or chicken stock into the pan and season with salt and pepper. Bring to the boil, then simmer for 10 mins until the squash is very soft./n
4.Pour 150ml double cream into the pan, bring back to the boil, then purée with a hand blender. For an extra-velvety consistency you can pour the soup through a fine sieve. The soup can now be frozen for up to 2 months.
5.To make the croutons: cut 4 slices wholemeal seeded bread into small squares./n
6.Heat 2 tbsp olive oil in a frying pan, then fry the bread until it starts to become crisp./n
7.Add a handful of pumpkin seeds to the pan, then cook for a few mins more until they are toasted. These can be made a day ahead and stored in an airtight container./n
8.Reheat the soup if needed, taste for seasoning, then serve scattered with croutons and seeds and drizzled with more olive oil, if you want.''',
      benefits:
          '''1.Highly Nutritious and Particularly Rich in Vitamin A.
2.High Antioxidant Content May Reduce Your Risk of Chronic Diseases.
3.Packs Vitamins That May Boost Immunity.
4.Vitamin A, Lutein and Zeaxanthin May Protect Your Eyesigh'''),
  Meal(
      mealTime: "SNACK",
      name: "Mint Shots",
      kiloCaloriesBurnt: "100",
      timeTaken: "8",
      imagePath: "assets/lemonade.jpg",
      ingredients: [
        "10-12 mint cookies, crushed",
        "1 tbsp lemon-juice",
        "1 tpsp honey",
        "1/4 cup Irish Cream",
        "1/3 cup Chocolate frosting",
      ],
      preparation:
          '''1.Use a butter knife to spread chocolate frosting around the rim of each glass.
2.Place all three liquors and half and half in a shaker with ice. Shake until combined, then pour into shot glasses.''',
      benefits:
          '''1. Instantly boosts energy
2. Mint refreshes body and mind.'''),
  Meal(
      mealTime: "SNACK",
      name: "Cheesecake",
      kiloCaloriesBurnt: "100",
      timeTaken: "30",
      imagePath: "assets/cheesecake.jpg",
      ingredients: [
        "10-12 berries",
        "3 tpsp honey",
        "1/2 cup chocolate",
        "2-3 cip cakemix",
        "1 tbsp vanilla extract",
        "5 tbsp butter, melted",
      ],
      preparation:
          '''1.Select a pie pan whose inside top dimension is at least 9", and whose height is at least 1 1/4". Preheat the oven to 350°F./n
2.Make the crust by stirring together all of the crust ingredients, mixing until thoroughly combined./n
3.Press the crumbs into the bottom and up the sides of the pie pan, making a thicker layer on the bottom than on the sides./n
4.Make the filling by mixing together the room-temperature cream cheese and sugar until smooth. Mix in the eggs and vanilla, again mixing until smooth. To avoid beating too much air into the batter, use a mixer set at low-medium speed. To avoid lumps, make sure the cream cheese is softened, and/or at room temperature./n
5.Set the pie pan onto a baking sheet, if desired; this makes it easier to transport in and out of the oven, and also protects the bottom of the crust from any potential scorching. Pour the filling into the crust./n
6.Place the cheesecake in the oven. Bake it for 20 minutes, then add a crust shield; or shield the crust with strips of aluminum foil. Bake for an additional 10 minutes (for a total of about 30 minutes). A digital thermometer inserted into the filling 1" from the edge should read between 165°F and 170°F; the filling won't look entirely set in the center./n
7.Remove the cheesecake from the oven, and set it on a rack to cool. Once the cake is cool, refrigerate it, covered, until you're ready to serve it./n
8.Serve cheesecake in wedges, with fresh fruit if desired. Store any leftovers in the refrigerator for several days; freeze for longer storage''',
      benefits:
          '''1. This marvelous confection has a high content of flavanoids antioxidants that help the body fight off the effects of aging and disease.
2. It is also high in copper and magnesium.
3. Heart healthy minerals that assist in the regulation of blood pressure and heart rate'''),
  Meal(
      mealTime: "SNACK",
      name: "Papaya Smoothie",
      kiloCaloriesBurnt: "200",
      timeTaken: "8",
      imagePath: "assets/papaya_shake.jpg",
      ingredients: [
        "100gm papaya",
        "1 tbsp lemon-juice",
        "1 tpsp honey",
        "1/2 cup vanilla ice-cream",
      ],
      preparation:
          '''1.Peel the papaya, then cut it in half lengthwise and remove the seeds. Coarsely chop the flesh.\n
2.Place the papaya chunks and everything except the lime wedges into an electric blender or food processor.\n
3.Mix on high speed for 20 to 30 seconds until the mixture is smooth and thick.\n
4.Pour the smoothie into tall frosted glasses. Garnish with lime wedges and vanilla ice-cream, and serve at once.''',
      benefits:
          '''1. High in fiber: Papaya is full of high-fiber hence it is great for digestion and also keeps you filled for a longer time. It reduces the requirement of food more often.\n
2. Mouth-watering and full with nutrients: Papayas are very tasty and delicious fruits that contain healthy antioxidants, carbohydrates, fiber, protein, vitamin C, vitamin A, folate (vitamin B9), potassium, calcium, magnesium and vitamins B1, B3, B5, E, and K.
3. It has powerful antioxidant effects: Papaya has great antioxidant properties, which reduces oxidative stress and lessen your possibility of numerous diseases.
4. It has anti-cancer properties: The antioxidants in papaya decrease the risk of cancer and even slows down the cancer progression.
5. Improves heart health: The high vitamin C and lycopene helps to keep heart health and decrease the risk of heart disease.'''),
  Meal(
      mealTime: "SNACK",
      name: "Corn Salad",
      kiloCaloriesBurnt: "180",
      timeTaken: "8",
      imagePath: "assets/cornsalad.jpg",
      ingredients: [
        "1 cup boiled corn kernals",
        "1 tbsp lemon-juice",
        "1 cup sliced cucumber",
        "1 medium tomato",
        "1/2 cup radishes",
        "1/4 cup olive oil",
        "Freshly ground black pepper",
      ],
      preparation:
            '''1.In a large serving bowl, combine the corn, tomato, green onion, cucumber, herbs (don’t skimp on the herbs!), radishes, and jalapeño.
  2.In a liquid measuring cup or small bowl, combine the olive oil, vinegar, garlic, salt and several twists of black pepper. Whisk until blended, then pour it over the salad. Toss to combine.\n
  3.Add most of the feta or avocado (reserve some for garnish), and gently toss. Taste, and add more vinegar for more tang (I usually add another full tablespoon), or salt for more overall flavor. Garnish with the remaining feta or avocado.\n
  4.Serve promptly, or chill for later. This salad keeps well for 3 to 4 days in the refrigerator, covered''',
      benefits:
          '''1.Reduces the risk of Anemia. Corn is rich is in Vitamin B12, folic acid and iron which helps in the production of red blood cells in the body.
2. Energy Enhancer.
3. Miracle for those underweight.
4. Lowers Blood Sugar & Cholesterol Level.
5.Helpful during Pregnancy
6.Preserve Healthy Skin.'''),
  Meal(
    mealTime: "SNACK",
    name: "Hot Caramel Jam",
    kiloCaloriesBurnt: "220",
    timeTaken: "10",
    imagePath: "assets/hot_caramel.jpg",
    ingredients: [
      " 1 cup Milk",
      "Caramel Sauce (1 tbsp)",
      "Mixed Fruit Jam (1 tbsp)",
      "Instant Coffee (1.5 teaspoon)",
    ],
    preparation:
         '''1.Boil milk till it comes to a boil. Simmer for 3 to 4 mins.\n
2.Take coffee, mixed fruit jam, and caramel sauce together in a cup and mix well.\n
3.Add in a tsp of hot milk and beat till creamy.\n
4.Add whole hot milk and mix well.\n
5.Garnish with coffee powder, caramel sauce and serve hot.''',
    benefits:
        '''1. Boosts activity of nervous system.
2. Helps in reduction of stress.'''),
  Meal(
    mealTime: "BREAKFAST",
    name: "Soya Upma",
    kiloCaloriesBurnt: "170",
    timeTaken: "15",
    imagePath: "assets/Healthy-Soya-Upma.jpg",
    ingredients: [
      "Maggi Masala",
      "Soya Granules",
      "Mustard Seeds",
      "Ginger",
      "Curry Leaves",
    ],
    preparation:
          '''1. Soak the soya granules in hot water for about 15minutes. Drain and squeeze out all the water and keep aside.\n
2. Heat the oil in a pan and add punchfutan to it. When they crackle add asafoetida, curry leaves, grated ginger, chopped green chilli,chopped onions and groundnuts to it.\n
3. Saute the onions when they are translucent add chopped carrots cauliflower, green peas, turmeric powder and salt to it. Saute for again 4-5mins.\n
4. Then add the soaked soya granules and mix well and again cook about 5min. (If you want you may add 1/2tbsp Maggie masala and 1/2tbsp of sugar for better taste, but it is optional).\n
5. Switch off the flame and serve hot garnish with some curry leaves /coriander leaves and lemon wedges.''',
    benefits:
          '''1. It is one of best and light food diet.
2. It a high protein food.'''),
  Meal(
    mealTime: "SNACK",
    name: "Orange Punch",
    kiloCaloriesBurnt: "80",
    timeTaken: "5",
    imagePath: "assets/orange.jpg",
    ingredients: [
      "½ gallon orange sherbet",
      "1 frozen orange juice concentrate",
      "1 bottle ginger ale",
    ],
    preparation:
            '''1. Place sherbet and frozen orange juice concentrate in a punch bowl.\n
  2. Allow to thaw for 10 to 15 minutes. Stir in ginger ale.''',
    benefits:
          '''1. Oranges rich in Vitamin C.
2. Helps boost immune system'''),
  Meal(
    mealTime: "LUNCH",
    name: "Chickpea Tagina soup",
    kiloCaloriesBurnt: "240",
    timeTaken: "18",
    imagePath: "assets/chickpea.jpg",
    ingredients: [
        "1 red onion, thinly sliced",
        "2 x 400g cans chickpeas, drained and rinsed",
        "1 lemon",
        "50g dried apricots",
        "cumin, coriander powder",
    ],
    preparation:
            '''1. Heat the grill to its highest setting. Halve and deseed the peppers, then lay cut-side down on a baking sheet lined with foil. Grill for 10-15 mins, or until blistered and softened. Leave until cool enough to handle, then remove and discard the skins. Slice the roasted peppers into thin strips.\n
  2. Heat the oil in a large saucepan over a low heat. Fry the onion for 8-10 mins until softened. Stir through the garlic, coriander, cumin and harissa paste and cook for 1 min more. Add the chickpeas and stock, bring to the boil and simmer for 15 mins, covered.\n
  3. Stir the peppers through the soup with the kale, lemon zest and juice, and apricots and cook, covered, for another 5 mins. Ladle the soup into bowls and serve with the chopped parsley scattered over and a dollop of yogurt, if you like.''',
    benefits:
          '''1. As a rich source of vitamins, minerals and fiber, chickpeas may offer a variety of health benefits, such as improving digestion, aiding weight management and reducing the risk of several diseases.
2. Additionally, chickpeas are high in protein and make an excellent replacement for meat in vegetarian and vegan diets'''),
  Meal(
    mealTime: "BREAKFAST",
    name: "Protein Pancakes",
    kiloCaloriesBurnt: "170",
    timeTaken: "15",
    imagePath: "assets/pancake.jpg",
    ingredients: [
        "3 large eggs or 1/3 cup egg whites",
        "1/3 cup plain Greek yogurt",
        "2 tbsp maple syrup",
        "1/2 cup + 1 tbsp oat flour",
    ],
    preparation:
           '''1. In a mixing bowl, whisk the eggs. Add yogurt and maple syrup, whisk well to combine. Add oat flour and protein powder; stir until combined./n
2. Preheat skillet on medium heat. Spray with cooking spray and pour the batter depending on a desired size of a pancake (2-3 tbsp for a medium size like on a photo)./n
3. Cook for less than a minute and flip when bubbles appear but batter is still wet. Don’t wait for brown edges either. Then cook literally for 10 seconds more and pancakes are ready. Any further cooking will dry out the whey.''',
    benefits:
            '''1. High in protein for body building.
2. Higher levels of calcium, iron.'''),
];      
