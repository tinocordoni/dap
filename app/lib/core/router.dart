import 'package:go_router/go_router.dart';
import 'package:login_interfaz/screens/home.dart';
import 'package:login_interfaz/screens/login.dart';

final appRouter = GoRouter(
  initialLocation: "/login",
  
  routes: [
   
  
  GoRoute(path: "/login", builder: (context, state) => const LoginScreen()),
  GoRoute(path: "/home", builder: (context, state) => const HomeScreen())
]
 
);
