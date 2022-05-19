class Transaction {
  final int id;
  final String name;
  final String wallet;
  final double amount;
  final String date;
  final String time;

  const Transaction(
      {required this.id,
    required this.name,
    required this.wallet,
    required this.amount,
    required this.date,
    required this.time,
  });

  static const transactions = [
    Transaction(
      id: 1,
      name: "Breakfast",
      wallet: "Mobile Money",
      amount: -2000.00,
      date: "26.08.2021",
      time: "11:10 am",
    ),Transaction(
      id: 2,
      name: "Paid Back",
      wallet: "Airtel Money",
      amount: 30000.00,
      date: "26.08.2021",
      time: "11:45 am",
    ),Transaction(
      id: 3,
      name: "Lunch",
      wallet: "Wallet",
      amount: -10000.00,
      date: "26.08.2021",
      time: "02:20 pm",
    ),Transaction(
      id: 4,
      name: "Paid Back",
      wallet: "Bank Account",
      amount: 4500.00,
      date: "26.08.2021",
      time: "07:45 pm",
    ),
    Transaction(
      id: 5,
      name: "Utility Bills",
      wallet: "Mobile Money",
      amount: -8000.00,
      date: "26.08.2021",
      time: "06:09 pm",
    ),
    Transaction(
      id: 6,
      name: "Breakfast",
      wallet: "Crypto Wallet",
      amount: -3000.00,
      date: "25.08.2021",
      time: "11:10 pm",
    ),
    Transaction(
      id: 7,
      name: "Good-will",
      wallet: "Mobile Money",
      amount: 94000.00,
      date: "25.08.2021",
      time: "07:45 pm",
    )
  ];
}
