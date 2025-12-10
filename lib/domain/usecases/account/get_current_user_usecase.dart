import 'package:prac11/core/models/account/user_account_model.dart';
import 'package:prac11/domain/repositories/account/account_repository.dart';

class GetCurrentUserUseCase {
  final AccountRepository _accountRepository;

  GetCurrentUserUseCase(this._accountRepository);

  UserAccount? call() {
    return _accountRepository.getCurrentUser();
  }
}

