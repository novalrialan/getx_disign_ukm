import 'package:flutter/material.dart';

class ActivityDetail extends StatelessWidget {
  const ActivityDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF6FF),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/ft_consept1.png",
                fit: BoxFit.contain,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: const [
                Text(
                  "Crud Laravel 8",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // name ft
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: const [
                Text(
                  "Cristian Duri",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),

          Stack(
            children: [
              Positioned(child: Image.asset("assets/icons/detail_group.png")),
              Container(
                padding: const EdgeInsets.all(12.0),
                alignment: Alignment.center,
                child: const Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero perspiciatis optio nisi dolor odio repellendus voluptate corrupti eaque deserunt consectetur, error sit ullam, ut, rem dolorum. Commodi deserunt asperiores molestias in odio aliquam, magnam vel inventore autem reprehenderit est voluptatum harum architecto doloribus quaerat deleniti perspiciatis dolore at animi labore exercitationem neque perferendis? Aspernatur natus saepe voluptas dignissimos officia, fugiat quod tenetur nam obcaecati! Dolor ipsam voluptatum illo quae labore sunt temporibus, enim ullam reiciendis eveniet. Recusandae ex eum hic laborum ab animi eius nobis iure iusto, repellat voluptas illum libero reiciendis velit earum quis accusamus. Tempore explicabo officia accusamus!',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
