clc, clearvars

s1 = 78; s2 = 62; s3 = 91;
average(s1,s2,s3);


function average(s1,s2,s3)
    result = (s1+s2+s3)/3;
    formatspec = 'The average score of the games, which had scores of %d, %d, & %d is %f\n';
    fprintf(formatspec, s1, s2, s3, result);
end