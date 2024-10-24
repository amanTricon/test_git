#!/bin/bash

# Function to perform addition
add() {
    echo "$1 + $2" | bc
}

# Function to perform subtraction
subtract() {
    echo "$1 - $2" | bc
}

# Function to perform multiplication
multiply() {
    echo "$1 * $2" | bc
}

# Function to perform division
# Main script
echo "Simple Shell Calculator"
echo "Select operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Enter choice (1-4): " choice

# Read numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

case $choice in
    1)
        result=$(add "$num1" "$num2")
        echo "Result: $result"
        ;;
    2)
        result=$(subtract "$num1" "$num2")
        echo "Result: $result"
        ;;
    3)
        result=$(multiply "$num1" "$num2")
        echo "Result: $result"
        ;;
    4)
        result=$(divide "$num1" "$num2")
        echo "Result: $result"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
