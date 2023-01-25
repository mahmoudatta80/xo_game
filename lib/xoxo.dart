
import 'dart:io';
void main()
{
  print('Welcome to Tic-Tac-Toe game');
  print('Player one , please enter your name ?');
  String playerOne=stdin.readLineSync()!;
  print('Player two , please enter your name ?');
  String playerTwo=stdin.readLineSync()!;
  List<String>? row0 = List.generate(3, (index) => ' - ');
  List<String>? row1 = List.generate(3, (index) => ' - ');
  List<String>? row2 = List.generate(3, (index) => ' - ');


  ticTacToe(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOne , playerTwoName: playerTwo);
}

Player1({List<String>? row0, List<String>? row1, List<String>? row2 , String? playerOneName})
{
  print('$playerOneName , please enter the row ? ');
  int rowNum = int.parse(stdin.readLineSync()!);
  print('$playerOneName , please enter the col ? ');
  int colNum = int.parse(stdin.readLineSync()!);
  if(rowNum == 0 && 0<=colNum && colNum<=2)
  {
    if(row0![colNum]!=' - ')
    {
      print('$playerOneName please enter correct number of row and col');
      Player1(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName);
    }else
    {
      row0.removeAt(colNum);
      row0.insert(colNum, ' X ');
      printScore(row0: row0 , row1: row1 , row2: row2);
      checkPlayerOneIsWinner(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName);
    }
  }else if(rowNum == 1 && 0<=colNum && colNum<=2)
  {
    if(row1![colNum]!=' - ')
    {
      print('$playerOneName please enter correct number of row and col');
      Player1(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName);
    }else
    {
      row1.removeAt(colNum);
      row1.insert(colNum, ' X ');
      printScore(row0: row0 , row1: row1 , row2: row2);
      checkPlayerOneIsWinner(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName);
    }
  }else if(rowNum == 2 && 0<=colNum && colNum<=2)
  {
    if(row2![colNum]!=' - ')
    {
      print('$playerOneName please enter correct number of row and col');
      Player1(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName);
    }else
    {
      row2.removeAt(colNum);
      row2.insert(colNum, ' X ');
      printScore(row0: row0 , row1: row1 , row2: row2);
      checkPlayerOneIsWinner(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName);
    }
  }else
  {
    print('$playerOneName please enter correct number of row and col');
    Player1(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName);
  }

}

Player2({List<String>? row0, List<String>? row1, List<String>? row2 , String? playerTwoName})
{
  print('$playerTwoName , please enter the row ? ');
  int rowNum = int.parse(stdin.readLineSync()!);
  print('$playerTwoName , please enter the col ? ');
  int colNum = int.parse(stdin.readLineSync()!);
  if(rowNum == 0 && 0<=colNum && colNum<=2)
  {
    if(row0![colNum]!=' - ')
    {
      print('$playerTwoName please enter correct number of row and col');
      Player2(row0: row0 , row1: row1 , row2: row2 , playerTwoName: playerTwoName);
    }else
    {
      row0.removeAt(colNum);
      row0.insert(colNum, ' O ');
      printScore(row0: row0 , row1: row1 , row2: row2);
      checkPlayerTwoIsWinner(row0: row0 , row1: row1 , row2: row2 , playerTwoName: playerTwoName);
    }
  }else if(rowNum == 1 && 0<=colNum && colNum<=2)
  {
    if(row1![colNum]!=' - ')
    {
      print('$playerTwoName please enter correct number of row and col');
      Player2(row0: row0 , row1: row1 , row2: row2 , playerTwoName: playerTwoName);
    }else
    {
      row1.removeAt(colNum);
      row1.insert(colNum, ' O ');
      printScore(row0: row0 , row1: row1 , row2: row2);
      checkPlayerTwoIsWinner(row0: row0 , row1: row1 , row2: row2 , playerTwoName: playerTwoName);
    }
  }else if(rowNum == 2 && 0<=colNum && colNum<=2)
  {
    if(row2![colNum]!=' - ')
    {
      print('$playerTwoName please enter correct number of row and col');
      Player2(row0: row0 , row1: row1 , row2: row2 , playerTwoName: playerTwoName);
    }else
    {
      row2.removeAt(colNum);
      row2.insert(colNum, ' O ');
      printScore(row0: row0 , row1: row1 , row2: row2);
      checkPlayerTwoIsWinner(row0: row0 , row1: row1 , row2: row2 , playerTwoName: playerTwoName);
    }
  }else
  {
    print('$playerTwoName please enter correct number of row and col');
    Player2(row0: row0 , row1: row1 , row2: row2 , playerTwoName: playerTwoName);
  }

}

