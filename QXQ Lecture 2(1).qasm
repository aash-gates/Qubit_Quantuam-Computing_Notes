OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[1];

measure q[0] -> c[0];
x q[0];
t q[0];