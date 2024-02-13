class AvailabilityDetails {
  final String category;
  final int stock;

  AvailabilityDetails({required this.category, required this.stock});
}

class ShopAvailabilityContent {
  static AvailabilityDetails getAvailabilityDetails() {
    return AvailabilityDetails(category: 'Smartphones', stock: 12);
  }
}

AvailabilityDetails availabilityDetails =
    ShopAvailabilityContent.getAvailabilityDetails();
