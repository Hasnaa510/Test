import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login/login_screen.dart';

class BoardingModel
{
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}


    List<BoardingModel> boarding =
    [
      BoardingModel(
          image:  'assets/images/download.jpg',
          title :'On board 1 title',
          body: 'On board 1 body'
      ),
      BoardingModel(
          image:  'assets/images/2.jpg',
          title :'On board 2 title',
          body: 'On board 2 body'
      ),
      BoardingModel(
          image:  'assets/images/3.jpg',
          title :'On board 3 title',
          body: 'On board 3 body'
      ),

    ];
    var boardController = PageController();
    bool isLast =false;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) =>  OnBoardingLogin()),
                        (route) => false);
              },
              child: const Text('Skip',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20
              ),
              )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
                onPageChanged: (int index)
                {
                  if (index == boarding.length-1)
                    {
                      setState(() {
                       isLast= true;
                      });
                    }else
                    {
                      setState(() {
                        isLast= false;
                      });
                    }

                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: boardController,
                    count:boarding.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.deepOrange,
                  ),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed:()
                  {
                    if(isLast)
                    {

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) =>  OnBoardingLogin()),
                              (route) => false);
                    }else
                    {
                      boardController.nextPage(
                          duration: const Duration(
                            microseconds: 751,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }

                  },
                  child: const Icon(
                  Icons.arrow_forward
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Expanded(
          child: Image(
            width: double.infinity,
            image: AssetImage(
              model.image,
            ),
          ),
        ),
        Text(
          model.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          model.body,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
