import 'package:flutter/material.dart';
import 'package:flutter_supabase_app1/pages/account_page.dart';
import 'package:flutter_supabase_app1/pages/login_page.dart';
import 'package:flutter_supabase_app1/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://xcadcujuokfxgnkkiyhj.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhjYWRjdWp1b2tmeGdua2tpeWhqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY3Nzk4MzUsImV4cCI6MTk5MjM1NTgzNX0.c1kP8pSpInBos-ILI50WcZlmmKtocYTZETOaN0IlM5U');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
