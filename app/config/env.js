// Application environment configration.
'use strict';

var env = module.exports;

// Server setting.
env.server = {
    port:8080
};

// Token secret key.
env.keys = {
    secret: '/jVdfUX+u/Kn3qPY4+ahjwQgyV5UhkM5cdh1i2xhozE=' // Not anymore...
};

// User access configration.
var userRoles = env.userRoles = {
    student: 1,    // ...001
    parent: 2,     // ...010
    admin: 4     // ...100
};

env.accessLevels = {
    student: userRoles.student | userRoles.parent | userRoles.admin,
    parent: userRoles.parent | userRoles.admin,
    admin: userRoles.admin                                      // ...100
};