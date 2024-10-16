void main() {
  // Map of pizza prices

  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
    'pineapple': 7.6,
  };
  // Example order

  const order = ['margherita', 'pepperoni', 'pineapple'];
  // Your code
  double totalCost = 0;
  for (var pizza in order) {
    if (pizzaPrices.containsKey(pizza)) {
      totalCost += pizzaPrices[pizza]!;
    } else {
      print("${pizza} pizza is not on the menu");
    }
  }

  print("Total:${totalCost}");
}
