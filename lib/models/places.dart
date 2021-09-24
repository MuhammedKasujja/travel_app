class TourPlace {
  final double latitude;
  final double longitude;
  final String name;
  final String img;
  final String price;
  final String description;
  final String address;
  final double rating;
  final List<String> photos;

  TourPlace({
    this.latitude,
    this.longitude,
    this.name,
    this.img,
    this.price,
    this.address,
    this.description,
    this.rating,
    this.photos,
  });
  Map toMap() {
    return {
      "name": "Hotel Dolah Amet & Suites",
      "img": "assets/1.jpeg",
      "price": r"$100/night",
      "address": "London, England",
      "latitude": "0.789486",
      "longitude": "0.32566",
      "description": "Pellentesque in ipsum id orci porta dapibus. "
          "Nulla porttitor accumsan tincidunt. Donec rutrum "
          "congue leo eget malesuada. "
          "\n\nPraesent sapien massa, convallis a pellentesqu0e "
          "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
          "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
          "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
          "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
          "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
    };
  }
}
