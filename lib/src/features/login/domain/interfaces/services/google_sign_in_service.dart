import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/domain/domain.dart';
import 'i_google_sign_in_service.dart';

class GoogleSignInService implements IGoogleSignInService {
  final GoogleSignIn? googleSignIn;
  GoogleSignInService(this.googleSignIn);

  @override
  Future<UserEntity?> signIn() async {
    googleSignIn?.signOut();
    final GoogleSignInAccount? googleUser = await googleSignIn?.signIn();
    if (googleSignIn != null) {
      UserEntity user = UserEntity(
        id: googleUser!.id,
        name: googleUser.displayName!,
        email: googleUser.email,
        imageUrl: googleUser.photoUrl!,
      );
      return user;
    }
    return null;
  }

  @override
  Future<void> signOut() async {
    await googleSignIn?.signOut();
  }
}
