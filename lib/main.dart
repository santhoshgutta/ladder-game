import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ladder Game',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SampleAnimation();
  }
}

class SampleAnimation extends StatefulWidget {
  const SampleAnimation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SampleAnimationState();
  }
}

class SampleAnimationState extends State<SampleAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Path _path;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 8000));
    super.initState();
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    _path = drawPath();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/game_bg.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: CustomPaint(
              painter: PathPainter(_path),
            ),
          ),
          Positioned(
            top: calculate(_animation.value)!.dy,
            left: calculate(_animation.value)!.dx,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 10,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Path drawPath() {
    Size size = const Size(700, 300);

    Path path_0 = Path();
    path_0.moveTo(size.width * 1.047700, size.height * 1.275179);
    path_0.lineTo(size.width * 1.016251, size.height * 1.244350);
    path_0.lineTo(size.width * 0.9699082, size.height * 1.216326);
    path_0.lineTo(size.width * 0.9186000, size.height * 1.202311);
    path_0.lineTo(size.width * 0.8474294, size.height * 1.202311);
    path_0.lineTo(size.width * 0.7828874, size.height * 1.244350);
    path_0.lineTo(size.width * 0.7100609, size.height * 1.275179);
    path_0.lineTo(size.width * 0.6587423, size.height * 1.275179);
    path_0.lineTo(size.width * 0.6223291, size.height * 1.261165);
    path_0.lineTo(size.width * 0.5892276, size.height * 1.261165);
    path_0.cubicTo(
      size.width * 0.5892276,
      size.height * 1.261165,
      size.width * 0.5511584,
      size.height * 1.280782,
      size.width * 0.5461935,
      size.height * 1.275179,
    );
    path_0.cubicTo(
      size.width * 0.5412285,
      size.height * 1.269576,
      size.width * 0.4882645,
      size.height * 1.261165,
      size.width * 0.4882645,
      size.height * 1.261165,
    );
    path_0.lineTo(size.width * 0.4419213, size.height * 1.244350);
    path_0.lineTo(size.width * 0.3740598, size.height * 1.216308);
    path_0.lineTo(size.width * 0.3028892, size.height * 1.202293);
    path_0.lineTo(size.width * 0.2863384, size.height * 1.165861);
    path_0.lineTo(size.width * 0.2863384, size.height * 1.129460);
    path_0.lineTo(size.width * 0.3095100, size.height * 1.095828);
    path_0.lineTo(size.width * 0.3492323, size.height * 1.050989);
    path_0.lineTo(size.width * 0.4650903, size.height * 1.050989);
    path_0.lineTo(size.width * 0.5246751, size.height * 1.065003);
    path_0.lineTo(size.width * 0.5759833, size.height * 1.065003);
    path_0.lineTo(size.width * 0.6090848, size.height * 1.079018);
    path_0.lineTo(size.width * 0.6223265, size.height * 1.095832);
    path_0.lineTo(size.width * 0.6786022, size.height * 1.095832);
    path_0.lineTo(size.width * 0.7514287, size.height * 1.149083);
    path_0.lineTo(size.width * 0.7961160, size.height * 1.165897);
    path_0.lineTo(size.width * 0.8474242, size.height * 1.149083);
    path_0.lineTo(size.width * 0.8888024, size.height * 1.129465);
    path_0.lineTo(size.width * 0.9401158, size.height * 1.129465);
    path_0.lineTo(size.width * 1.027837, size.height * 1.095832);
    path_0.lineTo(size.width * 1.027837, size.height * 0.9977428);
    path_0.lineTo(size.width * 0.9616315, size.height * 0.9528995);
    path_0.lineTo(size.width * 0.9185974, size.height * 0.9276784);
    path_0.lineTo(size.width * 0.8474294, size.height * 0.9276784);
    path_0.lineTo(size.width * 0.8242578, size.height * 0.9136637);
    path_0.lineTo(size.width * 0.6686749, size.height * 0.9136637);
    path_0.lineTo(size.width * 0.5594351, size.height * 0.8996491);
    path_0.lineTo(size.width * 0.5246777, size.height * 0.8996491);
    path_0.lineTo(size.width * 0.4717137, size.height * 0.9136637);
    path_0.lineTo(size.width * 0.3972340, size.height * 0.9388848);
    path_0.lineTo(size.width * 0.3492349, size.height * 0.9528995);
    path_0.lineTo(size.width * 0.3028918, size.height * 0.9528995);
    path_0.lineTo(size.width * 0.2350302, size.height * 0.9641103);
    path_0.lineTo(size.width * 0.1622011, size.height * 0.9837061);
    path_0.lineTo(size.width * 0.1026163, size.height * 0.9528774);
    path_0.lineTo(size.width * 0.07117063, size.height * 0.8996314);
    path_0.lineTo(size.width * 0.04965490, size.height * 0.8491849);
    path_0.lineTo(size.width * 0.04965490, size.height * 0.7931307);
    path_0.lineTo(size.width * 0.07117063, size.height * 0.7651058);
    path_0.lineTo(size.width * 0.1026189, size.height * 0.7510911);
    path_0.lineTo(size.width * 0.1274464, size.height * 0.7398803);
    path_0.lineTo(size.width * 0.2201327, size.height * 0.7398803);
    path_0.lineTo(size.width * 0.2863384, size.height * 0.7230662);
    path_0.lineTo(size.width * 0.3972314, size.height * 0.7230662);
    path_0.lineTo(size.width * 0.4650929, size.height * 0.7651058);
    path_0.lineTo(size.width * 0.5048153, size.height * 0.7931307);
    path_0.lineTo(size.width * 0.5892276, size.height * 0.8155744);
    path_0.lineTo(size.width * 0.6306058, size.height * 0.8155744);
    path_0.lineTo(size.width * 0.6918465, size.height * 0.8295890);
    path_0.lineTo(size.width * 0.7514313, size.height * 0.8492069);
    path_0.lineTo(size.width * 0.8242578, size.height * 0.8660210);
    path_0.lineTo(size.width * 0.8888076, size.height * 0.8492069);
    path_0.lineTo(size.width * 0.9483924, size.height * 0.7931571);
    path_0.lineTo(size.width * 0.9699082, size.height * 0.7651322);
    path_0.lineTo(size.width * 0.9699082, size.height * 0.7230927);
    path_0.lineTo(size.width * 0.9781849, size.height * 0.6558320);
    path_0.lineTo(size.width * 0.9616341, size.height * 0.6109887);
    path_0.lineTo(size.width * 0.9186000, size.height * 0.5465274);
    path_0.lineTo(size.width * 0.8888076, size.height * 0.5465274);
    path_0.lineTo(size.width * 0.8722568, size.height * 0.5353166);
    path_0.lineTo(size.width * 0.8242578, size.height * 0.5128949);
    path_0.lineTo(size.width * 0.6918465, size.height * 0.5128949);
    path_0.lineTo(size.width * 0.6090900, size.height * 0.4988802);
    path_0.lineTo(size.width * 0.4270238, size.height * 0.4988802);
    path_0.lineTo(size.width * 0.3326816, size.height * 0.4680515);
    path_0.lineTo(size.width * 0.2267536, size.height * 0.4540369);
    path_0.lineTo(size.width * 0.1986170, size.height * 0.4119797);
    path_0.cubicTo(
      size.width * 0.1986170,
      size.height * 0.4119797,
      size.width * 0.1870312,
      size.height * 0.3811510,
      size.width * 0.1870312,
      size.height * 0.3727439,
    );
    path_0.cubicTo(
      size.width * 0.1870312,
      size.height * 0.3643369,
      size.width * 0.1936520,
      size.height * 0.3194936,
      size.width * 0.1870312,
      size.height * 0.3110865,
    );
    path_0.cubicTo(
      size.width * 0.1830790,
      size.height * 0.3060652,
      size.width * 0.1749976,
      size.height * 0.2960535,
      size.width * 0.1684861,
      size.height * 0.2880080,
    );
    path_0.cubicTo(
      size.width * 0.1651588,
      size.height * 0.2839081,
      size.width * 0.1622011,
      size.height * 0.2802578,
      size.width * 0.1622011,
      size.height * 0.2802578,
    );

    return path_0;
  }

  Offset? calculate(value) {
    PathMetrics pathMetrics = _path.computeMetrics();
    PathMetric pathMetric = pathMetrics.elementAt(0);
    value = pathMetric.length * value;
    Tangent? pos = pathMetric.getTangentForOffset(value);
    return pos?.position;
  }
}

class PathPainter extends CustomPainter {
  final Path path;

  PathPainter(this.path);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
