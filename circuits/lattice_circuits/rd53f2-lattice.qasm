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

qreg q[7];
creg c[1];

swat1 q[5], q[6];
swat q[3], q[4], q[5];
swat1 q[4], q[5];
swat q[2], q[3], q[4];
swat1 q[3], q[4];
swat q[1], q[2], q[3];
swat1 q[2], q[3];
swat q[0], q[1], q[2];

// @columns [0,1,2,3,4,5,6,7]
