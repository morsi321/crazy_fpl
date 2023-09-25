import 'package:crazy_fpl/core/extension/MediaQueryValues.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'BoxColor.dart';
import 'blurBody.dart';

void dialogCustom(context, String? message, void Function() retryFun,
    {Future<void> Function()? okFun, bool isError = true}) {
  showDialog(
      barrierColor: Colors.black.withOpacity(0.2),
      barrierDismissible: false,
      context: context,
      builder: (
        context,
      ) =>
          Center(
            child: BlurBody(
                borderRadius: BorderRadius.circular(10),
                height: 220,
                width: context.width * 0.85,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(isError ? "خطاء" : "عملية ناجحة",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(message ?? "Please try again later",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // IconButton(onPressed: (){}, icon: const Icon(Icons.sync,color: Colors.white,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const BoxColor(
                                width: 100,
                                height: 50,
                                child: Icon(
                                  Icons.thumb_up,
                                  color: Colors.white,
                                ),
                              )),
                          !isError
                              ? const SizedBox()
                              : GestureDetector(
                                  onTap: () {
                                    retryFun();
                                    context.pop();
                                  },
                                  child: const BoxColor(
                                    width: 100,
                                    height: 50,
                                    child: Icon(
                                      Icons.sync,
                                      color: Colors.white,
                                    ),
                                  )),
                        ],
                      ),
                    )
                  ],
                )),
          ));
}
