OPENQASM 2.0;
include "qelib1.inc";
gate swat a, b, c {
  swap a, b;
  ccx b, c, a;
}
gate swat1 a, b {
  cx b, a;
  cx a, b;
}

qreg q[10];
creg c[1];

x q[0];
x q[1];
x q[2];
x q[3];
x q[4];
x q[5];
x q[7];
swat1 q[5], q[6];
swat q[3], q[4], q[5];
swap q[6], q[7];
swat1 q[4], q[5];
swap q[7], q[8];
swat q[2], q[3], q[4];
swap q[5], q[6];
swat1 q[8], q[9];
swat q[3], q[4], q[5];
swat q[6], q[7], q[8];
swat q[1], q[2], q[3];
swat q[4], q[5], q[6];
swat q[2], q[3], q[4];
swat q[0], q[1], q[2];

// @columns [0,0,0,0,0,0,0,1,2,2,3,3,4,4,4,5,5,6,6,7,8]
