class Model {
  static List typeOfFood = [
    ['Offers', 'assets/images/offers.png'],
    ['Sri Lankan', 'assets/images/sir.png'],
    ['Italian', 'assets/images/italy.png'],
    ['Indian', 'assets/images/india.png']
  ];

  static List<Data> restaurent = [];
  static List<Data> popular = [];
  static List<Data> recentItem = [];
  static List<Data> dessertItem = [];

  static void creatDessertElement() {
    dessertItem.add(Data(
        name: 'French Apple Pie',
        image: 'assets/images/d1.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Minute by tuk tuk',
        type2: 'Desserts'));

    dessertItem.add(Data(
        name: 'Dark Chocolate Cake',
        image: 'assets/images/d2.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Cakes by Tella',
        type2: 'Desserts'));

    dessertItem.add(Data(
        name: 'Street Shake',
        image: 'assets/images/d3.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café Racer',
        type2: 'Desserts'));
    dessertItem.add(Data(
        name: 'Fudgy Chewy Brownies',
        image: 'assets/images/d4.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Minute by tuk tuk ',
        type2: 'Desserts'));
  }
  static void creatRestaurentElement() {
    restaurent.add(Data(
        name: 'Minute by tuk tuk',
        image: 'assets/images/R1.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Western Food'));

    restaurent.add(Data(
        name: 'Café de Noir',
        image: 'assets/images/R2.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Western Food'));

    restaurent.add(Data(
        name: 'Bakes by Tella',
        image: 'assets/images/R3.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Western Food'));
  }

  static void creatPopularElement() {
    popular.add(Data(
        name: 'Café De Bambaa',
        image: 'assets/images/p1.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Western Food'));

    popular.add(Data(
        name: 'Burger by Bella',
        image: 'assets/images/p2.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Western Food'));
  }

  static void creatRecentItem() {
    recentItem.add(Data(
        name: 'Mulberry Pizza by Josh',
        image: 'assets/images/i1.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Western Food'));

    recentItem.add(Data(
        name: 'Barita',
        image: 'assets/images/i2.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Western Food'));

    recentItem.add(Data(
        name: 'Pizza Rush Hour',
        image: 'assets/images/i3.png',
        rating: '4.9',
        noOfRating: '(124 rating)',
        type: 'Café',
        type2: 'Italian Food'));
  }
}

class Data {
  String image;
  String name;
  String rating;
  String noOfRating;
  String type;
  String type2;
  Data(
      {required this.name,
      required this.image,
      required this.rating,
      required this.noOfRating,
      required this.type,
      required this.type2});
}
