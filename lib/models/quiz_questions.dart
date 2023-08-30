class QuizQuestion {

  const QuizQuestion(this.text , this.answers);

  final String text ;
  final List<String> answers;

  List<String> getShuffledAnswers() { // shuffle method changes the orignal list that's why we take the instance of the orignal list and apply shuffling over that list this is chaining
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}