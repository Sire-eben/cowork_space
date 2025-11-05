import 'dart:io';

import 'package:flutter/material.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';

class ViewFullImageFile extends StatefulWidget {
  const ViewFullImageFile({super.key, required this.image});
  final String image;

  @override
  State<ViewFullImageFile> createState() => _ViewFullImageFileState();
}

class _ViewFullImageFileState extends State<ViewFullImageFile> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          // alignment: Alignment.bottomCenter,
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 4,
                onPageChanged: (value) => setState(() => pageIndex = value),
                itemBuilder: (context, index) {
                  return InteractiveViewer(
                    child: Container(
                      height: context.height,
                      width: context.width,
                      margin: const EdgeInsets.only(bottom: 8, top: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: Shadows.universal,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.image),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            IntrinsicWidth(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(.45),
                ),
                child: Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) {
                    bool isSelected = pageIndex == index;
                    return Container(
                      height: isSelected ? 15 : 10,
                      width: isSelected ? 15 : 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? Colors.white : Color(0xffEFF5FF),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
