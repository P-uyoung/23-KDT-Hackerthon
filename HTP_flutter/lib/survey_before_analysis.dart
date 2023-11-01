import 'package:flutter/material.dart';


class SurveyBeforeAnalysis extends StatefulWidget {
  const SurveyBeforeAnalysis({Key? key}): super(key: key);

  @override
  State<SurveyBeforeAnalysis> createState() => SurveyBeforeAnalysisState();
}

class SurveyBeforeAnalysisState extends State<SurveyBeforeAnalysis> {
  bool? isChecked = true;
  String? selectTime;
  String? selectAge;
  double sliderValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF7B95C0),
          title: Text('설문 조사'),
        ),
        body: Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: [
              Text('1. 당신의 나이를 알려주세요 : <${sliderValue.toInt()}세>'),
              Slider(
                value: sliderValue,
                min: 0,
                max: 120,
                divisions: 120,
                label: '${sliderValue.toInt()}',
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              Text('2. 그림을 그리는 데 걸린 시간은 어느 정도인가요?'),
              Row(
                children: [
                  Radio(
                    value: '2분',
                    groupValue: selectTime,
                    onChanged: (String? value) {
                      setState(() {
                        selectTime = value;
                      });
                    },
                  ),
                  Text('2분 이하'),
                  Radio(
                    value: '5분',
                    groupValue: selectTime,
                    onChanged: (String? value) {
                      setState(() {
                        selectTime = value;
                      });
                    },
                  ),
                  Text('5분'),
                  Radio(
                    value: '10분',
                    groupValue: selectTime,
                    onChanged: (String? value) {
                      setState(() {
                        selectTime = value;
                      });
                    },
                  ),
                  Text('10분'),
                  Radio(
                    value: '초과',
                    groupValue: selectTime,
                    onChanged: (String? value) {
                      setState(() {
                        selectTime = value;
                      });
                    },
                  ),
                  Text('10분 초과')
                ],
              ),
              Text('3. 그림 속 사람의 나이는 어느 정도인가요?'),
              Row(
                children: [
                  Radio(
                    value: '어린이',
                    groupValue: selectAge,
                    onChanged: (String? value) {
                      setState(() {
                        selectAge = value;
                      });
                    },
                  ),
                  Text('어린이'),
                  Radio(
                    value: '청소년',
                    groupValue: selectAge,
                    onChanged: (String? value) {
                      setState(() {
                        selectAge = value;
                      });
                    },
                  ),
                  Text('청소년'),
                  Radio(
                    value: '성인',
                    groupValue: selectAge,
                    onChanged: (String? value) {
                      setState(() {
                        selectAge = value;
                      });
                    },
                  ),
                  Text('성인'),
                  Radio(
                    value: '노인',
                    groupValue: selectAge,
                    onChanged: (String? value) {
                      setState(() {
                        selectAge = value;
                      });
                    },
                  ),
                  Text('노인')
                ],
              ),

              Text('4. ~~~~~~~~~~'),



              Text('5. ~~~~~~~~~~'),

            ],
          )
        )
      )
    );
  }
}