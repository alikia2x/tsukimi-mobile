import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tsukimi/homepage.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: context
            .findAncestorStateOfType<HomePageState>()
            ?.scrollController,
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
			HapticFeedback.lightImpact();
		},
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
