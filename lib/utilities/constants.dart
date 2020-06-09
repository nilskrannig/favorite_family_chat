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
    top: BorderSide(color: kDarkPrimaryColor, width: 2.0),
  ),
);
