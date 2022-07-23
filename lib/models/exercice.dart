class Treino {
  final int id;
  final String name;
  final int accountNumber;

  Treino(
    this.id,
    this.name,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'Treino{id: $id, name: $name, accountNumber: $accountNumber}';
  }
}
