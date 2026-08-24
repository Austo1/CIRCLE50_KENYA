class MpesaDarajaService {
  // Production Daraja credentials must be supplied through a secure backend.
  // Never place consumer keys, secrets, passkeys, or webhook secrets in Flutter.
  final String baseUrl;
  const MpesaDarajaService({this.baseUrl = 'https://example.invalid/daraja'});

  Future<void> requestContribution({required String phone, required int amount}) async {
    if (amount <= 0) throw ArgumentError('Amount must be positive');
    // TODO: call your authenticated backend endpoint which talks to Daraja.
    throw UnimplementedError('Connect this service to a secure server-side Daraja integration.');
  }
}
