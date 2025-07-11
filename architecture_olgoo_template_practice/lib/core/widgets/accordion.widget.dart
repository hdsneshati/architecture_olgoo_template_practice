import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:olgoo_mobile/core/utils/url_launcher.dart';
import 'package:size_config/size_config.dart';

enum AccordionWidgetType { filled, empty }

class AccordionWidget extends StatefulWidget {
  const AccordionWidget({
    super.key,
    required this.headerText,
    required this.bodyText,
    required this.icon,
    this.type = AccordionWidgetType.filled,
    this.link,
  });

  final String headerText;
  final String bodyText;
  final String icon;
  final String? link;
  final AccordionWidgetType type;

  @override
  State<AccordionWidget> createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ExpandablePanel(
            theme: const ExpandableThemeData(
              iconColor: Color(0xff71727A),
              useInkWell: true,
              headerAlignment: ExpandablePanelHeaderAlignment.center,
            ),
            header: Row(
              children: [
                SvgPicture.asset(
                  widget.icon,
                  width: 36.w,
                  height: 36.h,
                  colorFilter: ColorFilter.mode(
                    themeData.colorScheme.secondary,
                    BlendMode.srcIn,
                  ),
                ),
                8.w.horizontalSpacer,
                Text(widget.headerText),
                const Spacer(),
              ],
            ),
            collapsed: const SizedBox.shrink(),
            expanded: Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.bodyText,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(
                        0x59000000,
                      ),
                    ),
                  ),
                  if (widget.link != null) ...[
                    8.h.verticalSpacer,
                    GestureDetector(
                      onTap: () async => UrlLauncher.launch(widget.link!),
                      child: Text(
                        'مشاهده ویدیو آموزشی ',
                        style: TextStyle(
                          color: themeData.colorScheme.secondary.withAlpha(143),
                        ),
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
          // if (isExpanded) ...[
          //   16.h.verticalSpacer,
          // ]
        ],
      ),
    );
  }
}
