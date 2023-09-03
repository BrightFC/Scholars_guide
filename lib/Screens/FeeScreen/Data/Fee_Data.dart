class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus, this.totalAmount, this.btnStatus);
}

List<FeeData> fee = [
  FeeData('90871', 'November', '8 Nov 2023', 'Pending', "980\$", "PAY NOW"),
  FeeData('90870', 'September', '8 Sept 2023', 'Paid', "1080\$", "DOWNLOAD"),
  FeeData('90869', 'August', '8 Aug 2023', 'Paid', "980\$", "DOWNLOAD"),
];