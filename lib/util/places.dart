import 'package:travel_app/models/items.dart';
import 'package:travel_app/models/places.dart';

List<TourPlace> places = [
  TourPlace(
    name: "Brisk Hotel Triangle",
    img: "assets/hotels/Source-of-the-Smile-Hotel1.jpg",
    price: r"$85+/night",
    address: "Nile Crescent Road, Jinja,",
    latitude: 0.789486,
    longitude: 0.32566,
    rating: 3.0,
    photos: [],
    description:
        "With a stay at Brisk Hotel Triangle in Jinja, you'll be a 3-minute walk from Jinja Golf Club and within a 5-minute drive of Jinja Temple. Featured amenities include a 24-hour front desk and laundry facilities. Free self parking is available onsite.",
  ),
  TourPlace(
    name: "K&K Guest House",
    img: "assets/hotels/jinja-nile-resort.jpg",
    price: r"$100+/night",
    address: "Plot 7 Nalufenya Road, Jinja",
    rating: 4.0,
    photos: [],
    description:
        "Located in Jinja, Pearl On the Nile Hotel is on a river, a 3-minute drive from Jinja Temple and 5 minutes from Source of the Nile River. Featured amenities include dry cleaning/laundry services, a 24-hour front desk, and luggage storage.",
  ),
  TourPlace(
    name: "Lemala Wildwaters Lodge",
    img: "assets/hotels/Source-Of-The-Smile.jpg",
    price: r"$70+/night",
    address: "Jinja, Uganda",
    rating: 3.5,
    photos: [],
    description:
        "Nestled amidst a riverine forest on the private Kalagala Island, Lemala Wildwaters Lodge offers views of the River Nile. The unique lodge features a natural pool and activities such as whitewater rafting and bungee jumping are offered. The canvas walled and thatched cottages feature a private deck with free-standing bath. The units also offer hand-crafted furniture and the beds are draped with a mosquito net. Each unit has a safety deposit box and complimentary toiletries. The restaurant and bar area can be reached via elevated, wooden walkways. Guests can indulge in a full English breakfast with a selection of cereals, fruits and juices. For lunch and dinner, the restaurant is an a-la carte menu. The lodge is accessed via a boat transfers and airport transfers to the island from Entebbe, Kampala or Jinja can be arranged. The town of Kangulumira is 3 km away.",
  ),
  TourPlace(
    name: "Nile Village Hotel",
    img: "assets/hotels/Nile-Village-Hotel...png",
    price: r"$65+/night",
    address: "48/49 Kiira Road, Jinja,",
    rating: 4.0,
    photos: [],
    description:
        "Located in Jinja, Nile Village Hotel is in the historical district, a 4-minute drive from Jinja Temple and 6 minutes from Source of the Nile River. Featured amenities include a business center, express check-in, and express check-out. Planning an event in Jinja? This hotel has 50 square feet (5 square meters) of space consisting of conference space and a meeting room. A roundtrip airport shuttle is provided for a surcharge (available 24 hours), and free valet parking is available onsite.",
  ),
  TourPlace(
    name: "Pearl on the Nile Hotel",
    img: "assets/hotels/source-of-the-nile-hotel.jpg",
    price: r"$37+/night",
    address: "Plot 12A Kiira Road, Victoria",
    photos: [],
    rating: 4.5,
    description:
        "Located in Jinja, Pearl On the Nile Hotel is on a river, a 3-minute drive from Jinja Temple and 5 minutes from Source of the Nile River. Featured amenities include dry cleaning/laundry services, a 24-hour front desk, and luggage storage.",
  ),
  TourPlace(
    name: "Bridgeway Guesthouse",
    img: "assets/hotels/Signature-Hotel-Apartments-Jinja-3.jpg",
    price: r"$33+/night",
    address: "Plot 34 Bridge Street, Jinja",
    photos: [],
    rating: 2.5,
    description:
        "Located in Jinja, Bridgeway Guesthouse is a 2-minute drive from Jinja Temple and 6 minutes from Jinja Golf Club. Featured amenities include dry cleaning/laundry services, a 24-hour front desk, and luggage storage.",
  ),
  TourPlace(
    name: "Holland Park",
    img: "assets/hotels/sos_suites_gallery2-263x165.jpg",
    price: r"$95+/night",
    address: "Jinja, Uganda",
    photos: [],
    rating: 3.5,
    description:
        "Holland Park is located in Kayunga. Featured amenities include dry cleaning/laundry services, multilingual staff, and luggage storage. A roundtrip airport shuttle is provided for a surcharge (available 24 hours), and free self parking is available onsite.",
  ),
  TourPlace(
    name: "Signature Hotel Apartments",
    img: "assets/hotels/signature-hotel-jinja.jpg",
    price: r"$131+/night",
    address: "Plot 12 Nalufenya Road, Jinja",
    photos: [],
    rating: 4.0,
    description:
        "Located in Jinja, Signature Hotel Apartments is a 4-minute drive from Jinja Temple and 9 minutes from Jinja Golf Club. Featured amenities include complimentary newspapers in the lobby, dry cleaning/laundry services, and a 24-hour front desk. A roundtrip airport shuttle is available for a surcharge.",
  ),
  TourPlace(
    name: "Living Waters Resort",
    img: "assets/hotels/jinja-nile-resort.jpg",
    price: r"$73+/night",
    address: "Jinja, Uganda",
    photos: [],
    rating: 4.5,
    description:
        "With a stay at Living Waters Resort in Jinja, you'll be 0.1 mi (0.1 km) from Speke Memorial Monument and 4.7 mi (7.5 km) from Jinja Temple. The front desk is staffed during limited hours. Guests may use a roundtrip airport shuttle for a surcharge, and free self parking is available onsite.",
  ),
];

