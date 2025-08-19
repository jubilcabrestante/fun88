import 'package:flutter/material.dart';
import 'package:fun88_clone/features/home/home.dart';

final List<String> imageList = [
  "https://images.unsplash.com/photo-1600585154340-be6161b88a8c?auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1604027557076-1b7c7f7fbbf2?auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1549921296-3c961f7f2b8e?auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1560347876-aeef00ee58a1?auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1557683316-973673baf926?auto=format&fit=crop&w=800&q=80",
];

final List<IconItem> iconList = [
  IconItem(icon: Icons.home, label: "Home"),
  IconItem(icon: Icons.favorite, label: "Favorite"),
  IconItem(icon: Icons.settings, label: "Settings"),
  IconItem(icon: Icons.notifications, label: "Notifications"),
  IconItem(icon: Icons.search, label: "Search"),
];

final List<IconItem> bottomNavigationList = [
  IconItem(icon: Icons.home, label: 'Home'),
  IconItem(icon: Icons.favorite, label: "Favorite"),
  IconItem(icon: Icons.history, label: "History"),
  IconItem(icon: Icons.casino, label: "Casino"),
  IconItem(icon: Icons.verified_user, label: "Profile"),
];

final List<CasinoCard> cardList = [
  CasinoCard(title: "Casino Interior"),
  CasinoCard(title: "Roulette Table"),
  CasinoCard(title: "Slot Machine"),
  CasinoCard(title: "Poker Table"),
  CasinoCard(title: "Casino Lights"),
];

final List<GameCard> gameList = [
  GameCard(
    name: "Roulette",
    imageUrl:
        "https://images.unsplash.com/photo-1600585154340-be6161b88a8c?auto=format&fit=crop&w=800&q=80",
  ),
  GameCard(
    name: "Slot Machine",
    imageUrl:
        "https://images.unsplash.com/photo-1604027557076-1b7c7f7fbbf2?auto=format&fit=crop&w=800&q=80",
  ),
  GameCard(
    name: "Poker Table",
    imageUrl:
        "https://images.unsplash.com/photo-1560347876-aeef00ee58a1?auto=format&fit=crop&w=800&q=80",
  ),
  GameCard(
    name: "Blackjack",
    imageUrl:
        "https://images.unsplash.com/photo-1557683316-973673baf926?auto=format&fit=crop&w=800&q=80",
  ),
];
