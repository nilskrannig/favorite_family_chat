import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff607D8B);
const kLightPrimaryColor = Color(0xffCFD8DC);
const kDarkPrimaryColor = Color(0xff455A64);

const kAccentColor = Color(0xffFFC107);

const kTextAndIconColor = Color(0xffFFFFFF);
const kDividerColor = Color(0xffBDBDBD);

const kPrimaryTextColor = Color(0xff212121);
const kSecondaryTextColor = Color(0xff757575);

const kSendButtonTextStyle = TextStyle(
  color: kAccentColor,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: kDividerColor, width: 2.0),
  ),
);

const kInputDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kIsMeBorderRadius = BorderRadius.only(
  bottomLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
  topLeft: Radius.circular(30.0),
);

const kNotMeBorderRadius = BorderRadius.only(
  bottomLeft: Radius.circular(30.0),
  topRight: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
);

const kMessageBubbleTextStyle = TextStyle(
  color: kTextAndIconColor,
  fontSize: 15.0,
);
