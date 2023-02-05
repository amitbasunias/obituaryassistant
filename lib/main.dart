import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obituary Writing Assistant',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Obituary Writing Assistant'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _activeStepIndex = 0;
  TextEditingController name = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController pname = TextEditingController();
  TextEditingController bdate = TextEditingController();
  TextEditingController ddate = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController birthplace = TextEditingController();
  TextEditingController dplace = TextEditingController();
  TextEditingController schoolname = TextEditingController();
  TextEditingController graduate = TextEditingController();
  TextEditingController memberof = TextEditingController();
  TextEditingController volunteerof = TextEditingController();
  TextEditingController employment = TextEditingController();
  TextEditingController hobbies = TextEditingController();
  TextEditingController achievements = TextEditingController();
  TextEditingController passion = TextEditingController();
  TextEditingController memorablevacation = TextEditingController();
  TextEditingController spouse = TextEditingController();
  TextEditingController countsons = TextEditingController();
  TextEditingController sonsname = TextEditingController();
  TextEditingController countdaughter = TextEditingController();
  TextEditingController daughtersname = TextEditingController();
  TextEditingController countgrandchild = TextEditingController();
  TextEditingController grandchildsname = TextEditingController();
  TextEditingController countgreatgrandchild = TextEditingController();
  TextEditingController greatgrandchildsname = TextEditingController();
  TextEditingController countbrothers = TextEditingController();
  TextEditingController brothersname = TextEditingController();
  TextEditingController countsisters = TextEditingController();
  TextEditingController sistersname = TextEditingController();
  TextEditingController parentsname = TextEditingController();
  TextEditingController grandparentsname = TextEditingController();
  TextEditingController pets = TextEditingController();
  TextEditingController other = TextEditingController();
  TextEditingController pdnumberofchildren = TextEditingController();
  TextEditingController pdchildrennames = TextEditingController();
  TextEditingController pddmother = TextEditingController();
  TextEditingController pddfather = TextEditingController();
  TextEditingController pddbrothercount = TextEditingController();
  TextEditingController pddbrothernames = TextEditingController();
  TextEditingController pddsistercount = TextEditingController();
  TextEditingController pddsisternames = TextEditingController();
  TextEditingController pddpet = TextEditingController();
  TextEditingController visitingdate = TextEditingController();
  TextEditingController prayerdate = TextEditingController();
  TextEditingController servicedate = TextEditingController();
  TextEditingController gravesitedate = TextEditingController();
  TextEditingController receptiontime = TextEditingController();
  TextEditingController thankyou = TextEditingController();
  TextEditingController poem = TextEditingController();
  TextEditingController mostremembered = TextEditingController();

  final _output = TextEditingController();


  List<Step> stepList() => [
    Step(
      state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 0,
      title: const Text('Details'),
      content: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: fname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name (of deceased)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: lname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name (of deceased)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: pname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Preferred Name (Name They Went)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
                        TextField(
              controller: bdate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date of birth',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
                        TextField(
              controller: ddate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date of death',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
                        TextField(
              controller: age,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Age',
              ),
            ),
            const SizedBox(
              height: 12,
            ),
                        TextField(
              controller: birthplace,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Place of Birth',
              ),
            ),
            const SizedBox(
              height: 12,
            ),

            TextField(
              controller: dplace,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City of residence at time of death',
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: schoolname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Graduated From School (Name of School)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: graduate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Graduated From (Name of program / degree)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),



          ],
        ),
      ),
    ),

    Step(
      state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 1,
      title: const Text('More Details'),
      content: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: memberof,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Was a Member Of:(Organization name)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: volunteerof,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Volunteered with (Organization name)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: employment,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Employment  (years of service)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: hobbies,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Hobbies, sports, interests, activities, and other enjoyment',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: achievements,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Particularly proud of (moments / achievements)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: passion,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enjoyed, loved had a passion for… (activity / hobby / passion)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: memorablevacation,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Most memorable vacation… (location and at what age)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
    TextField(
              controller: spouse,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Spouse / Significant Other',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
         TextField(
              controller: countsons,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Number of Sons (of the deceased)',
              ),
            ),
            const SizedBox(
              height: 8,
            ),

         TextField(
              controller: sonsname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Sons' Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


         TextField(
              controller: countdaughter,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Daughters (of the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


         TextField(
              controller: daughtersname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Daughters' Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),




          ],
        ),
      ),
    ),

    Step(
      state: _activeStepIndex <= 2 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 2,
      title: const Text('Survived By:'),
      content: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: countgrandchild,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Grandchildren (of the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: grandchildsname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Grandchildren's Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: countgreatgrandchild,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Great-Grandchildren (of the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: greatgrandchildsname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Great-Grandchildren's Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: countbrothers,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Brothers (of the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),



            TextField(
              controller: brothersname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Brothers' Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: countsisters,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Sisters (of the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: sistersname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Sisters' Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: parentsname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Parents' Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: grandparentsname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Grand Parents' Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: pets,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Pets",
              ),
            ),
            const SizedBox(
              height: 8,
            ),




          ],
        ),
      ),
    ),

    Step(
      state: _activeStepIndex <= 3 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 3,
      title: const Text('Predeceased by'),
      content: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: other,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Spouse / Significant Other",
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            TextField(
              controller: pdnumberofchildren,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Children (predeceased the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),


            TextField(
              controller: pdchildrennames,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Children’s Names ",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pddmother,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Mother's Name (predeceased the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pddfather,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Fathers's Name (predeceased the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pddbrothercount,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Brothers (predeceased the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pddbrothernames,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Brothers's Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pddsistercount,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number of Sisters (predeceased the deceased)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pddsisternames,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Sister's Names",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: pddpet,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Pet",
              ),
            ),
            const SizedBox(
              height: 8,
            ),





          ],
        ),
      ),
    ), Step(
      state: _activeStepIndex <= 4 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 4,
      title: const Text('Conclusion'),
      content: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: visitingdate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Visitation date, time and location",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: prayerdate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Prayer date, time and location",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: servicedate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Service date, time, location and type(mass Memorial etc)",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: gravesitedate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Graveside date, time and location",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: receptiontime,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Reception time and location",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: thankyou,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Thank you to people, groups, or institutions",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: poem,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Quotation or poem",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: mostremembered,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Will be most remembered for...",
              ),
            ),
            const SizedBox(
              height: 8,
            ),




          ],
        ),
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          SizedBox(
            height: 800,
            child: Stepper(
            type: StepperType.horizontal,
            currentStep: _activeStepIndex,
            steps: stepList(),
            onStepContinue: () {
              if (_activeStepIndex < (stepList().length - 1)) {
                setState(() {
                  _activeStepIndex += 1;
                });
              } else {
                print('Submited');
              }
            },
            onStepCancel: () {
              if (_activeStepIndex == 0) {
                return;
              }
              setState(() {
                _activeStepIndex -= 1;
              });
            },
            onStepTapped: (int index) {
              setState(() {
                _activeStepIndex = index;
              });
            },
            controlsBuilder: (BuildContext context, ControlsDetails controls) {
              final isLastStep = _activeStepIndex == stepList().length - 1;


              return Container(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed:isLastStep
                            ? () async {
                          // Call OpenAI GPT-3 API here
                          try {
                            final response = await http.post(
                                Uri.parse("https://api.openai.com/v1/engines/text-davinci-003/completions"),
                                headers: {
                                  "Content-Type": "application/json",
                                  "Authorization":
                                  "Bearer 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"
                                },
                                body: jsonEncode({
                                  "prompt":
                                  "Write a Long Obituary Blog using following data \n First Name: ${fname.text}\n Last Name: ${lname.text} \n Preferred Name: ${pname.text}\n Date of birth: ${bdate.text}\n Date of death: ${ddate.text}\n Age: ${age.text}\n Birthplace: ${birthplace.text}\ncity of residence at time of death: ${dplace.text}\n School:${schoolname.text}\n School:${schoolname.text}\n Gradueted From:${graduate.text}\n Was Member of this organization:${memberof.text}\n Volunteered With:${volunteerof.text}\nEmployment:${employment.text}\nHobbies and Activities:${hobbies.text}\nAchievements:${achievements.text}\nPassion:${passion.text}\nmemorable vacation:${memorablevacation.text}\nspouse:${spouse.text}\nNumber of Sons (of the deceased):${countsons.text}\nSons Names:${sonsname.text}\nNumber of Daughters (of the deceased):${countdaughter.text}\nDaughters' Names:${daughtersname.text}\nNumber of Grandchildren (of the deceased):${countgrandchild.text}\nGrandchildren's Names:${grandchildsname.text}\nNumber of Great-Grandchildren (of the deceased):${countgreatgrandchild.text}\nGreat-Grandchildren's Names:${greatgrandchildsname.text}\nNumber of Brothers (of the deceased):${countbrothers.text}\nBrothers' Names:${brothersname.text}\nNumber of Sisters (of the deceased):${countsisters.text}\nSisters' Names:${sistersname.text}\nParents' Names:${parentsname.text}\nGrandParents' Names:${grandparentsname.text}\nPets:${pets.text}\n Predeceased By:\nSignificant Others:${other.text}\nNumber of Children (predeceased the deceased):${pdnumberofchildren.text}\nChildren’s Names (predeceased the deceased):${pdchildrennames.text}\nMother’s Name (predeceased the deceased):${pddmother.text}\nFather’s Name (predeceased the deceased):${pddfather.text}\nNumber of Brothers (predeceased the deceased):${pddbrothercount.text}\nBrothers's Names (predeceased the deceased):${pddbrothernames.text}\nNumber of Sisters (predeceased the deceased):${pddsistercount.text}\nSister's Names (predeceased the deceased):${pddsisternames.text}\nPet (predeceased the deceased):${pddpet.text}\nVisitation date, time and location:${visitingdate.text}\nPrayer date, time and location:${prayerdate.text}\nService date, time, type and location:${servicedate.text}\nGraveside date, time and location:${gravesitedate.text}\nReception time and location:${receptiontime.text}\nConclusion:\nThank you to people, groups, or institutions:${thankyou.text}\nQuotation or poem:${poem.text}\nWill be most remembered for: ${mostremembered.text}\n",
                                  "temperature": 0.2,
                                  "max_tokens": 2500,
                                  "top_p": 1,
                                  "frequency_penalty": 0,
                                  "frequency_penalty": 0,


                                }));
                            if (response.statusCode == 200) {
                              final data = jsonDecode(response.body);
                              final output= data["choices"][0]["text"];

                              setState(() {
                                _output.text = output;
                              });
                              //print(output);

                            } else {
                              throw Exception('Failed to call API');
                            }
                          } catch (e) {
                            print(e);
                          }

                        }


                            :controls.onStepContinue,
                        child: (isLastStep)
                            ? const Text('Submit')
                            : const Text('Next'),
                      ),


                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    if (_activeStepIndex > 0)
                      Expanded(
                        child: ElevatedButton(
                          onPressed: controls.onStepCancel,
                          child: const Text('Back'),
                        ),
                      )
                  ],

                ),

              );

            },
          ),),


          Expanded(
            child:
            TextField(

              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Output',
            ),
            controller: _output,
          ),
          ),
            const SizedBox(
              width: 10,
            ),
  Expanded(
            child:
            ElevatedButton(
                onPressed: (){
                  Clipboard.setData(ClipboardData(text: _output.text));
                },
                child: Text("Copy Text")
            ),
          ),

    ],
    ),
      ),
    );
  }
}