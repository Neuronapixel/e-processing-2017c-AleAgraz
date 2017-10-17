int []meses;
size(600,600);
meses =new int[12];
meses[0]=31;
meses[1]=28;
meses[2]=31;
meses[3]=30;
meses[4]=31;
meses[5]=30;
meses[6]=31;
meses[7]=31;
meses[8]=30;
meses[9]=31;
meses[10]=30;
meses[11]=31;
for(int i =0; i< meses.length; i++){
for (int j=0; j<meses[i];j++){
rect(10*j,10*i,10,10);
}
}