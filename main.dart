void main() {
  var deck = new Deck();
  // deck.shuffle();
  print(deck);
  // print(deck.deal(5));Diamonds
  deck.removeCard('Diamonds', 'Two');
  print(deck);
  // print(deck.cardsWithSuit('Diamonds'));
}

class Deck {
  List<Card> cards = [];
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    // Nested loop started
    for (var mySuit in suits) {
      for (var rank in ranks) {
        var card = new Card(suite: mySuit, rank: rank);
        cards.add(card);
      }
    }
    // end of loop
  }

  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suite == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank) {
    return cards.removeWhere((card) => card.rank == rank && card.suite == suit);
  }
}

class Card {
  String rank;
  String suite;

  Card({this.rank, this.suite});

  toString() {
    return '$rank of $suite';
  }
}
