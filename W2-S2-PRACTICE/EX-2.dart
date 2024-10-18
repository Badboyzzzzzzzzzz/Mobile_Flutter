class BankAccount {
  double? _balances;
  int? _accountId;
  String? _bankName;
  String? _branchCode;
  String? _accountOwner;

  BankAccount(this._accountId, this._balances, this._accountOwner,
      this._bankName, this._branchCode);

  double get balances => this._balances!;
  int get accountId => this._accountId!;
  String get bankName => this._bankName!;
  String get branchCode => this._branchCode!;
  String get accountOwner => this._accountOwner!;

  void updateBalance(double amount) {
    this._balances = amount;
  }

  void withdraw(double amount) {
    if (_balances! - amount < 0) {
      throw Exception("Insufficient balance for withdrawal!");
    }
    _balances = _balances! - amount;
  }

  void credit(double amount) {
    _balances = _balances! + amount;
  }

  @override
  String toString() {
    return "AccountId: ${_accountId} ,Owner: ${_accountOwner} ,Balances: \$${_balances} ,Bank: ${_bankName} ,Branch-code: ${_branchCode}";
  }
}

class Bank {
  List<BankAccount>? _accounts = [];
  String? _bankName;
  String? _location;
  String? get bankName => this._bankName;
  String get location => this._location!;
  List<BankAccount> get account => this._accounts!;

  Bank(this._bankName, this._location);

  BankAccount createAccount(int accountId, double balances, String accountOwner, String branchCode) {
    for (var account in _accounts!) {
      if (account.accountId == accountId) {
        throw Exception("Account ID ${accountId} is already exist, Account ID must be unique");
      }
    }

    var newAccount =
        BankAccount(accountId, balances, accountOwner, bankName, branchCode);
    _accounts!.add(newAccount);
    return newAccount;
  }

  void listAccount() {
    _accounts?.forEach((account) {
      print(account);
    });
  }
}

void main() {
  Bank myBank = Bank("CADT Bank", "Prek leap");

  BankAccount account1 = myBank.createAccount(1, 1000, "socheat", "0000011333");

  BankAccount account2 = myBank.createAccount(2, 2000, "theasov", "0000011332");
  print(account1);

  account1.credit(100);
  print(
      'Balance ${account1.accountOwner} after credit \$${account1.balances}');
  account1.withdraw(50);
  print('Balance after withdraw ${account1.balances}');

  try {
    account1.withdraw(1200); 
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  myBank.listAccount();

  try {
    myBank.createAccount(1, 2000, "Honlgy", "0000012334"); 
  } catch (e) {
    print(e); // Output: Account ID must be unique
  }
}
