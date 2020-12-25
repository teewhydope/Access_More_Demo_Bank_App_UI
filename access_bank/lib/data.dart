import 'package:flutter/material.dart';

class Models {
  final IconData icons;
  final String labels;
  final String images;
  const Models({this.icons, this.labels, this.images});
}

const ModelList = const [
  Models(labels: 'My QR', icons: Icons.qr_code),
  Models(
    labels: 'Access Transfers',
    icons: Icons.crop_square,
  ),
  Models(
    labels: 'Other Banks Transfer',
    icons: Icons.connect_without_contact,
  ),
  Models(
    labels: 'Mobile Top-up',
    icons: Icons.phone_android,
  ),
  Models(
    labels: 'Credit Cards',
    icons: Icons.credit_card,
  ),
  Models(
    labels: 'Debit Cards',
    icons: Icons.credit_card,
  ),
  Models(
    labels: 'Transaction History',
    icons: Icons.schedule,
  ),
  Models(
    labels: 'Bills Payment',
    icons: Icons.calendar_today,
  ),
  Models(
    labels: 'Utility',
    icons: Icons.bolt,
  ),
  Models(
    labels: 'Movie Tickets',
    icons: Icons.money,
  ),
  Models(
    labels: 'Bet9ja',
    icons: Icons.sports_soccer,
  ),
  Models(
    labels: 'Instant Loans',
    icons: Icons.attach_money,
  ),
];

const ImageSlider = [
  Models(images: 'assets/images/slider1.png'),
  Models(images: 'assets/images/slider2.jpg'),
  Models(images: 'assets/images/slider3.jpeg'),
  Models(images: 'assets/images/slider4.jpg'),
  //Models(images: 'assets/images/Slider1.png'),
];
