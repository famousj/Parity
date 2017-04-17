# Parity

Parity is an integer parity microlibrary. It tells you whether an integer is even or odd!

Parity implements an `IntegerParity` protocol for all integer types (`Int`, `Int8`, `Int16`, `Int32`, `Int64`, `UInt`, `UInt8`, `UInt16`, `UInt32`, `UInt64`) and provides a default, generic implementation for future integer types as well (i.e. those that conform to `Swift.IntegerType`).

### Examples

✓ Helpers

```swift

2.isEven
// true

3.isOdd
// true

```

✓ Helpful enum for code readability:

```swift

// Before:
if (number % 2 == 0) {
    print("even")
} else {
    print("odd")
}

// After:
switch number.parity {
    case .Even:
        print("even")
    case .Odd:
        print("odd")
}

```

```swift

// Before:
if (numberA % 2 == numberB % 2) {
    print("both numbers have the same parity")
}

// After:
if (numberA.parity == numberB.parity) {
    print("both numbers have the same parity")
}

```