function R = analytical_regressor_mat(g,q)
    %  Author(s):  Hongbin LIN, Vincent Hui, Samuel Au
    %  Created on: 2018-10-05
    %  Copyright (c)  2018, The Chinese University of Hong Kong
    %  This software is provided "as is" under BSD License, with
    %  no warranty. The complete license can be found in LICENSE

    q1 = q(1);
    q2 = q(2);
    q3 = q(3);
    q4 = q(4);
    q5 = q(5);
    q6 = q(6);
    R = [         0,         0,                                     0,                                       0,                                                     0,                                                     0,                                                                                                                             0,                                                                                                                             0,                                                                                                                                                                                                                                     0,                                                                                                                                                                                                                                     0, 1, q1, q1^2, q1^3, q1^4, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0
        g*sin(q2), g*cos(q2), g*cos(q2)*cos(q3) - g*sin(q2)*sin(q3), - g*cos(q2)*sin(q3) - g*cos(q3)*sin(q2), g*cos(q2)*cos(q3)*cos(q4) - g*cos(q4)*sin(q2)*sin(q3), g*sin(q2)*sin(q3)*sin(q4) - g*cos(q2)*cos(q3)*sin(q4), g*cos(q4)*sin(q2)*sin(q3)*sin(q5) - g*cos(q3)*cos(q5)*sin(q2) - g*cos(q2)*cos(q3)*cos(q4)*sin(q5) - g*cos(q2)*cos(q5)*sin(q3), g*cos(q2)*cos(q3)*cos(q4)*cos(q5) - g*cos(q3)*sin(q2)*sin(q5) - g*cos(q2)*sin(q3)*sin(q5) - g*cos(q4)*cos(q5)*sin(q2)*sin(q3), g*cos(q2)*cos(q3)*sin(q4)*sin(q6) + g*cos(q2)*cos(q6)*sin(q3)*sin(q5) + g*cos(q3)*cos(q6)*sin(q2)*sin(q5) - g*sin(q2)*sin(q3)*sin(q4)*sin(q6) + g*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3) - g*cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6), g*cos(q2)*cos(q3)*cos(q6)*sin(q4) - g*cos(q6)*sin(q2)*sin(q3)*sin(q4) - g*cos(q2)*sin(q3)*sin(q5)*sin(q6) - g*cos(q3)*sin(q2)*sin(q5)*sin(q6) - g*cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6) + g*cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q6), 0,  0,    0,    0,    0, 1, q2, q2^2, q2^3, q2^4, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0
        0,         0, g*cos(q2)*cos(q3) - g*sin(q2)*sin(q3), - g*cos(q2)*sin(q3) - g*cos(q3)*sin(q2), g*cos(q2)*cos(q3)*cos(q4) - g*cos(q4)*sin(q2)*sin(q3), g*sin(q2)*sin(q3)*sin(q4) - g*cos(q2)*cos(q3)*sin(q4), g*cos(q4)*sin(q2)*sin(q3)*sin(q5) - g*cos(q3)*cos(q5)*sin(q2) - g*cos(q2)*cos(q3)*cos(q4)*sin(q5) - g*cos(q2)*cos(q5)*sin(q3), g*cos(q2)*cos(q3)*cos(q4)*cos(q5) - g*cos(q3)*sin(q2)*sin(q5) - g*cos(q2)*sin(q3)*sin(q5) - g*cos(q4)*cos(q5)*sin(q2)*sin(q3), g*cos(q2)*cos(q3)*sin(q4)*sin(q6) + g*cos(q2)*cos(q6)*sin(q3)*sin(q5) + g*cos(q3)*cos(q6)*sin(q2)*sin(q5) - g*sin(q2)*sin(q3)*sin(q4)*sin(q6) + g*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3) - g*cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6), g*cos(q2)*cos(q3)*cos(q6)*sin(q4) - g*cos(q6)*sin(q2)*sin(q3)*sin(q4) - g*cos(q2)*sin(q3)*sin(q5)*sin(q6) - g*cos(q3)*sin(q2)*sin(q5)*sin(q6) - g*cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6) + g*cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q6), 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 1, q3, q3^2, q3^3, q3^4, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0
        0,         0,                                     0,                                       0,                               -g*sin(q2 + q3)*sin(q4),                               -g*sin(q2 + q3)*cos(q4),                                                                                                g*sin(q2 + q3)*sin(q4)*sin(q5),                                                                                               -g*sin(q2 + q3)*cos(q5)*sin(q4),                                                                                                                                                                            g*sin(q2 + q3)*(cos(q4)*sin(q6) + cos(q5)*cos(q6)*sin(q4)),                                                                                                                                                                            g*sin(q2 + q3)*(cos(q4)*cos(q6) - cos(q5)*sin(q4)*sin(q6)), 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 1, q4, q4^2, q4^3, q4^4, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0
        0,         0,                                     0,                                       0,                                                     0,                                                     0,    -g*(cos(q2)*cos(q3)*sin(q5) - sin(q2)*sin(q3)*sin(q5) + cos(q2)*cos(q4)*cos(q5)*sin(q3) + cos(q3)*cos(q4)*cos(q5)*sin(q2)),    -g*(cos(q5)*sin(q2)*sin(q3) - cos(q2)*cos(q3)*cos(q5) + cos(q2)*cos(q4)*sin(q3)*sin(q5) + cos(q3)*cos(q4)*sin(q2)*sin(q5)),                                                                             g*(cos(q5)*cos(q6)*sin(q2)*sin(q3) - cos(q2)*cos(q3)*cos(q5)*cos(q6) + cos(q2)*cos(q4)*cos(q6)*sin(q3)*sin(q5) + cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q5)),                                                                            -g*(cos(q5)*sin(q2)*sin(q3)*sin(q6) - cos(q2)*cos(q3)*cos(q5)*sin(q6) + cos(q2)*cos(q4)*sin(q3)*sin(q5)*sin(q6) + cos(q3)*cos(q4)*sin(q2)*sin(q5)*sin(q6)), 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 1, q5, q5^2, q5^3, q5^4, 0,  0,    0,    0,    0
        0,         0,                                     0,                                       0,                                                     0,                                                     0,                                                                                                                             0,                                                                                                                             0,         g*(cos(q2)*cos(q6)*sin(q3)*sin(q4) + cos(q3)*cos(q6)*sin(q2)*sin(q4) + cos(q2)*cos(q3)*sin(q5)*sin(q6) - sin(q2)*sin(q3)*sin(q5)*sin(q6) + cos(q2)*cos(q4)*cos(q5)*sin(q3)*sin(q6) + cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q6)),         g*(cos(q2)*cos(q3)*cos(q6)*sin(q5) - cos(q2)*sin(q3)*sin(q4)*sin(q6) - cos(q3)*sin(q2)*sin(q4)*sin(q6) - cos(q6)*sin(q2)*sin(q3)*sin(q5) + cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q3) + cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)), 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 1, q6, q6^2, q6^3, q6^4
        0,         0,                                     0,                                       0,                                                     0,                                                     0,                                                                                                                             0,                                                                                                                             0,                                                                                                                                                                                                                                     0,                                                                                                                                                                                                                                     0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0, 0,  0,    0,    0,    0];
end
