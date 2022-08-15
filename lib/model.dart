import 'dart:convert';

import 'package:flutter/cupertino.dart';

List<UserModel> userModelFromJson(String str) => 
List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => 
json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
int? id;
String? name;
String username;
String email;
Address? address;
String? phone;
String? website;
Company? company;
String thumbnailUrl;

UserModel({
    this.id,
    this.name,
    required this.username,
    required this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
   required this.thumbnailUrl
});

factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    address: Address.fromJson(json["address"]),
    phone: json["phone"],
    website: json["website"],
    company: Company.fromJson(json["company"]),
    thumbnailUrl: json["thumbnailUrl"],
);

Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "address": address,
    "phone": phone,
    "website": website,
    "company": company,
};
}

class Address {
String? street;
String? suite;
String? city;
String? zipcode;
Geo? geo;

Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
});

factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"],
    suite: json["suite"],
    city: json["city"],
    zipcode: json["zipcode"],
    geo: Geo.fromJson(json["geo"]),
);

Map<String, dynamic> toJson() => {
    "street": street,
    "suite": suite,
    "city": city,
    "zipcode": zipcode,
    "geo": geo
};
}

class Geo {
String? lat;
String? lng;

Geo({
    this.lat,
    this.lng,
});

factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"],
    lng: json["lng"],
);

Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
};
}

class Company {
String? name;
String? catchPhrase;
String? bs;

Company({
    this.name,
    this.catchPhrase,
    this.bs,
});

factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["name"],
    catchPhrase: json["catchPhrase"],
    bs: json["bs"],
);

Map<String, dynamic> toJson() => {
    "name": name,
    "catchPhrase": catchPhrase,
    "bs": bs,
};
}
