function tests = test_repblank_1

tests = functiontests( localfunctions() );

end

function test_OneBlank(testCase) %#ok<*DEFNU>
Input = repblank('this is');
Output = 'this_is';
verifyEqual(testCase, Input, Output);
end

function test_ManyBlank(testCase)
Input = repblank('this  is');
Output = 'this_is';
verifyEqual(testCase, Input, Output);
end

function test_FirstBlank(testCase)
Input = repblank(' this is');
Output = 'this_is';
verifyEqual(testCase, Input, Output);
end

function test_LastBlank(testCase)
Input = repblank('this is');
Output = 'this_is';
verifyEqual(testCase, Input, Output);
end

function test_AllBlanksError(testCase)
    
    verifyError(testCase, @() repblank('   '), 'repblank:AllBlankString')
    
end
