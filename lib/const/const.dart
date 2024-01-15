import 'package:flutter/material.dart';

//*COLORS
const kColorScaffoldBGLight = Color(0xffF6F6F9);
//*appbar
const kColorAppBarBGlight = Color(0xffFFFFFF);
//*card
const kColorCardBGlight = Color(0xffFFFFFF);
//*buttons
const kColorButtonLight = Color(0xff0D72FF);
// const kColorButtonTextLight = Color(0xff828796);
const kColorButtonTextLight = Color(0xffffffff);
//*link
const kColorLink = Color(0xff0D72FF);
final kColorTagLinkBG = const Color(0xff0D72FF).withOpacity(0.1);
//*tag
const kColorTagTextGrey = Color(0xff828796);
// const kColorTagBG = Color(0xffFBFBFC); //original
const kColorTagBG = Color.fromARGB(255, 249, 249, 250);
//*text
const kColorTextTitleLight = Color(0xff000000);
final kColorTextBodyPrimaryLight = const Color(0xff000000).withOpacity(0.9);
const kColorTextSecondaryLight = Color(0xff828796);
//*icons
const kColorIconLight = Color(0xff000000);
//*bar buttons
// const kColorBarButtonBGlight = Color(0xffFBFBFC);//original
final kColorDivider = const Color(0xff828796).withOpacity(0.15);
const kColorBarButtonBGlight = kColorTagBG;
const kColorBarButtonTextLight = Color(0xff2C3035);
const kColorBarButtonIconArrowLight = Color(0xff2C3035);
const kColorBarButtonTextSecondaryLight = Color(0xff828796);
//*rating tag
const kColorRatingTagPrimary = Color(0xffFFA800);
final kColorRatingTagBG = const Color(0xffFFC700).withOpacity(0.2);
//*textfield
const kColorTextFieldBGlight = Color(0xffF6F6F9);
const kColorTextFieldTextPrimaryLight = Color(0xff14142B);
const kColorTextFieldTextSecondaryLight = Color(0xffA9ABB7);
final kColorTextFieldErrorBG = const Color(0xffEB5757).withOpacity(0.15);
//*gallery indicator
const kColorGalleryIndicatorActiveLight = Color(0xff000000);
final kColorGalleryIndicatorNotActiveLight =
    const Color(0xff000000).withOpacity(0.2);
const kColorBottomActionWidgetTopBorder = Color(0xffE8E9EC);

//*BORDER RADIUS
const kBorderRadiusRatingTag = 5.0;
const kBorderRadiusGalleryIndicatorBg = 5.0;
const kBorderRadiusHotelImage = 15.0;
const kBorderRadiusCard = 12.0;
const kBorderRadiusButtonBarBG = 15.0;
const kBorderRadiusActionButton = 15.0;
const kBorderRadiusTextField = 10.0;
const kBorderRadiusIconButton = 6.0;

//*PADDING
const kPaddingHorizApp = 16.0;

//*FONTS
const kFontFamilyDefault = 'SF-Pro-Display';

//*SIZE
const kSizeActionButtonHeight = 48.0;
const kSizeAppBarHeight = 56.0;

const kDecorationCardFirst = BoxDecoration(
  color: kColorCardBGlight,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(kBorderRadiusCard),
    bottomRight: Radius.circular(kBorderRadiusCard),
  ),
);

final kDecorationCardSecond = BoxDecoration(
  color: kColorCardBGlight,
  borderRadius: BorderRadius.circular(kBorderRadiusCard),
);
