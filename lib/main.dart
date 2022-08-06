import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:one(),
    ));
}
class one extends StatefulWidget {
  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
    TextEditingController t1=TextEditingController();

    TextEditingController t2=TextEditingController();

    int n1=0,n2=0,sum=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form")),
      body: Column(
        children: [
          TextField(onChanged: (value) {
            String a=value;
            if(a.isEmpty)
              {
                n1=0;
              }
            else
              {
                n1=int.parse(a);
              }
            String b=t2.text;
            if(b.isEmpty)
              {
                n2=0;
              }
            else
              {
                n2=int.parse(b);
              }
            setState(() {
              sum=n1+n2;
            });
          },controller: t1,),
          TextField(onChanged: (value) {
            String a=t1.text;
            if(a.isEmpty)
              {
                n1=0;
              }
            else
              {
                n1=int.parse(a);
              }
            String b=value;
            if(b.isEmpty)
              {
                n2=0;
              }
            else
            {
              n2=int.parse(b);
            }
            setState(() {
              sum=n1+n2;
            });
          },controller: t2,),
          OutlinedButton(onPressed: () {
            String a=t1.text;
            String b=t2.text;

            if(a.isEmpty && b.isEmpty)
              {
                n1=0;
                n2=0;
              }
            else if(a.isEmpty)
              {
                n1=0;
                n2=int.parse(b);
              }
            else if(b.isEmpty)
              {
                n1=int.parse(a);
                n2=0;
              }
            else
              {
                n1=int.parse(a);
                n2=int.parse(b);
              }
            setState(() {
              sum=n1+n2;
            });
            print(sum);

          }, child: Text("Sum")),
          Text("Ans=${sum}"),
        ],
      ),
    );

  }
}

