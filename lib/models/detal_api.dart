import 'dart:convert';

List<Detal> detalFromJson(String str) => List<Detal>.from(json.decode(str).map((x) => Detal.fromJson(x)));

String detalToJson(List<Detal> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Detal {
    Detal({
        this.kodDetali,
        this.kategoriyaDetali,
        this.nazvaDetali,
        this.specifikaciya,
        this.nayavnaKilkist,
        this.gurtovaCina,
    });

    String kodDetali;
    String kategoriyaDetali;
    String nazvaDetali;
    String specifikaciya;
    String nayavnaKilkist;
    String gurtovaCina;

    factory Detal.fromJson(Map<String, dynamic> json) => Detal(
        kodDetali: json["kodDetali"],
        kategoriyaDetali: json["kategoriyaDetali"],
        nazvaDetali: json["nazvaDetali"],
        specifikaciya: json["specifikaciya"],
        nayavnaKilkist: json["nayavnaKilkist"],
        gurtovaCina: json["gurtovaCina"],
    );

    Map<String, dynamic> toJson() => {
        "kodDetali": kodDetali,
        "kategoriyaDetali": kategoriyaDetali,
        "nazvaDetali": nazvaDetali,
        "specifikaciya": specifikaciya,
        "nayavnaKilkist": nayavnaKilkist,
        "gurtovaCina": gurtovaCina,
    };
}
