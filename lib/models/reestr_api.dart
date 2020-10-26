import 'dart:convert';

List<Reestr> reestrFromJson(String str) => List<Reestr>.from(json.decode(str).map((x) => Reestr.fromJson(x)));

String reestrToJson(List<Reestr> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Reestr {
    Reestr({
        this.id,
        this.kodDetali,
        this.pib,
        this.zamovlenaDetal,
        this.nazvaKategoriyi,
        this.dataZamovlennya,
    });

    String id;
    String kodDetali;
    String pib;
    String zamovlenaDetal;
    String nazvaKategoriyi;
    DateTime dataZamovlennya;

    factory Reestr.fromJson(Map<String, dynamic> json) => Reestr(
        id: json["id"],
        kodDetali: json["kodDetali"],
        pib: json["pib"],
        zamovlenaDetal: json["zamovlenaDetal"],
        nazvaKategoriyi: json["nazvaKategoriyi"],
        dataZamovlennya: DateTime.parse(json["dataZamovlennya"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "kodDetali": kodDetali,
        "pib": pib,
        "zamovlenaDetal": zamovlenaDetal,
        "nazvaKategoriyi": nazvaKategoriyi,
        "dataZamovlennya": "${dataZamovlennya.year.toString().padLeft(4, '0')}-${dataZamovlennya.month.toString().padLeft(2, '0')}-${dataZamovlennya.day.toString().padLeft(2, '0')}",
    };
}
