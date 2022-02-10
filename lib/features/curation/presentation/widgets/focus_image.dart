import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FirstHalf extends StatelessWidget {
  const FirstHalf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Row(children: [
        const Expanded(
          flex: 2,
          child: SizedBox(
            // color: Colors.red,
            width: 400,
            child: WhatweDo(),
          ),
        ),
        Expanded(
            flex: 3,
            child:
                SizedBox(width: 300, child: SvgPicture.asset('finance1.svg'))),
      ]),
    );
  }
}

class WhatweDo extends StatelessWidget {
  const WhatweDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height - 100,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // const Text('Something catchy to be rendered here'),
        Center(
          child: SizedBox(
            width: 250,
            height: 200,
            child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText('Something Catchy'),
                      FadeAnimatedText('to be wriiten'),
                      FadeAnimatedText('here'),
                    ],
                    onTap: () {
                      // print('Tap Event');
                    })),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('See what we do'),
        )
      ]),
    );
  }
}
