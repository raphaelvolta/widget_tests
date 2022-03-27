import '../wallet.dart';

class WalletService{
  List<Wallet> getWallets(){
    return List.of({
      Wallet("Investimentos"),
      Wallet("Compras do mes"),
      Wallet("Role")
    });
  }
}