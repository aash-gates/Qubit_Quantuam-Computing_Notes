OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];

reset q[0];
measure q[2] -> c[2];
ch q[1],q[0];
h q[0];
ccx q[1],q[3],q[2];
measure q[1] -> c[1];