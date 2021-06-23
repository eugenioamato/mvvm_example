// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_example/EmailValidator.dart';

import 'package:mvvm_example/main.dart';

void main() {

  test('Emailvalidator space test', () async {
    expect(
      EmailValidator.isEmailValid('afkjfas fask@gfgfa.com'),
      false
    );
  });

  test('Emailvalidator shorter than 8 test', () async {
    expect(
        EmailValidator.isEmailValid('a@b.com'),
        false
    );
  });
  test('Emailvalidator no @ sign test', () async {
    expect(
        EmailValidator.isEmailValid('afkjfafgfa.com'),
        false
    );
  });
  test('Emailvalidator no domain test', () async {
    expect(
        EmailValidator.isEmailValid('afkjfasfask@com'),
        false
    );
  });
  test('Emailvalidator incomplete domain test', () async {
    expect(
        EmailValidator.isEmailValid('afkjfasfask@co.m'),
        false
    );
  });
  test('Emailvalidator ok test', () async {
    expect(
        EmailValidator.isEmailValid('ko@ok.it'),
        true
    );
  });
}
