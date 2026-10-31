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

qreg q[20];
creg c[1];

swat1 q[12], q[13];
x q[14];
x q[18];
x q[19];
swat q[10], q[11], q[12];
swat q[8], q[9], q[10];
swap q[13], q[14];
swat q[6], q[7], q[8];
swat q[11], q[12], q[13];
swat q[9], q[10], q[11];
swap q[14], q[15];
swat q[7], q[8], q[9];
swap q[12], q[13];
swat q[5], q[6], q[7];
swat q[10], q[11], q[12];
swap q[15], q[16];
swat q[8], q[9], q[10];
swap q[13], q[14];
swat q[6], q[7], q[8];
swap q[11], q[12];
swat1 q[16], q[17];
swat q[4], q[5], q[6];
swat q[9], q[10], q[11];
swat q[14], q[15], q[16];
swat q[7], q[8], q[9];
swat q[12], q[13], q[14];
swat1 q[17], q[18];
swat q[5], q[6], q[7];
swat q[10], q[11], q[12];
swat q[15], q[16], q[17];
swat q[3], q[4], q[5];
swat q[8], q[9], q[10];
swat q[13], q[14], q[15];
swat1 q[18], q[19];
swat q[6], q[7], q[8];
swat q[11], q[12], q[13];
swat q[16], q[17], q[18];
swat q[4], q[5], q[6];
swat q[9], q[10], q[11];
swat q[14], q[15], q[16];
swat q[2], q[3], q[4];
swat q[7], q[8], q[9];
swat q[12], q[13], q[14];
swat q[5], q[6], q[7];
swat q[10], q[11], q[12];
swat q[3], q[4], q[5];
swat q[8], q[9], q[10];
swat q[1], q[2], q[3];
swat q[6], q[7], q[8];
swat q[4], q[5], q[6];
swat q[2], q[3], q[4];
swat q[0], q[1], q[2];

// @columns [0,0,0,0,1,2,2,3,3,4,4,5,5,6,6,6,7,7,8,8,8,9,9,9,10,10,10,11,11,11,12,12,12,12,13,13,13,14,14,14,15,15,15,16,16,17,17,18,18,19,20,21]
