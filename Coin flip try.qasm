OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

h q[0];
h q[2];
measure q[2] -> c[2];
measure q[0] -> c[0];
h q[0];
x q[1];
measure q[2] -> c[2];