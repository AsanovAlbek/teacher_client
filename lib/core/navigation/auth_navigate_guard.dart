import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:teacher_client/core/navigation/router.dart';

class AuthGuard extends AutoRouteGuard {

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final bool isSignedIn = Supabase.instance.client.auth.currentUser != null;
    log('islog = $isSignedIn');
    if (!isSignedIn) {
      resolver.next();
    } else {
      resolver.redirect(const HomeRoute());
    }
  }
}