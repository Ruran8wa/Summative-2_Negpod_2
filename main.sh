#!/bin/bash
echo "Enter student details: "
read -p "Student Email: " email
read -p "Student Age: " age
read -p "Student Id: " id  \n
echo $email, $age, $id >> "students-list_0923.txt"
echo "Records inserted successfully"
