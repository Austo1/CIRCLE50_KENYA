import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
class FingerprintWidget extends StatelessWidget { final LocalAuthentication auth; const FingerprintWidget({super.key, LocalAuthentication? auth}) : auth = auth ?? const LocalAuthentication(); @override Widget build(BuildContext c)=>IconButton(onPressed: () async { try { await auth.authenticate(localizedReason: 'Verify your identity for CIRCLE 50'); } catch (_) {} }, icon: const Icon(Icons.fingerprint, size: 34)); }
