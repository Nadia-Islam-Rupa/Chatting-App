import 'package:chatting_application/services/routes/app_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://mxgdkgunszcfxqhsutqy.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im14Z2RrZ3Vuc3pjZnhxaHN1dHF5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0NzkxMDAsImV4cCI6MjA5MTA1NTEwMH0.nTxvnAAl4guAd_jdJUSMZxLCKrdlwTnSC6N9bhBfgbA',
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Chatting Application',
    );
  }
}
