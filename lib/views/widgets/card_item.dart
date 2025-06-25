import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.only(top: 20, bottom: 27, left: 31, right: 24),
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.imagesCardBackground),
            fit: BoxFit.fill,
          ),
          color: Color(0XFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Name card',
                        style: AppStyles.styleRegular16(context).copyWith(
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Syah Bandi',
                        style: AppStyles.styleMedium20(context),
                      ),
                    ),
                  ],
                ),
                Flexible(child: SvgPicture.asset(AppImages.imagesGallery)),
              ],
            ),
            Expanded(child: SizedBox()),
            Flexible(
              child: FittedBox(
                alignment: Alignment.center,
                fit: BoxFit.scaleDown,
                child: Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24(context).copyWith(
                    color: Color(0XFFFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: FittedBox(
                alignment: Alignment.center,
                fit: BoxFit.scaleDown,
                child: Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Color(0XFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
