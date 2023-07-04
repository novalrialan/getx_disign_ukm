import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key, required this.title, required this.description});

  final String title;
  final String description;

  static const lorem =
      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Et eveniet consequuntur numquam fugit facilis consequatur, est, quia facere nostrum veniam praesentium repellendus ex vitae aut ea voluptates possimus porro. Quam ut quia commodi quod similique culpa quis expedita! Autem unde dolorem iure officia! A eos voluptatum velit quis nihil obcaecati aut quisquam sunt ipsam veniam pariatur culpa harum omnis, quas tempore quaerat laboriosam sed accusantium doloribus et facilis voluptatibus quia beatae iusto! Ratione, obcaecati dolores odio architecto animi doloremque doloribus? Veniam necessitatibus esse accusamus illum! Inventore, repellendus assumenda doloremque accusamus dignissimos sunt quam adipisci iusto, iste voluptatibus sequi est deserunt.';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: [
            Image.asset('assets/images/ft_consept1.png'),
            ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                collapsed: const Text(lorem,
                    style: TextStyle(fontSize: 18),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify),
                expanded: Text(
                  List.generate(5, (_) => lorem).join('\n\n'),
                  style: const TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
