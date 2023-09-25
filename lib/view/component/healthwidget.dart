import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/model/health.dart';

class healthwidget extends StatelessWidget {
  Articles3?articles3;
   healthwidget({required this.articles3, super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.all(4.w),
      child: Container(
         // padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            //  color: Colors.white
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Image.network(
                articles3?.urlToImage ??  'https://www.skynewsarabia.com/images/v1/2023/02/16/1597614/1200/630/1-1597614.jpg'),
               Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  children: [
                    Text(
                     articles3?.title?? '',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                    Row(
                      children: [
                        Text(
                         articles3?.source?.name?? 'سعد محمود',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                        Spacer(),

                        Text(
                          articles3?.publishedAt??'2022',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        
      ),
    );
  }
}