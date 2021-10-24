import 'package:flutter/material.dart';
import 'package:temelwidgets/models/student.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()
  ));
}


class MyApp extends StatelessWidget{
  String mesaj = 'Öğrenci Takip Sistemi';
  List<Student> students = [Student('Rıdvan', 'Usta', 25),Student('Mehmet Efe', 'Çelik', 65),Student('Ahmetcan', 'Buldum', 45)];

  var ogrenciler = ['Engin Demiroğ','Kerem Varış','Berkay Bilgin','Murat Yücedağ'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: buildBody(context),

    );
  }

  Widget buildBody(BuildContext context) {

    return Column(
      children: <Widget>[
        Expanded(

            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2018/06/27/07/45/student-3500990_960_720.jpg'),
                    ),
                    title: Text(students[index].firstName + ' ' + students[index].lastName),
                    subtitle: Text('^Sınavdan aldığı not : ' + students[index].grade.toString()),
                    trailing: buildStatusIcon(students[index].grade),
                    onTap: (){
                      print(students[index].firstName + ' ' + students[index].lastName);
                    },
                  );
                })

        ),
        Center(child: RaisedButton(
          child: Text('Sonucu Gör!'),
          onPressed: (){
            int puan = 15;
            String mesaj = '';
            if(puan>=50) {
              mesaj = 'Geçti';

            }else if(puan>=40){
              mesaj = 'Bütünlemeye Kaldı';

            }else{
              mesaj = 'Kaldı';
            }

            var alert = AlertDialog(
              title: Text('Sınav Sonucu'),
              content: Text(mesaj),
            );

            showDialog(context: context, builder: (BuildContext context)=>alert);
          },
        ),
        ),

      ],

    );

  }

  Widget buildStatusIcon(int grade) {
    if(grade>=50) {
      return Icon(Icons.done);
    }else if(grade>=40){
      return Icon(Icons.album);

    }else{
      return Icon(Icons.clear);
    }

  }
}
