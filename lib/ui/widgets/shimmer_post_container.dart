import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      height: MediaQuery.of(context).size.height * .2,
      color: Colors.white,
      child: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: (Colors.grey[300])!,
        child: Container(
          margin: EdgeInsets.all(5.0),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CircleAvatar(radius: 20.0, backgroundColor: Colors.grey[200])
                ],
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 8,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        color: Colors.grey[200],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      height: 8,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        color: Colors.grey[200],
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (index) => Container(
                          height: 8,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            color: Colors.grey[200],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
