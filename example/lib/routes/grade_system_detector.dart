import 'package:flutter/material.dart';
import 'package:gradr_lib/gradr_lib.dart';

class GradeSystemDetectorScreen extends StatefulWidget {
  const GradeSystemDetectorScreen({Key? key}) : super(key: key);

  @override
  _GradeSystemDetectorScreenState createState() => _GradeSystemDetectorScreenState();
}

class _GradeSystemDetectorScreenState extends State<GradeSystemDetectorScreen> {
  List<GradeSystem> detectedSystems = [];
  GradeSystemDetector detector = GradeSystemDetector(
    detectors: [
      VScaleGradeDetector(),
      FontGradeDetector(),
      FontGradeDetector(),
    ],
  );
  TextEditingController fieldController = TextEditingController();

  bool get systemsDetected => detectedSystems.isNotEmpty;

  detectSystem(String grade) {
    setState(
      () => detectedSystems = detector.detect(grade).detectedSystems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grade System Detector'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 14),
          child: Column(
            children: [
              const Text(
                'Enter the grade and gradr will try to detect the correct grading system.',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter a grade",
                ),
                controller: fieldController,
                onFieldSubmitted: (v) {
                  detectSystem(v);
                },
              ),
              const SizedBox(height: 32),
              if (!systemsDetected)
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      GradeSystemWidget(
                        gradeSystem: null,
                      ),
                    ],
                  ),
                ),
              if (systemsDetected)
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: detectedSystems
                        .map((system) => GradeSystemWidget(gradeSystem: system))
                        .toList(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradeSystemWidget extends StatelessWidget {
  final GradeSystem? gradeSystem;

  const GradeSystemWidget({
    Key? key,
    required this.gradeSystem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            gradeSystem != null ? gradeSystem!.name : 'No System Detected',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 8),
          Text(
            gradeSystem != null ? gradeSystem!.code : 'N/D',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
