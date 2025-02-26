import 'package:flutter/material.dart';

class StepProgressIndicator extends StatelessWidget {
  final int totalSteps;
  final int currentStep;
  final Color activeColor;
  final Color inactiveColor;

  const StepProgressIndicator({
    super.key,
    this.totalSteps = 5, // Default to 5 steps
    required this.currentStep,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSteps, (index) {
        bool isActive = index <= currentStep; // Completed or current step
        bool isCurrent = index == currentStep; // Exactly the current step

        return Row(
          children: [
            // Step Circle
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? activeColor : inactiveColor,
                border: Border.all(
                  color: isCurrent ? Colors.black : Colors.transparent,
                  width: isCurrent ? 2 : 0, // Highlight current step
                ),
              ),
              child: Center(
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Connector Line (Except for the last step)
            if (index < totalSteps - 1)
              Container(
                width: 40,
                height: 4,
                color: isActive ? activeColor : inactiveColor,
              ),
          ],
        );
      }),
    );
  }
}
