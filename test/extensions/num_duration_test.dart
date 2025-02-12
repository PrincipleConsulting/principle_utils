import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/barrel.dart';

void main() {
  group('NumDurationExtensions', () {
    test('microseconds getter works for integer and fractional values', () {
      // For integer values, the value is unchanged.
      expect(1500.microseconds, equals(const Duration(microseconds: 1500)));

      // For fractional values, the value is rounded.
      // Dart rounds 1.2 to 1 and 1.5 to 2.
      expect(1.2.microseconds, equals(const Duration(microseconds: 1)));
      expect(1.5.microseconds, equals(const Duration(microseconds: 2)));
    });

    test('ms getter returns correct duration in microseconds', () {
      // 250.ms should equal 250 milliseconds → 250,000 microseconds.
      expect(250.ms, equals(const Duration(microseconds: 250000)));

      // 1.5.ms should equal 1.5 milliseconds → 1500 microseconds.
      expect(1.5.ms, equals(const Duration(microseconds: 1500)));
    });

    test('milliseconds getter is an alias for ms', () {
      expect(100.milliseconds, equals(100.ms));
    });

    test('seconds getter returns correct duration', () {
      // 1 second → 1,000,000 microseconds.
      expect(1.seconds, equals(const Duration(microseconds: 1000000)));

      // 0.5 seconds → 500,000 microseconds.
      expect(0.5.seconds, equals(const Duration(microseconds: 500000)));

      // Test a fractional second value.
      // 1.234 seconds → 1.234 * 1e6 = 1234000 microseconds.
      expect(1.234.seconds, equals(const Duration(microseconds: 1234000)));
    });

    test('minutes getter returns correct duration', () {
      // 1 minute → 60 seconds → 60,000,000 microseconds.
      expect(1.minutes, equals(const Duration(microseconds: 60000000)));

      // 0.75 minutes → 45 seconds → 45,000,000 microseconds.
      expect(0.75.minutes, equals(const Duration(microseconds: 45000000)));

      // Example from the documentation: 0.1 minutes should be 6 seconds.
      // 6 seconds → 6,000,000 microseconds.
      expect(0.1.minutes, equals(const Duration(microseconds: 6000000)));
    });

    test('hours getter returns correct duration', () {
      // 2 hours → 2 * 60 minutes → 2 * 3600000000 microseconds.
      expect(2.hours, equals(const Duration(microseconds: 7200000000)));

      // 1.25 hours → 1.25 * 3600000000 = 4500000000 microseconds.
      expect(1.25.hours, equals(const Duration(microseconds: 4500000000)));
    });

    test('days getter returns correct duration', () {
      // 3 days → 3 * 24 hours → 3 * 86400000000 microseconds.
      expect(3.days, equals(const Duration(microseconds: 259200000000)));

      // 0.5 days → 12 hours → 43200000000 microseconds.
      expect(0.5.days, equals(const Duration(microseconds: 43200000000)));
    });
  });
}
