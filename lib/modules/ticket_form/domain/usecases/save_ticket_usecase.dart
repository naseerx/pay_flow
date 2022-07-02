import '../../../../core/domain/repositories/i_ticket_repository.dart';

class SaveTicketUsecase {
  final ITicketRepository _repository;
  SaveTicketUsecase(this._repository);

  Future<void> call() async {
    return await _repository.saveTicket();
  }
}
