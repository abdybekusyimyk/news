import 'package:bazar/models/news.dart';
import 'package:flutter/material.dart';

class LetesPage extends StatelessWidget {
  const LetesPage({Key? key}) : super(key: key);

  static List<News> news = [
    News(
        title: 'Display images from the internet',
        content: 'content',
        data: ' 13 mart 2022',
        time: '12:34',
        watchCounter: '520',
        imgUrl:
            'https://miro.medium.com/max/1400/1*8U9my6iR2E1asU7qXsA08Q.jpeg'),
    News(
        title: 'Navigation and routing routing routingv ',
        content: 'content',
        data: ' 13 mart 2022',
        time: '12:34',
        watchCounter: '520',
        imgUrl:
            'https://camposha.info/flutter/wp-content/uploads/sites/21/2021/05/g006f3558f39ad2e697a56dd673b30aad94a3d4105bead206648d65dc08a988a98e1f6c06b13ff5d8b830c1c6c44301f2_640_network.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: news.length,
          itemBuilder: (BuildContext context, int index) {
            return newsItem(news[index]);
          }),
    );
  }

  Widget newsItem(News news) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Маaлыматар',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "${news.time} | ${news.data} |",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.blue[300],
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(news.watchCounter)
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                news.imgUrl,
                width: 180,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                  child: Text(
                news.title,
                style: TextStyle(fontWeight: FontWeight.w600, height: 1.2),
              ))
            ],
          ),
          Divider(
            thickness: 1.0,
          )
        ],
      ),
    );
  }
}
