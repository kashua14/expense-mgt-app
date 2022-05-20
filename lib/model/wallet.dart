import '../utils/enums.dart';

class Wallet {
  final String name;
  final double amount;
  final WalletType type;

  Wallet(
      {required this.amount,
      required this.name,
      required this.type});

  static List<Wallet> wallets = [
    Wallet(
      amount: 200565.89,
      name: 'Stanbic Bank',
      type: WalletType.bank,
    ),
    Wallet(
      amount: 005555.89,
      name: 'Crypto Wallet',
     type: WalletType.crypto,
    ),
    Wallet(
      amount: 90565.00,
      name: 'Mobile Money',
      type: WalletType.mobileMoney,
    ),
    Wallet(
      amount: 109500.00,
      name: 'Pocket',
      type: WalletType.physicalWallet,
    )
  ];
}