final foodsFolder = "assets/foods";
final carsFolder = "assets/trucks";
final wildlifeFolder = "assets/bicycles";
final funFolder = "assets/fun";
List<TripItem> cars = [
  TripItem(name: '', image: '$carsFolder/ranger.jpg'),
  TripItem(name: '', image: '$carsFolder/vans.jpg'),
  TripItem(name: '', image: '$carsFolder/land-cruiser.jpg'),
  TripItem(name: '', image: '$carsFolder/image28.jpeg'),
  TripItem(name: '', image: '$carsFolder/image22.jpeg'),
  TripItem(name: '', image: '$carsFolder/images10.jpg'),
];

List<TripItem> foods = [
  TripItem(name: 'Beef burger', image: '$foodsFolder/beef-burger.jpg'),
  TripItem(name: 'Creamy donuts', image: '$foodsFolder/creamydonuts.jpg'),
  TripItem(name: 'Fast foods', image: '$foodsFolder/fast-food.jpg'),
  TripItem(name: 'Chicken', image: '$foodsFolder/H-K-Yummy-Foods12.jpg'),
  TripItem(name: 'Luwombo', image: '$foodsFolder/luwumbo.jpeg'),
  TripItem(name: 'Roasted chicken', image: '$foodsFolder/roasted-chicken.jpg'),
];

List<TripItem> bikes = [
  TripItem(
      name: '', image: '$wildlifeFolder/aesthetics-bicycle-merchandise.jpg'),
  TripItem(name: '', image: '$wildlifeFolder/bicycle1.jpg'),
  TripItem(name: '', image: '$wildlifeFolder/bike.jpg'),
  TripItem(name: '', image: '$wildlifeFolder/biking-or-bicycling.jpg'),
  TripItem(name: '', image: '$wildlifeFolder/Left_side_of_Flying_Pigeon.jpg'),
];
List<TripItem> vistedPlaces = [
  TripItem(name: '', image: '$funFolder/boat-cruise-on-river-nile.jpg'),
  TripItem(
      name: '', image: '$funFolder/bungee-jumping-uganda-jinja-300x202.jpg'),
  TripItem(name: '', image: '$funFolder/image29.jpeg'),
  TripItem(
      name: '',
      image:
          '$funFolder/Jinja_Sunset_Cruise_Top_20_Jinja_Uganda_Tourism_Attractions_and_Activities.jpg'),
  TripItem(name: '', image: '$funFolder/Quad-Biking-in-Jinja-Uganda.jpg'),
  TripItem(name: '', image: '$funFolder/Tubing-the-Nile.jpg'),
];
