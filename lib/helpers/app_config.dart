import 'package:flutter/material.dart';

class AppConfig {
  static final String urlProd = 'https://packboss-api.herokuapp.com/api';

  static String get getApiUrl {
    return urlProd;
  }

  static String getDeliveryStatus(String status) {
    String deliveryStatus = '';
    switch (status) {
      case 'all':
        deliveryStatus = 'All';
        break;
      case 'waiting-for-pickup':
        deliveryStatus = 'Waiting For Pickup';
        break;
      case 'on-pickup':
        deliveryStatus = 'On Pickup';
        break;
      case 'on-office-storage':
        deliveryStatus = 'On Office Storage';
        break;
      case 'on-sorting':
        deliveryStatus = 'On Sorting';
        break;
      case 'on-delivery-courier':
        deliveryStatus = 'On Delivery Courier';
        break;
      case 'delivered':
        deliveryStatus = 'Delivered';
        break;
      case 'canceled':
        deliveryStatus = 'Canceled';
        break;
    }
    return deliveryStatus;
  }

  static String convertDate(String date) {
    String converted = '';
    DateTime dateTime = DateTime.now();
    dateTime = DateTime.parse(date);

    converted = dateTime.toLocal().toString();
    return converted;
  }

  static IconData getIcons(String status) {
    IconData icons;
    switch (status) {
      case 'waiting-for-pickup':
        icons = Icons.access_time;
        break;
      case 'on-pickup':
        icons = Icons.emoji_transportation;
        break;
      case 'on-office-storage':
        icons = Icons.house_siding;
        break;
      case 'on-sorting':
        icons = Icons.filter_b_and_w;
        break;
      case 'on-delivery-courier':
        icons = Icons.departure_board;
        break;
      case 'delivered':
        icons = Icons.sentiment_satisfied_alt;
        break;
      case 'canceled':
        icons = Icons.sentiment_dissatisfied_outlined;
        break;
    }

    return icons;
  }
}
