class AntiBotService {
  static const int monthlyVoteLimit = 10;
  final Map<String, int> _votes = {};

  bool canVote(String userId) => (_votes[userId] ?? 0) < monthlyVoteLimit;
  void recordVote(String userId) {
    if (!canVote(userId)) throw StateError('Monthly vote limit reached');
    _votes[userId] = (_votes[userId] ?? 0) + 1;
  }
}
