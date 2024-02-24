import 'package:flutter/material.dart';

class FaqWidget extends StatelessWidget {
  const FaqWidget({
    Key? key,
    this.ht,
    this.wd,
    this.faqHeader,
    this.info,
    this.duration,
  }) : super(key: key);

  final double? ht;
  final double? wd;
  final String? faqHeader;
  final String? info;
  final dynamic duration;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: AnimatedContainer(
              duration: Duration(milliseconds: duration),
              height: ht,
              width: wd,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  // top: BorderSide(width: 1.0, color: Colors.grey), // Top border
                  bottom:
                      BorderSide(width: 1.0, color: Colors.grey), // Bottom border
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              faqHeader.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                         
                          const Icon(Icons.arrow_drop_down,color: Colors.white,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                       
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              info.toString(),
                              style: const TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 50),
                  ]),
                  //
                ),
              ),
            ),
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
