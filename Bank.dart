class BankAccont{
  double? _balance;
  String? _name;

  BankAccont(this._balance, this._name);
  double get balance => _balance!;
  String get name => _name!;
  
  void deposit(double amount){
    
    _balance = balance + amount;
    print("ฝากเงิน ${amount} คงเหลือเงินในบัญชี ${_balance}");

  }
  void withdraw(double amount){
    
    _balance = balance - amount;
    print("ถอนเงิน ${amount} คงเหลือเงินในบัญชี ${_balance}");

  }
  void showbalance() => print("คงเหลือเงินในบัญชี ${_balance}");
}

class SavingAccount extends BankAccont{
  double _interestRate = 0.25;

  SavingAccount(this._interestRate ,{double? balance, String? name}):super(balance,name);
  void addinterest(){
    print("ดอกเบี้ยที่ได้ในบัญชี ${(balance * _interestRate)/100}");
    _balance = (balance * _interestRate)/100 + balance;
  }
}

void main(List<String> args) {
  var a = SavingAccount(0.25, balance: 2000,name: "Pao");
  a.deposit(400);
  a.withdraw(100);
  a.addinterest();
}