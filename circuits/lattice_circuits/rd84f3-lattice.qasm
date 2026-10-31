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

qreg q[16];
creg c[1];

swat1 q[14], q[15];
swat q[12], q[13], q[14];
swat q[10], q[11], q[12];
swat q[8], q[9], q[10];
swat q[6], q[7], q[8];
swat q[4], q[5], q[6];
swat q[2], q[3], q[4];
swat q[0], q[1], q[2];

// @columns [0,1,2,3,4,5,6,7]
