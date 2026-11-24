class BankAccount {
  int accountID;
  double balance;

  BankAccount(this.accountID, this.balance);

  BankAccount.empty()
      : accountID = 0,
        balance = 0;

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }

  void deposit(double amount) {
    balance += amount;
  }
}

void main() {
  BankAccount a = BankAccount(1, 500);
  a.deposit(200);
  a.withdraw(100);
  print(a.balance);

  BankAccount b = BankAccount.empty();
  print(b.balance);
}