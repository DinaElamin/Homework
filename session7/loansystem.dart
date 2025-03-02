void main() {
  LoanProcessingSystem loanSystem = LoanProcessingSystem();
  loanSystem.applyLoan(PersonalLoan('ahmed', 200000));
  loanSystem.applyLoan(HomeLoan('omar', 500000));
  loanSystem.applyLoan(CarLoan('ali', 1000000));
  loanSystem.calculateInstallments(12);
}
abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(borrowerName: borrowerName, loanAmount: loanAmount, interestRate: 10/100);

  @override
  double calculateMonthlyInstallment(int months) {
    return (loanAmount + interestRate) / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(
          borrowerName: borrowerName,
          loanAmount: loanAmount,
          interestRate: loanAmount > 500000 ? 9.5/100 : 8/100,
        );

  @override
  double calculateMonthlyInstallment(int months) {
    return (loanAmount + interestRate) / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(borrowerName: borrowerName, loanAmount: loanAmount, interestRate: 0.07);

  @override
  double calculateMonthlyInstallment(int months) {
    double processingFee = loanAmount > 50000 ? 0.02 * loanAmount : 0.0;
    double totalAmount = loanAmount + processingFee;
    return (totalAmount + interestRate) / months;
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment= loan.calculateMonthlyInstallment(months);
      print('${loan.borrowerName}: ${installment.toString()}');
    }
  }
}

