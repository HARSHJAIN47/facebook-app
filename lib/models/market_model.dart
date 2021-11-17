class MarketModels {
  late String title;
  late String photo;
  late double price;
  MarketModels({
    required this.title,
    required this.photo,
    required this.price,
  });
}

List<MarketModels> marketData = [
  MarketModels(
    title: "cycle 1 month old",
    photo: "assets/images/cycle.jpg",
    price: 299990,
  ),
  MarketModels(
    title: "Bike 2 months old",
    photo: "assets/images/bike.jpg",
    price: 1999999,
  ),
  MarketModels(
    title: "Scooty 3 months old",
    photo: "assets/images/scooty.jpg",
    price: 199998,
  ),
  MarketModels(
    title: "car 10 months old",
    photo: "assets/images/car.jpg",
    price: 50000000,
  ),
];
