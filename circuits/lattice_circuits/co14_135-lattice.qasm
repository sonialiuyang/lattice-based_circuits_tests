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

qreg q[27];
creg c[1];

x q[0];
x q[1];
x q[3];
x q[5];
x q[7];
x q[9];
x q[11];
x q[13];
x q[15];
x q[17];
x q[19];
x q[21];
x q[23];
x q[25];
swat1 q[25], q[26];
swat q[23], q[24], q[25];
swat q[21], q[22], q[23];
swat1 q[24], q[25];
swat q[19], q[20], q[21];
swat q[22], q[23], q[24];
swat q[17], q[18], q[19];
swat q[20], q[21], q[22];
swat q[15], q[16], q[17];
swat q[18], q[19], q[20];
swat q[13], q[14], q[15];
swat q[16], q[17], q[18];
swat q[11], q[12], q[13];
swat q[14], q[15], q[16];
swat q[9], q[10], q[11];
swat q[12], q[13], q[14];
swat q[7], q[8], q[9];
swat q[10], q[11], q[12];
swat q[5], q[6], q[7];
swat q[8], q[9], q[10];
swat q[3], q[4], q[5];
swat q[6], q[7], q[8];
swat q[1], q[2], q[3];
swat q[4], q[5], q[6];
swat q[2], q[3], q[4];
swat q[0], q[1], q[2];

// @columns [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,15]
