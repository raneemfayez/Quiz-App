import 'package:flutter/material.dart';

TextEditingController userNameControler = TextEditingController();

List dataList = [
  {
    "CategoryName": "Sport test",
    "color": Colors.blue,
    "data": [
      {
        "question":
            "Who is considered the greatest basketball player of all time?",
        "answers": [
          {"ans": "LeBron James", "score": 0},
          {"ans": "Magic Johnson", "score": 0},
          {"ans": " Michael Jordan", "score": 1},
          {"ans": "  Kobe Bryant", "score": 0},
        ]
      },
      {
        "question": "Which country has won the most FIFA World Cup titles?",
        "answers": [
          {"ans": "Germany", "score": 0},
          {"ans": "Brazil", "score": 1},
          {"ans": "Italy", "score": 0},
          {"ans": "Argentina", "score": 0}
        ],
      },
      {
        "question":
            "Who holds the record for the most Grand Slam singles titles in tennis?",
        "answers": [
          {"ans": " Roger Federer", "score": 0},
          {"ans": " Rafael Nadal", "score": 0},
          {"ans": "Serena Williams", "score": 1},
          {"ans": " Novak Djokovic", "score": 0}
        ],
      }
    ],
  },
  {
    "CategoryName": "History test",
    "color": Colors.green,
    "data": [
      {
        "question": "Who was the last pharaoh of ancient Egypt?",
        "answers": [
          {"ans": "Ramses II", "score": 0},
          {"ans": "Hatshepsut", "score": 0},
          {"ans": " Cleopatra", "score": 1},
          {"ans": " Tutankhamun", "score": 0},
        ]
      },
      {
        "question": "Which ancient Egyptian god was associated with the sun?",
        "answers": [
          {"ans": "Osiris", "score": 0},
          {"ans": "Anubis", "score": 0},
          {"ans": "Ra", "score": 1},
          {"ans": "Horus", "score": 0}
        ],
      },
      {
        "question":
            " Which famous structure was built during the reign of Pharaoh Khufu?",
        "answers": [
          {"ans": " The Great Sphinx", "score": 0},
          {"ans": "The Valley of the Kings", "score": 0},
          {"ans": "The Temple of Karnak", "score": 0},
          {"ans": "The Great Pyramid of Giza", "score": 1}
        ],
      }
    ],
  },
  {
    "CategoryName": "General test",
    "color": Colors.red,
    "data": [
      {
        "question":
            " Which river was crucial to the development of ancient Egyptian civilization?",
        "answers": [
          {"ans": "Tigris River", "score": 0},
          {"ans": "Euphrates River", "score": 0},
          {"ans": " Nile River", "score": 1},
          {"ans": " Jordan River", "score": 0},
        ]
      },
      {
        "question": "Who was the first President of the United States? ",
        "answers": [
          {"ans": "Thomas Jefferson", "score": 0},
          {"ans": " George Washington", "score": 1},
          {"ans": "Abraham Lincoln", "score": 0},
          {"ans": "Ivory Coast", "score": 0}
        ],
      },
      {
        "question": "Which planet is known as the 'Red Planet'",
        "answers": [
          {"ans": " Venus", "score": 0},
          {"ans": " Mars ", "score": 1},
          {"ans": "Jupiter", "score": 0},
          {"ans": " Saturn", "score": 0}
        ],
      }
    ],
  },
  {
    "CategoryName": "IQ test",
    "color": Colors.yellow,
    "data": [
      {
        "question":
            "Who is considered the greatest basketball player of all time?",
        "answers": [
          {"ans": "LeBron James", "score": 0},
          {"ans": "Magic Johnson", "score": 0},
          {"ans": " Michael Jordan", "score": 1},
          {"ans": "  Kobe Bryant", "score": 0},
        ]
      },
      {
        "question": "Which country has won the most FIFA World Cup titles?",
        "answers": [
          {"ans": "Germany", "score": 0},
          {"ans": "Brazil", "score": 1},
          {"ans": "Italy", "score": 0},
          {"ans": "Argentina", "score": 0}
        ],
      },
      {
        "question":
            "Who holds the record for the most Grand Slam singles titles in tennis?",
        "answers": [
          {"ans": " Roger Federer", "score": 0},
          {"ans": " Rafael Nadal", "score": 0},
          {"ans": "Serena Williams", "score": 1},
          {"ans": " Novak Djokovic", "score": 0}
        ],
      }
    ],
  },
  {
    "CategoryName": "Math test",
    "color": Colors.grey,
    "data": [
      {
        "question":
            "Who is considered the greatest basketball player of all time?",
        "answers": [
          {"ans": "LeBron James", "score": 0},
          {"ans": "Magic Johnson", "score": 0},
          {"ans": " Michael Jordan", "score": 1},
          {"ans": "  Kobe Bryant", "score": 0},
        ]
      },
      {
        "question": "Which country has won the most FIFA World Cup titles?",
        "answers": [
          {"ans": "Germany", "score": 0},
          {"ans": "Brazil", "score": 1},
          {"ans": "Italy", "score": 0},
          {"ans": "Argentina", "score": 0}
        ],
      },
      {
        "question":
            "Who holds the record for the most Grand Slam singles titles in tennis?",
        "answers": [
          {"ans": " Roger Federer", "score": 0},
          {"ans": " Rafael Nadal", "score": 0},
          {"ans": "Serena Williams", "score": 1},
          {"ans": " Novak Djokovic", "score": 0}
        ],
      }
    ],
  },
  {
    "CategoryName": "English test",
    "color": Colors.deepOrange,
    "data": [
      {
        "question":
            "Who is considered the greatest basketball player of all time?",
        "answers": [
          {"ans": "LeBron James", "score": 0},
          {"ans": "Magic Johnson", "score": 0},
          {"ans": " Michael Jordan", "score": 1},
          {"ans": "  Kobe Bryant", "score": 0},
        ]
      },
      {
        "question": "Which country has won the most FIFA World Cup titles?",
        "answers": [
          {"ans": "Germany", "score": 0},
          {"ans": "Brazil", "score": 1},
          {"ans": "Italy", "score": 0},
          {"ans": "Argentina", "score": 0}
        ],
      },
      {
        "question":
            "Who holds the record for the most Grand Slam singles titles in tennis?",
        "answers": [
          {"ans": " Roger Federer", "score": 0},
          {"ans": " Rafael Nadal", "score": 0},
          {"ans": "Serena Williams", "score": 1},
          {"ans": " Novak Djokovic", "score": 0}
        ],
      }
    ],
  },
];
