import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../theme/theme_service.dart';
import '../splash_screen/widgets/category_item_widget.dart';
import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller = Get.put(HomeController());

  final PageController _pageController = PageController(initialPage: 0);
  final List<String> imageUrls = [
    'https://avatars.mds.yandex.net/i?id=c12bcb1b4b927242278253a4173b3f51992ccfe1-10995513-images-thumbs&n=13',
    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltaeef02053e384b33/63c9a1b7b3a8403be5f51b30/Ronaldo_celebrate_saudi_friendly_goal.png',
    'https://www.panenka.org/wp-content/uploads/2022/04/villarreal-cf-v-juventus-round-of-sixteen-leg-one-uefa-champions-league-scaled-e1649239796977.jpg'
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.page == imageUrls.length - 1) {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Iconsax.notification),
                onPressed: () {
                  // Change theme or do other actions
                  ThemeService().changeThemeMode();
                },
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              //carousel slider
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageUrls[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Nearby your location',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              CategoryItemWidget(controller: controller),
              const MyCard(
                imageUrl:
                    'https://steamuserimages-a.akamaihd.net/ugc/2035118408919986843/775CB10B986EABFD112CDADDD8F5C771B8BD7DFF/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true',
                title: 'Burger King',
                subtitle: 'Fast Food',
                distance: '1.2 km',
                rating: '4.5',
              ),
              const MyCard(
                imageUrl:
                    'https://steamuserimages-a.akamaihd.net/ugc/2035118408919986843/775CB10B986EABFD112CDADDD8F5C771B8BD7DFF/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true',
                title: 'Burger King',
                subtitle: 'Fast Food',
                distance: '1.2 km',
                rating: '4.5',
              ),
              const MyCard(
                imageUrl:
                    'https://steamuserimages-a.akamaihd.net/ugc/2035118408919986843/775CB10B986EABFD112CDADDD8F5C771B8BD7DFF/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true',
                title: 'Burger King',
                subtitle: 'Fast Food',
                distance: '1.2 km',
                rating: '4.5',
              ),

              //most popular
              Row(
                children: [
                  const Text(
                    'Most Popular',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const MyCard(
                imageUrl:
                    'https://steamuserimages-a.akamaihd.net/ugc/2035118408919986843/775CB10B986EABFD112CDADDD8F5C771B8BD7DFF/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true',
                title: 'Burger King',
                subtitle: 'Fast Food',
                distance: '1.2 km',
                rating: '4.5',
              ),
              const MyCard(
                imageUrl:
                    'https://steamuserimages-a.akamaihd.net/ugc/2035118408919986843/775CB10B986EABFD112CDADDD8F5C771B8BD7DFF/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true',
                title: 'Burger King',
                subtitle: 'Fast Food',
                distance: '1.2 km',
                rating: '4.5',
              ),
              const MyCard(
                imageUrl:
                    'https://steamuserimages-a.akamaihd.net/ugc/2035118408919986843/775CB10B986EABFD112CDADDD8F5C771B8BD7DFF/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true',
                title: 'Burger King',
                subtitle: 'Fast Food',
                distance: '1.2 km',
                rating: '4.5',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String distance;
  final String rating;

  const MyCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.distance,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          Get.isDarkMode ? Colors.transparent : Colors.white.withOpacity(0.9),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  //location and stars row
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Iconsax.location,
                            size: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            distance,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Row(
                        children: [
                          Icon(
                            Iconsax.star,
                            size: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            rating,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(CupertinoIcons.bookmark),
          ],
        ),
      ),
    );
  }
}
