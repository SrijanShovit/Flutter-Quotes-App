class Quote {
  String text;
  String author;

  //Constructor is used to provide values to fields as soon as an instance of class is created
//   Quuote(String text,String author)
//   {
//     text = this.text;
//     author = this.author;
//   }
//
//   Quuote my = Quuote('jhingalala','Srijan');
// }

//Instead using named parameters
  Quote({required this.author, required this.text});
}
