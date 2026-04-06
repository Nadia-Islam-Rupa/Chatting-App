import 'package:chatting_application/presentation/pages/chat_page/chatpage.dart';
import 'package:chatting_application/presentation/pages/home/homePage.dart';
import 'package:chatting_application/presentation/pages/home/personList.dart';
import 'package:chatting_application/presentation/log_in/log_in_page.dart';
import 'package:chatting_application/data/contact_page.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),

    GoRoute(
      path: '/chat-chatpage',
      name: 'chatpage',
      builder: (context, state) => const Chatpage(),
    ),
    GoRoute(
      path: '/contact-contacts',
      name: 'contactpage',
      builder: (context, state) => const ContactPage(),
    ),
    GoRoute(
      path: '/home-allChats',
      name: 'home-chats',
      builder: (context, state) => const ChatListScreen(),
    ),

    GoRoute(
      path: '/home-contacts',
      name: 'contacts',
      builder: (context, state) => const Text("Contacts Page"),
    ),
  ],
);
