#!/bin/bash

# Function to create a student record
create_student_record() {
  read -p "Enter the student's ID: " id
  read -p "Enter the student's email: " email
  read -p "Enter the student's age: " age
  echo "$id, $email, $age" >> students-list_0923.txt
  echo "Student record created and added to students-list_0923"
}

#Function to view all students
view_all_students(){
	echo "List of all students:"
	cat students-list_0923.txt
}

# Function to update student records with three fields
update_student_records() {
  read -p "Enter the student's ID to update: " id1
  read -p "Enter the updated student ID: " id2
  read -p "Enter the updated student email: " email
  read -p "Enter the updated student age: " age

  # Used sed to update the student record with all three fields
  sed -i "/^$id1,/c\\$id2, $email, $age" students-list_0923.txt
  echo "Student record updated."
}


# Function to delete a student by student Email
delete_student_by_id() {
  read -p "Enter the student Email to delete: " email
  # Use sed to remove the line with the matching student Email
  sed -i "/, $email/d" students-list_0923.txt
  echo "Student with Email $email deleted."
}


# Main menu
while true; do
  	echo "Main Menu:"
  	echo "1. Create a student record"
  	echo "2. View all students"
  	echo "3. Delete students in the file"
  	echo "4. Update student records"
  	echo "5. Exit"
  	read -p "Select an option (1/2/3/4/5/6): " choice
  case $choice in
    1)
      create_student_record
      ;;
    2)
      view_all_students
      ;;
3)
	delete_student_by_id
	;;
4)
	update_student_records
	;;
5)
	echo "Exiting the application."
	exit 0
	;;
    *)
      echo "Invalid choice. Please select a valid option (1/2/3/4/5/6)."
      ;;
  esac
done

