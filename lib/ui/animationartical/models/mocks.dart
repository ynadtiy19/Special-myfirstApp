import 'apartment.dart';
import 'host.dart';

const apartments = [
  Apartment(
    host: Host(
      id: 1,
      name: 'Carmela',
      avatarPath: 'images/avatars/carmela.jpg',
      rating: 4.87,
      isSuperhost: true,
      info: HostInfo(
        bornIn: 'Born in the 90s',
        funFact: 'I am an extreme cake maker',
        uniqueness: 'Good energy and feeling at home',
      ),
      stats: HostStats(
        reviewsCount: 17,
        yearsHosting: 3,
      ),
    ),
    location: 'Valencia, Spain',
    dates: 'Jun 1 - 6',
    pricePerNight: 45,
    imagePath: 'assets/apartments/1.jpg',
  ),
  Apartment(
    host: Host(
      id: 2,
      name: 'Chris',
      avatarPath: 'images/avatars/chris.jpg',
      rating: 5,
      isSuperhost: true,
      info: HostInfo(
        bornIn: 'Born in the 90s',
        funFact: 'No one believes my age',
        uniqueness: 'Art collection and Antiques',
      ),
      stats: HostStats(
        reviewsCount: 50,
        yearsHosting: 5,
      ),
    ),
    location: 'Lyon, France',
    dates: 'Jun 10 - 15',
    pricePerNight: 69,
    imagePath: 'assets/apartments/2.jpg',
  ),
  Apartment(
    host: Host(
      id: 3,
      name: 'Ludovico',
      avatarPath: 'images/avatars/ludovico.jpg',
      rating: 4.93,
      isSuperhost: false,
      info: HostInfo(
        bornIn: 'Born in the 90s',
        funFact: 'Tell stories from my imagination',
        uniqueness: 'Guests say it is like stepping back in time',
      ),
    ),
    location: 'Mexico City, Mexico',
    dates: 'Apr 30 - May 5',
    pricePerNight: 139,
    imagePath: 'assets/apartments/3.jpg',
  ),
  Apartment(
    host: Host(
      id: 4,
      name: 'Meritt',
      avatarPath: 'images/avatars/meritt.jpg',
      rating: 4.89,
      isSuperhost: true,
      info: HostInfo(
        bornIn: 'Born in the 80s',
        funFact: "I love the fireplace when it's cold",
        uniqueness: 'It is a historic and a family home.',
      ),
      stats: HostStats(
        reviewsCount: 37,
        yearsHosting: 2,
      ),
    ),
    location: 'Lisbon, Portugal',
    dates: 'Jun 15 - 20',
    pricePerNight: 132,
    imagePath: 'assets/apartments/4.jpg',
  ),
  Apartment(
    host: Host(
      id: 5,
      name: 'Oliver',
      avatarPath: 'images/avatars/oliver.jpg',
      rating: 5,
      isSuperhost: false,
      info: HostInfo(
        bornIn: 'Born in the 80s',
        funFact: 'Visited 30+ countries on 5 continents',
        uniqueness: 'you enjoy it in every season!',
      ),
    ),
    location: 'Atlanta, Georgia, US',
    dates: 'Jun 1 - 8',
    pricePerNight: 75,
    imagePath: 'assets/apartments/5.jpg',
  ),
  Apartment(
    host: Host(
      id: 6,
      name: 'Rebecca',
      avatarPath: 'images/avatars/rebecca.jpg',
      rating: 5,
      isSuperhost: false,
      info: HostInfo(
        bornIn: 'Born in the 70s',
        funFact: 'I am also a comedian',
        uniqueness: "It's very quiet",
      ),
    ),
    location: 'Garopaba, Brazil',
    dates: 'Jun 1 - 6',
    pricePerNight: 36,
    imagePath: 'assets/apartments/6.jpg',
  ),
  Apartment(
    host: Host(
      id: 7,
      name: 'Roberta',
      avatarPath: 'images/avatars/roberta.jpg',
      rating: 4.99,
      isSuperhost: true,
      info: HostInfo(
        bornIn: 'Born in the 70s',
        funFact: 'I love to sweep the garden',
        uniqueness: 'Our terrace and carefully chosen decor',
      ),
      stats: HostStats(
        reviewsCount: 133,
        yearsHosting: 3,
      ),
    ),
    location: 'Kuta Utara, Indonesia',
    dates: 'Jun 26 - Jul 3',
    pricePerNight: 46,
    imagePath: 'assets/apartments/7.jpg',
  ),
  Apartment(
    host: Host(
      id: 8,
      name: 'Romain',
      avatarPath: 'images/avatars/romain.jpg',
      rating: 5,
      isSuperhost: true,
      info: HostInfo(
        bornIn: 'Born in the 70s',
        funFact: 'I loved to play basketball',
        uniqueness: 'Cozyness and nature',
      ),
      stats: HostStats(
        reviewsCount: 31,
        yearsHosting: 2,
      ),
    ),
    location: 'London, UK',
    dates: 'Aug 24 - 29',
    pricePerNight: 85,
    imagePath: 'assets/apartments/8.jpg',
  ),
  Apartment(
    host: Host(
      id: 9,
      name: 'Russel',
      avatarPath: 'images/avatars/russel.jpg',
      rating: 4.88,
      isSuperhost: false,
      info: HostInfo(
        bornIn: 'Born in the 90s',
        funFact: 'I danced at the opera house',
        uniqueness: 'Translucent pool and lush garden',
      ),
    ),
    location: 'Rodfern, Australia',
    dates: 'Jun 26 - Jul 1',
    pricePerNight: 86,
    imagePath: 'assets/apartments/9.jpg',
  ),
  Apartment(
    host: Host(
      id: 10,
      name: 'Valentina',
      avatarPath: 'images/avatars/valentina.jpg',
      rating: 4.96,
      isSuperhost: true,
      info: HostInfo(
        bornIn: 'Born in the 80s',
        funFact: 'I like video games',
        uniqueness: 'minimalistic',
      ),
      stats: HostStats(
        reviewsCount: 88,
        yearsHosting: 4,
      ),
    ),
    location: 'Edinburg, UK',
    dates: 'Sep 23 - 28',
    pricePerNight: 137,
    imagePath: 'assets/apartments/10.jpg',
  ),
];
