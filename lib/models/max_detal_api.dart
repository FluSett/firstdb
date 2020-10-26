import 'dart:convert';

List<MaxDetal> maxDetalFromJson(String str) => List<MaxDetal>.from(json.decode(str).map((x) => MaxDetal.fromJson(x)));

String maxDetalToJson(List<MaxDetal> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MaxDetal {
    MaxDetal({
        this.maxKodDetali1,
    });

    String maxKodDetali1;

    factory MaxDetal.fromJson(Map<String, dynamic> json) => MaxDetal(
        maxKodDetali1: json["(MAX(kodDetali) + 1)"],
    );

    Map<String, dynamic> toJson() => {
        "(MAX(kodDetali) + 1)": maxKodDetali1,
    };
}
