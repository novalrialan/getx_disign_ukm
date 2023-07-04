import 'package:app_ukm/app/model/work_model.dart';
import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Work"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final WorkModel workmodel = workList[index];
            return InkWell(
              onTap: () {},
              child: Card(
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(workmodel.title),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        workmodel.date,
                        style: const TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 2,
        ),
      ),
    );
  }
}
