import 'dart:convert';

List<Answer1> answer1FromJson(String str) => List<Answer1>.from(json.decode(str).map((x) => Answer1.fromJson(x)));

String answer1ToJson(List<Answer1> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer1 {
    Answer1({
        this.answer1,
    });

    String answer1;

    factory Answer1.fromJson(Map<String, dynamic> json) => Answer1(
        answer1: json["answer1"],
    );

    Map<String, dynamic> toJson() => {
        "answer1": answer1,
    };
}

List<Answer2> answer2FromJson(String str) => List<Answer2>.from(json.decode(str).map((x) => Answer2.fromJson(x)));

String answer2ToJson(List<Answer2> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer2 {
    Answer2({
        this.answer2,
    });

    String answer2;

    factory Answer2.fromJson(Map<String, dynamic> json) => Answer2(
        answer2: json["answer2"],
    );

    Map<String, dynamic> toJson() => {
        "answer2": answer2,
    };
}

List<Answer3> answer3FromJson(String str) => List<Answer3>.from(json.decode(str).map((x) => Answer3.fromJson(x)));

String answer3ToJson(List<Answer3> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer3 {
    Answer3({
        this.answer3,
    });

    String answer3;

    factory Answer3.fromJson(Map<String, dynamic> json) => Answer3(
        answer3: json["answer3"],
    );

    Map<String, dynamic> toJson() => {
        "answer3": answer3,
    };
}

List<Answer4> answer4FromJson(String str) => List<Answer4>.from(json.decode(str).map((x) => Answer4.fromJson(x)));

String answer4ToJson(List<Answer4> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer4 {
    Answer4({
        this.answer4,
    });

    String answer4;

    factory Answer4.fromJson(Map<String, dynamic> json) => Answer4(
        answer4: json["answer4"],
    );

    Map<String, dynamic> toJson() => {
        "answer4": answer4,
    };
}

List<Answer5> answer5FromJson(String str) => List<Answer5>.from(json.decode(str).map((x) => Answer5.fromJson(x)));

String answer5ToJson(List<Answer5> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer5 {
    Answer5({
        this.answer5X1,
        this.answer5X2,
    });

    String answer5X1;
    String answer5X2;

    factory Answer5.fromJson(Map<String, dynamic> json) => Answer5(
        answer5X1: json["answer5x1"],
        answer5X2: json["answer5x2"],
    );

    Map<String, dynamic> toJson() => {
        "answer5x1": answer5X1,
        "answer5x2": answer5X2,
    };
}

List<Answer6> answer6FromJson(String str) => List<Answer6>.from(json.decode(str).map((x) => Answer6.fromJson(x)));

String answer6ToJson(List<Answer6> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer6 {
    Answer6({
        this.answer6,
    });

    String answer6;

    factory Answer6.fromJson(Map<String, dynamic> json) => Answer6(
        answer6: json["answer6"],
    );

    Map<String, dynamic> toJson() => {
        "answer6": answer6,
    };
}

List<Answer7> answer7FromJson(String str) => List<Answer7>.from(json.decode(str).map((x) => Answer7.fromJson(x)));

String answer7ToJson(List<Answer7> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer7 {
    Answer7({
        this.answer7X1,
        this.answer7X2,
    });

    String answer7X1;
    DateTime answer7X2;

    factory Answer7.fromJson(Map<String, dynamic> json) => Answer7(
        answer7X1: json["answer7x1"],
        answer7X2: DateTime.parse(json["answer7x2"]),
    );

    Map<String, dynamic> toJson() => {
        "answer7x1": answer7X1,
        "answer7x2": "${answer7X2.year.toString().padLeft(4, '0')}-${answer7X2.month.toString().padLeft(2, '0')}-${answer7X2.day.toString().padLeft(2, '0')}",
    };
}

List<Answer8> answer8FromJson(String str) => List<Answer8>.from(json.decode(str).map((x) => Answer8.fromJson(x)));

String answer8ToJson(List<Answer8> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer8 {
    Answer8({
        this.answer8,
    });

    String answer8;

    factory Answer8.fromJson(Map<String, dynamic> json) => Answer8(
        answer8: json["answer8"],
    );

    Map<String, dynamic> toJson() => {
        "answer8": answer8,
    };
}

List<Answer9> answer9FromJson(String str) => List<Answer9>.from(json.decode(str).map((x) => Answer9.fromJson(x)));

String answer9ToJson(List<Answer9> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer9 {
    Answer9({
        this.answer9,
    });

    String answer9;

    factory Answer9.fromJson(Map<String, dynamic> json) => Answer9(
        answer9: json["answer9"],
    );

    Map<String, dynamic> toJson() => {
        "answer9": answer9,
    };
}

List<Answer10> answer10FromJson(String str) => List<Answer10>.from(json.decode(str).map((x) => Answer10.fromJson(x)));

String answer10ToJson(List<Answer10> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Answer10 {
    Answer10({
        this.answer10,
    });

    String answer10;

    factory Answer10.fromJson(Map<String, dynamic> json) => Answer10(
        answer10: json["answer10"],
    );

    Map<String, dynamic> toJson() => {
        "answer10": answer10,
    };
}
