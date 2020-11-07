import 'package:kittle/assets/image_assets.dart';
import 'package:kittle/models/character.dart';
import 'package:kittle/models/movement.dart';
import 'package:kittle/models/review.dart';

final List<Movement> movements = [
  Movement(name: 'Idle', value: 150),
  Movement(name: 'Yes', value: 120),
  Movement(name: 'No', value: 11),
  Movement(name: 'Eat', value: 30),
  Movement(name: 'Roar', value: 40),
  Movement(name: 'Jump', value: 90),
  Movement(name: 'Die', value: 12),
  Movement(name: 'Fire', value: 200),
];

final List<Character> characters = [
  Character(name: 'Dragon', value: 120, image: ImageAssets.dragon),
  Character(name: 'Unicorn', value: 100, image: ImageAssets.unicorn),
  Character(name: 'Cat', value: 85, image: ImageAssets.cat),
  Character(name: 'Dog', value: 50, image: ImageAssets.dog),
  Character(name: 'Rabbit', value: 40, image: ImageAssets.rabbit),
  Character(name: 'Mouse', value: 28, image: ImageAssets.mouse),
];

final List<Review> reviews = [
  Review(
      name: 'Krister A.',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.',
      image: ImageAssets.person1),
  Review(
      name: 'Amnuaychai P.',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.',
      image: ImageAssets.person2),
  Review(
      name: 'Aarni A.',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.',
      image: ImageAssets.person3),
  Review(
      name: 'Pera S.B.',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.',
      image: ImageAssets.person4),
  Review(
      name: 'Nour S.',
      description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.',
      image: ImageAssets.person5),
];
