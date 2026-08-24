# CIRCLE 50 Kenya 🇰🇪

Flutter foundation for a community creative discovery, voting and rewards platform.

## Current foundation
- Flutter Material 3 application shell
- User, post and pot models
- Firebase/Auth/Firestore service boundary
- Secure server-side M-Pesa integration boundary
- Weighted scoring and monthly vote-limit services
- Authentication, levels, feed, posting, profile and judge UI scaffolds
- Restricted admin UI scaffolds
- Firebase Hosting configuration

## Important production requirements
Identity documents, selfies, PINs, M-Pesa credentials and financial operations must be protected by server-side authorization and secure storage. Do not put Daraja secrets or Firebase Admin credentials in the Flutter client.

The repository currently contains a safe development scaffold. Real payments, identity verification, judge selection, pot distribution and admin authorization still need a trusted backend and production security rules before launch.
