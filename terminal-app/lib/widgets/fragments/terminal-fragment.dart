import 'package:flutter/material.dart';

Stream<List<String>> streamTeste() async* {
  List<String> valores = [];
  valores.add('asd');
  yield valores;
  await Future.delayed(const Duration(seconds: 1));
  valores.add('asdf');
  yield valores;
  await Future.delayed(const Duration(seconds: 1));
  valores.add('asdfg');
  yield valores;
  await Future.delayed(const Duration(seconds: 1));
  valores.add('asdfgh');
  yield valores;
  await Future.delayed(const Duration(seconds: 1));
  valores.add('asdfghi');
  yield valores;
}

class TerminalFragment extends StatefulWidget {
  const TerminalFragment({Key? key}) : super(key: key);

  @override
  State<TerminalFragment> createState() => _TerminalFragmentState();
}

class _TerminalFragmentState extends State<TerminalFragment>
    with TickerProviderStateMixin {
  final TextEditingController textFieldEditingController =
      TextEditingController();
  final FocusNode textFieldFocus = FocusNode();

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Expanded(
          child: Container(
            child: Stack(
              children: [
                StreamBuilder(
                    stream: streamTeste(),
                    builder: (context, AsyncSnapshot<List<String>> snapshot) {
                      return ListView(
                        reverse: true,
                        children: (snapshot.data ?? []).map((e) =>
                          Center(
                            child: Text(e),
                          )
                        ).toList().reversed.toList()
                      );
                    }),
                Container(
                  child: Center(
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, widget) {
                        return widget == null
                            ? Container()
                            : ClipPath(
                                clipper: InvertedClipper(_controller),
                                child: widget,
                              );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  width: 500,
                  height: 500,
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            autofocus: true,
            controller: textFieldEditingController,
            focusNode: textFieldFocus,
            onSubmitted: (value) {
              textFieldEditingController.clear();
              textFieldFocus.requestFocus();
            },
          ),
        ),
      ],
    ));
  }
}

class InvertedClipper extends CustomClipper<Path> {
  final AnimationController controller;

  InvertedClipper(this.controller);

  @override
  Path getClip(Size size) {
    return Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height))
      ..addOval(Rect.fromCircle(
          center: Offset(size.width - 44, size.height - 44),
          radius: 40 * controller.value))
      ..fillType = PathFillType.evenOdd;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
