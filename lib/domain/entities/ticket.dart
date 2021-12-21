class TicketEntity {
  final String? id;
  final String name;
  final String date;
  final String code;
  final double value;
  final String fkUser;

  const TicketEntity({
    this.id,
    required this.name,
    required this.date,
    required this.code,
    required this.value,
    required this.fkUser,
  });
}
