import 'package:flutter/material.dart';

const paddingLayout = EdgeInsets.all(24);
const accessTokenKey = 'access_token';
const refreshTokenKey = 'refresh_token';
const defaultAvatar =
    'https://i0.wp.com/sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png?w=300&ssl=1';
const levelList = [
  'BEGINNER',
  'HIGHER_BEGINNER',
  'PRE_INTERMEDIATE',
  'INTERMEDIATE',
  'UPPER_INTERMEDIATE',
  'ADVANCED',
  'PROFICIENCY',
];
const tutorNationality = ['Vietnamese Tutor', 'Foreign Tutor', 'Native English Tutor'];
const specialties = {
  '': 'All',
  'business-english': 'English for Business',
  'conversational-english': 'Conversational',
  'english-for-kids': 'English for kids',
  'starters': 'STARTERS',
  'movers': 'MOVERS',
  'flyers': 'FLYERS',
  'ket': 'KET',
  'pet': 'PET',
  'ielts': 'IELTS',
  'toefl': 'TOEFL',
  'toeic': 'TOEIC',
};
const baseUrl = 'https://sandbox.api.lettutor.com/';

const _vietnamIcon = 'assets/images/vietnam.png';
const _usIcon = 'assets/images/us.png';

const contries = {'vi-VN': _vietnamIcon, 'en-US': _usIcon};
const theme = {'Dark': Icon(Icons.dark_mode), 'Light': Icon(Icons.light_mode)};
const becomeTeacherImage =
    'https://tools-competition.org/wp-content/uploads/2021/07/tool-competition-1.jpg';
