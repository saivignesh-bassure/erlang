%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/6373ab6c335278328259f6407f3a3adfd4afa0f5/exercises/anagram/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(anagram_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_no_matches_test_'() ->
    {"no matches",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("diaper",
						    ["hello", "world",
						     "zombies", "pants"])))}.

'2_detects_two_anagrams_test_'() ->
    {"detects two anagrams",
     ?_assertMatch(["lemons", "melons"],
		   lists:sort(anagram:find_anagrams("solemn",
						    ["lemons", "cherry",
						     "melons"])))}.

'3_does_not_detect_anagram_subsets_test_'() ->
    {"does not detect anagram subsets",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("good",
						    ["dog", "goody"])))}.

'4_detects_anagram_test_'() ->
    {"detects anagram",
     ?_assertMatch(["inlets"],
		   lists:sort(anagram:find_anagrams("listen",
						    ["enlists", "google",
						     "inlets", "banana"])))}.

'5_detects_three_anagrams_test_'() ->
    {"detects three anagrams",
     ?_assertMatch(["gallery", "largely", "regally"],
		   lists:sort(anagram:find_anagrams("allergy",
						    ["gallery", "ballerina",
						     "regally", "clergy",
						     "largely", "leading"])))}.

'6_detects_multiple_anagrams_with_different_case_test_'() ->
    {"detects multiple anagrams with different "
     "case",
     ?_assertMatch(["Eons", "ONES"],
		   lists:sort(anagram:find_anagrams("nose",
						    ["Eons", "ONES"])))}.

'7_does_not_detect_non_anagrams_with_identical_checksum_test_'() ->
    {"does not detect non-anagrams with identical "
     "checksum",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("mass", ["last"])))}.

'8_detects_anagrams_case_insensitively_test_'() ->
    {"detects anagrams case-insensitively",
     ?_assertMatch(["Carthorse"],
		   lists:sort(anagram:find_anagrams("Orchestra",
						    ["cashregister",
						     "Carthorse",
						     "radishes"])))}.

'9_detects_anagrams_using_case_insensitive_subject_test_'() ->
    {"detects anagrams using case-insensitive "
     "subject",
     ?_assertMatch(["carthorse"],
		   lists:sort(anagram:find_anagrams("Orchestra",
						    ["cashregister",
						     "carthorse",
						     "radishes"])))}.

'10_detects_anagrams_using_case_insensitive_possible_matches_test_'() ->
    {"detects anagrams using case-insensitive "
     "possible matches",
     ?_assertMatch(["Carthorse"],
		   lists:sort(anagram:find_anagrams("orchestra",
						    ["cashregister",
						     "Carthorse",
						     "radishes"])))}.

'11_does_not_detect_an_anagram_if_the_original_word_is_repeated_test_'() ->
    {"does not detect an anagram if the original "
     "word is repeated",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("go", ["go Go GO"])))}.

'12_anagrams_must_use_all_letters_exactly_once_test_'() ->
    {"anagrams must use all letters exactly "
     "once",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("tapper",
						    ["patter"])))}.

'13_words_are_not_anagrams_of_themselves_test_'() ->
    {"words are not anagrams of themselves",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("BANANA",
						    ["BANANA"])))}.

'14_words_are_not_anagrams_of_themselves_even_if_letter_case_is_partially_different_test_'() ->
    {"words are not anagrams of themselves "
     "even if letter case is partially different",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("BANANA",
						    ["Banana"])))}.

'15_words_are_not_anagrams_of_themselves_even_if_letter_case_is_completely_different_test_'() ->
    {"words are not anagrams of themselves "
     "even if letter case is completely different",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("BANANA",
						    ["banana"])))}.

'16_words_other_than_themselves_can_be_anagrams_test_'() ->
    {"words other than themselves can be anagrams",
     ?_assertMatch(["Silent"],
		   lists:sort(anagram:find_anagrams("LISTEN",
						    ["LISTEN", "Silent"])))}.
