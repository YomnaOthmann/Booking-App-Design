class ItemModel {
  final String image;
  final String city;
  final String country;
  final String decription;
  final List<String> galleryImages;

  ItemModel({
    required this.decription,
    required this.image,
    required this.city,
    required this.country,
    required this.galleryImages,
  });
}

List<ItemModel> items = [
  ItemModel(
      image: "assets/images/data_images/athens_greece.jpg",
      city: "Athens",
      country: "Greece",
      decription:
          "Perched above present day Athens, the Acropolis draws you up and in. Follow in the footsteps of ancients as you walk up the same steps that have been walked on since 438 BC - 2,500 years."),
  ItemModel(
      image: "assets/images/data_images/cairo_egypt.jpg",
      city: "Cairo",
      country: "Egypt",
      decription:
          "If you've visited places like the Colosseum in Rome or the Acropolis in Athens, built over 2,000 years ago, you may think you have a good handle on ancient sites. But the Pyramids of Giza take ancient to a whole other level. These were built over 4,500 years ago. Tourists were coming to see these magnificent structures literally thousands of years ago."),
  ItemModel(
      image: "assets/images/data_images/sydney_australia.jpg",
      city: "Sydney",
      country: "Australia",
      decription:
          "Like many other attractions around the world, the Sydney Opera House is one of those places that is easy to identify and obviously associated with Australia. A photo of yourself in front of the white sails screams Australia."),
  ItemModel(
      image: "assets/images/data_images/rome_italy.jpg",
      city: "Rome",
      country: "Italy",
      decription:
          "The most famous and largest structure still standing from the Roman Empire, the Colosseum is also the biggest attraction of modern-day Rome. It's been a bucket-list destination of travelers for generations. And it does not disappoint."),
  ItemModel(
      image: "assets/images/data_images/rio_brazil.jpg",
      city: "Rio de Janiro",
      country: "Brazil",
      decription:
          "Keeping a watchful eye over the citizens of Rio de Janeiro from his perch atop Corcovado mountain is the stunning statue of Cristo Redentor. This huge 30-meter-high statue with its arms wide open in a welcoming gesture has been one of Rio's top tourist attractions since 1931."),
  ItemModel(
      image: "assets/images/data_images/paris_france.jpg",
      city: "Paris",
      country: "France",
      decription:
          "The symbol of Paris and one of the most photographed structures in the world, a visit to the Eiffel Tower is a must for all travelers. Few landmarks inspire such a passion for travel as this single iron structure."),
  ItemModel(
      image: "assets/images/data_images/OldBagan_Myanmar.jpg",
      city: "Old Bagan",
      country: "Myanmar",
      decription:
          "While this ancient site may not be on the average traveler's radar, it's another of Southeast Asia's bucket-list attractions.Spread out over a lush plain are more than 10,000 sacred structures dating from 1044 through to 1287. Hire a bicycle and pedal your way from one amazing structure to the next, or take a tour. "),
  ItemModel(
      image: "assets/images/data_images/newyork_USA.jpg",
      city: "New york",
      country: "USA",
      decription:
          "America is full of great sights and places to visit, but it's the Statue of Liberty that represents the United States like no other place. This symbol of freedom in New York City was gifted by the French to the American people in 1896."),
];
