extension NameInitials on String {
  String get initials {
    final nameParts = this.split(' ');
    if (nameParts.isEmpty) {
      return '';
    }

    final firstInitial = nameParts[0][0];
    final secondInitial = nameParts.length > 1 ? nameParts[1][0] : '';

    return '$firstInitial$secondInitial';
  }
}
