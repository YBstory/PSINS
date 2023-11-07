function bendingplot(X, X1)
% See also  bending, bendingH.
global glv
    dK = zeros(9,1); dK([1:3,5:6,9]) = X(1:6);
    myfig, plot(1:9, dK/glv.sec, '-.o', 11:19, X(7:15)/glv.secpg, '-.o', 21:29, X(16:24)/glv.secprps2, '-.o'); hold on; grid on
    plot([1,5,9], dK([1,5,9])/glv.sec, '*m', [11,15,19], X([7,11,15])/glv.secpg, '*m', [21,25,29], X([16,20,24])/glv.secprps2, '*m');
    legend('dK / sec', 'U / sec/g', 'W / sec/(rad/s^2)');
    if nargin==2
        plot(11:19, X1(1:9)/glv.secpg, 'g:*', 21:29, X1(10:18)/glv.secprps2, 'm:*');
    end