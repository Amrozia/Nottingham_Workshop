function tests = test_strdist_1

tests = functiontests( localfunctions() );

end

function setupOnce(testCase) %#ok<*DEFNU>
% Add the test data folder to the path.
    addpath('STRDIST_Test_Data')
    %path('/Users/Amrozia/Documents/Amrozia_data/Matlab_Workshop/Exercises/STRDIST_Test_Data')
    
    % Load data from the words.mat file.
    testCase.TestData = load('words.mat');
end

function test_OneWord(testCase) 

end

function test_ThreeWords(testCase) 

end

function test_DimensionsOutput(testCase) 

end

function teardownOnce(testCase)

end