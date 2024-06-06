import 'package:flutter/material.dart';
import 'package:flutter_pokemon/Theme_mode_selection.dart';
import 'package:flutter_pokemon/utils/theme_mode.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    loadThemeMode().then((val) => setState(() => _themeMode = val));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.lightbulb),
          title: const Text('Dark/Light Mode'),
          trailing: Text(_themeMode == ThemeMode.system
              ? 'System'
              : (_themeMode == ThemeMode.dark ? 'Dark' : 'Light')),
          onTap: () async {
            final ret = await Navigator.of(context).push<ThemeMode>(
              MaterialPageRoute(
                builder: (context) => ThemeModeSelectionPage(mode: _themeMode),
              ),
            );
            setState(() => _themeMode = ret!);
            await saveThemeMode(_themeMode);
          },
        ),
      ],
    );
  }
}
