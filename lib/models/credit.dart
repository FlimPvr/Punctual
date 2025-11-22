enum Name{  
  Flim(title : "Phumiphat",image: "assets/images/Flim.jpg");
  
  const Name({required this.title,required this.image});
  final String title;
  final String image;
}




class Credit {
  Credit(
      {required this.name,
      required this.floor,});
  Name name;
  String floor;
}

List<Credit> data = [
  Credit(
      name: Name.Flim, floor: "Late 2024 - Early 2025 ",),
];
