import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:untitled3/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Supabase.initialize(
      url: 'https://zylvruucteggdyofdecm.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp5bHZydXVjdGVnZ2R5b2ZkZWNtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwOTE4MTMsImV4cCI6MjA1NjY2NzgxM30.3i46P07LaqKd9mF0suHfwunWZl8HindgZ3hdzU6WDzE',
  );

  runApp(const App());
}
