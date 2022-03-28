abstract class ChessPiece{

  // ChessPiece(int val): _numberOf = val;

  static int _numberOf = 16;
  static int lose() => _numberOf -= 1;

  static get number => _numberOf;

  void move();
  void capture();
}

class Pawns extends ChessPiece{
  // Pawns(int val) : super(val);


  @override
  void move() => print('движется прямо');

  @override
  void capture() => print('атакует по диагонали на 1 шаг');
}

void main(){
  Pawns blackPawns = Pawns();
  Pawns whitePawns = Pawns();
  whitePawns.move();
  whitePawns.capture();

  // blackPawns.lose();
  // blackPawns.lose();
  // print(blackPawns._numberOf);

  // Pawns.lose();
  // Pawns.lose();
  // Pawns.lose();
  // print(Pawns._numberOf);

  // ChessPiece.lose();
  // ChessPiece.lose();
  // ChessPiece.lose();
  // ChessPiece.lose();
  // print(ChessPiece._numberOf);
}