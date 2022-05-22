import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../widgets/widgets.dart';

class CompsScreen extends StatelessWidget {
  const CompsScreen({super.key});

  static const String routeName = '/coms';

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (_, __, ___) => const CompsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SeparatedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            separatorBuilder: () => const SizedBox(height: 10),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            children: [
              const Text('Primary'),
              CustomButton(
                label: 'Button',
                onPressed: () {},
              ),
              CustomButton(
                label: 'Button',
                leading: Icons.arrow_back,
                onPressed: () {},
              ),
              CustomButton(
                label: 'Button',
                trailing: Icons.arrow_forward,
                onPressed: () {},
              ),
              CustomButton(
                label: 'Button',
                trailing: Icons.arrow_forward,
              ),
              const Text('Secondary'),
              CustomButton(
                label: 'Button',
                onPressed: () {},
                status: Status.secondary,
              ),
              CustomButton(
                label: 'Button',
                leading: Icons.arrow_back,
                onPressed: () {},
                status: Status.secondary,
              ),
              CustomButton(
                label: 'Button',
                trailing: Icons.arrow_forward,
                onPressed: () {},
                status: Status.secondary,
              ),
              CustomButton(
                label: 'Button',
                trailing: Icons.arrow_forward,
                status: Status.secondary,
              ),
              const Text('Warning'),
              CustomButton(
                label: 'Button',
                status: Status.warning,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
