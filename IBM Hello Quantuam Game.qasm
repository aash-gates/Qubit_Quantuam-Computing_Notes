OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];

h q[0];
z q[1];
h q[3];
x q[0];
x q[3];
swap q[1],q[2];
measure q[2] -> c[2];