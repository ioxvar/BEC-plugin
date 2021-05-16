import 'package:flutter/material.dart';

class Sem7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Semester 7'),
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Row(
                // mainAxisAlignment: mainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Subject',
                      ),
                    ),
                  ),
                  //Spacer(flex: 2),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Marks',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: mainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Subject',
                      ),
                    ),
                  ),
                  //Spacer(flex: 2),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Marks',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: mainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Subject',
                      ),
                    ),
                  ),
                  //Spacer(flex: 2),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Marks',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: mainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Subject',
                      ),
                    ),
                  ),
                  //Spacer(flex: 2),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Marks',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: mainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Subject',
                      ),
                    ),
                  ),
                  //Spacer(flex: 2),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Marks',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: mainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Subject',
                      ),
                    ),
                  ),
                  //Spacer(flex: 2),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Marks',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              GestureDetector(
                onTap: () {
                  Row(
                    // mainAxisAlignment: mainAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter course/branch',
                            labelText: 'Subject',
                          ),
                        ),
                      ),
                      //Spacer(flex: 2),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter course/branch',
                            labelText: 'Marks',
                          ),
                        ),
                      ),
                    ],
                  );
                },
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                        height: 50.0,
                        width: 180.0,
                        child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            shadowColor: Colors.teal[600],
                            color: Colors.teal[600],
                            elevation: 7.0,
                            child: Center(
                                child: Text('NEXT SEMESTER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        //fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')))));
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
