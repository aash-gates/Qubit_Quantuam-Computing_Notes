OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];

h q[0];
measure q[1] -> c[1];
h q[0];
x q[1];
measure q[2] -> c[2];
h q[0];
h q[1];
measure q[3] -> c[3];
crz(pi/2) q[2],q[0];
reset q[3];
s q[0];
cx q[1],q[2];
measure q[3] -> c[3];
sxdg q[0];
measure q[0] -> c[0];