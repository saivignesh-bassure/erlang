%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/7a8722ac4546baae28b4b2c1bdae14e04fdba88c/exercises/grade-school/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(grade_school_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_roster_is_empty_when_no_student_is_added_test_'() ->
    S0 = grade_school:new(),
    {"Roster is empty when no student is added",
     ?_assertEqual([], lists:sort(grade_school:get(S0)))}.

'2_student_is_added_to_the_roster_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Aimee", 2, S0),
    {"Student is added to the roster",
     ?_assertEqual(["Aimee"],
		   lists:sort(grade_school:get(S1)))}.

'3_multiple_students_in_the_same_grade_are_added_to_the_roster_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Blair", 2, S0),
    S2 = grade_school:add("James", 2, S1),
    S3 = grade_school:add("Paul", 2, S2),
    {"Multiple students in the same grade "
     "are added to the roster",
     ?_assertEqual(["Blair", "James", "Paul"],
		   lists:sort(grade_school:get(S3)))}.

'4_student_not_added_to_same_grade_in_the_roster_more_than_once_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Blair", 2, S0),
    S2 = grade_school:add("James", 2, S1),
    S3 = grade_school:add("James", 2, S2),
    S4 = grade_school:add("Paul", 2, S3),
    {"Student not added to same grade in the "
     "roster more than once",
     ?_assertEqual(["Blair", "James", "Paul"],
		   lists:sort(grade_school:get(S4)))}.

'5_students_in_multiple_grades_are_added_to_the_roster_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Chelsea", 3, S0),
    S2 = grade_school:add("Logan", 7, S1),
    {"Students in multiple grades are added "
     "to the roster",
     ?_assertEqual(["Chelsea", "Logan"],
		   lists:sort(grade_school:get(S2)))}.

'6_student_not_added_to_multiple_grades_in_the_roster_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Blair", 2, S0),
    S2 = grade_school:add("James", 2, S1),
    S3 = grade_school:add("James", 3, S2),
    S4 = grade_school:add("Paul", 3, S3),
    {"Student not added to multiple grades "
     "in the roster",
     ?_assertEqual(["Blair", "James", "Paul"],
		   lists:sort(grade_school:get(S4)))}.

'7_students_are_sorted_by_grades_in_the_roster_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Jim", 3, S0),
    S2 = grade_school:add("Peter", 2, S1),
    S3 = grade_school:add("Anna", 1, S2),
    {"Students are sorted by grades in the "
     "roster",
     ?_assertEqual(["Anna", "Jim", "Peter"],
		   lists:sort(grade_school:get(S3)))}.

'8_students_are_sorted_by_name_in_the_roster_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Peter", 2, S0),
    S2 = grade_school:add("Zoe", 2, S1),
    S3 = grade_school:add("Alex", 2, S2),
    {"Students are sorted by name in the roster",
     ?_assertEqual(["Alex", "Peter", "Zoe"],
		   lists:sort(grade_school:get(S3)))}.

'9_students_are_sorted_by_grades_and_then_by_name_in_the_roster_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Peter", 2, S0),
    S2 = grade_school:add("Anna", 1, S1),
    S3 = grade_school:add("Barb", 1, S2),
    S4 = grade_school:add("Zoe", 2, S3),
    S5 = grade_school:add("Alex", 2, S4),
    S6 = grade_school:add("Jim", 3, S5),
    S7 = grade_school:add("Charlie", 1, S6),
    {"Students are sorted by grades and then "
     "by name in the roster",
     ?_assertEqual(["Alex", "Anna", "Barb", "Charlie", "Jim",
		    "Peter", "Zoe"],
		   lists:sort(grade_school:get(S7)))}.

'10_grade_is_empty_if_no_students_in_the_roster_test_'() ->
    S0 = grade_school:new(),
    {"Grade is empty if no students in the "
     "roster",
     ?_assertEqual([], lists:sort(grade_school:get(1, S0)))}.

'11_grade_is_empty_if_no_students_in_that_grade_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Peter", 2, S0),
    S2 = grade_school:add("Zoe", 2, S1),
    S3 = grade_school:add("Alex", 2, S2),
    S4 = grade_school:add("Jim", 3, S3),
    {"Grade is empty if no students in that "
     "grade",
     ?_assertEqual([], lists:sort(grade_school:get(1, S4)))}.

'12_student_not_added_to_same_grade_more_than_once_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Blair", 2, S0),
    S2 = grade_school:add("James", 2, S1),
    S3 = grade_school:add("James", 2, S2),
    S4 = grade_school:add("Paul", 2, S3),
    {"Student not added to same grade more "
     "than once",
     ?_assertEqual(["Blair", "James", "Paul"],
		   lists:sort(grade_school:get(2, S4)))}.

'13_student_not_added_to_multiple_grades_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Blair", 2, S0),
    S2 = grade_school:add("James", 2, S1),
    S3 = grade_school:add("James", 3, S2),
    S4 = grade_school:add("Paul", 3, S3),
    {"Student not added to multiple grades",
     ?_assertEqual(["Blair", "James"],
		   lists:sort(grade_school:get(2, S4)))}.

'14_student_not_added_to_other_grade_for_multiple_grades_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Blair", 2, S0),
    S2 = grade_school:add("James", 2, S1),
    S3 = grade_school:add("James", 3, S2),
    S4 = grade_school:add("Paul", 3, S3),
    {"Student not added to other grade for "
     "multiple grades",
     ?_assertEqual(["Paul"],
		   lists:sort(grade_school:get(3, S4)))}.

'15_students_are_sorted_by_name_in_a_grade_test_'() ->
    S0 = grade_school:new(),
    S1 = grade_school:add("Franklin", 5, S0),
    S2 = grade_school:add("Bradley", 5, S1),
    S3 = grade_school:add("Jeff", 1, S2),
    {"Students are sorted by name in a grade",
     ?_assertEqual(["Bradley", "Franklin"],
		   lists:sort(grade_school:get(5, S3)))}.