ticTacToe({List<String>? row0, List<String>? row1, List<String>? row2 , String? playerOneName , String? playerTwoName})
{
  if(row0![0] != ' - ' && row0[1] != ' - ' && row0[2] != ' - ' && row1![0] != ' - ' && row1[1] != ' - ' && row1[2] != ' - ' && row2![0] != ' - ' && row2[1] != ' - ' && row2[2] != ' - ')
  {
    print('finish this game and no winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else
  {
    Player1(row0: row0, row1: row1, row2: row2, playerOneName: playerOneName);
  }
  if(row0[0] != ' - ' && row0[1] != ' - ' && row0[2] != ' - ' && row1![0] != ' - ' && row1[1] != ' - ' && row1[2] != ' - ' && row2![0] != ' - ' && row2[1] != ' - ' && row2[2] != ' - ')
  {
    print('finish this game and no winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else
  {
    Player2(row0: row0, row1: row1, row2: row2, playerTwoName: playerTwoName);
    ticTacToe(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }
}

printScore({List<String>? row0, List<String>? row1, List<String>? row2})
{
  print(row0);
  print(row1);
  print(row2);
}

checkPlayerOneIsWinner({List<String>? row0, List<String>? row1, List<String>? row2 , String? playerOneName, String? playerTwoName})
{
  if(row0![0] == ' X ' && row0[1] == ' X ' && row0[2] == ' X ' )
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row1![0] == ' X ' && row1[1] == ' X ' && row1[2] == ' X ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row2![0] == ' X ' && row2[1] == ' X ' && row2[2] == ' X ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[0] == ' X ' && row1[0] == ' X ' && row2[0] == ' X ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[1] == ' X ' && row1[1] == ' X ' && row2[1] == ' X ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[2] == ' X ' && row1[2] == ' X ' && row2[2] == ' X ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[0] == ' X ' && row1[1] == ' X ' && row2[2] == ' X ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[2] == ' X ' && row1[1] == ' X ' && row2[0] == ' X ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }
}

checkPlayerTwoIsWinner({List<String>? row0, List<String>? row1, List<String>? row2 , String? playerOneName, String? playerTwoName})
{
  if(row0![0] == ' O ' && row0[1] == ' O ' && row0[2] == ' O ' )
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row1![0] == ' O ' && row1[1] == ' O ' && row1[2] == ' O ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row2![0] == ' O ' && row2[1] == ' O ' && row2[2] == ' O ')
  {
    print('$playerOneName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[0] == ' O ' && row1[0] == ' O ' && row2[0] == ' O ')
  {
    print('$playerTwoName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[1] == ' O ' && row1[1] == ' O ' && row2[1] == ' O ')
  {
    print('$playerTwoName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[2] == ' O ' && row1[2] == ' O ' && row2[2] == ' O ')
  {
    print('$playerTwoName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[0] == ' O ' && row1[1] == ' O ' && row2[2] == ' O ')
  {
    print('$playerTwoName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }else if(row0[2] == ' O ' && row1[1] == ' O ' && row2[0] == ' O ')
  {
    print('$playerTwoName is winner');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }
}

rePlay({List<String>? row0, List<String>? row1, List<String>? row2 , String? playerOneName , String? playerTwoName})
{
  print('the game is over , if you want to play again please press 1 , otherwise press 0');
  int m = int.parse(stdin.readLineSync()!);
  if(m==1)
  {
    print('Player one , please enter your name ?');
    String playerOne=stdin.readLineSync()!;
    print('Player two , please enter your name ?');
    String playerTwo=stdin.readLineSync()!;
    List<String>? row0 = [' - ',' - ',' - '];
    List<String>? row1 = [' - ',' - ',' - '];
    List<String>? row2 = [' - ',' - ',' - '];
    ticTacToe(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOne , playerTwoName: playerTwo);
  }else if(m==0)
  {
    exit(0);
  }else
  {
    print('Please check that the is correct');
    rePlay(row0: row0 , row1: row1 , row2: row2 , playerOneName: playerOneName , playerTwoName: playerTwoName);
  }
}
