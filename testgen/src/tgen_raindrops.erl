-module(tgen_raindrops).

-behaviour(tgen).

-export([
    available/0,
    generate_test/1
]).

-spec available() -> true.
available() ->
    true.

generate_test(#{description := Desc, expected := Exp, property := Prop, input := #{number := Num}}) ->
    TestName = tgen:to_test_name(Desc),
    Property = tgen:to_property_name(Prop),

    Fn = tgs:simple_fun(TestName, [
        tgs:call_macro("assertEqual", [
            tgs:value(binary_to_list(Exp)),
            tgs:call_fun("raindrops:" ++ Property, [
                tgs:value(Num)])])]),

    {ok, Fn, [{Prop, ["Number"]}]}.
