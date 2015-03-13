/****Sphere****/
seeds(32,[0,0,0],0);
module seeds(size,start,face) {
	color([0.4,0.4,0.4,1]){translate([start[0],start[1],start[2]]) sphere(size*1.001);}
	if (size>2){
	if (!(face == 3)){seeds(size/2,[start[0]+(size+size/2)*-1,start[1],start[2]],2);}
	if (!(face == 2)){seeds(size/2,[start[0]+(size+size/2)*1,start[1],start[2]],3);}
	if (!(face == 1)){seeds(size/2,[start[0],start[1]+(size+size/2)*-1,start[2]],6);}
	if (!(face == 6)){seeds(size/2,[start[0],start[1]+(size+size/2)*1,start[2]],1);}
	if (!(face == 5)){seeds(size/2,[start[0],start[1],start[2]+(size+size/2)*-1],4);}
	if (!(face == 4)){seeds(size/2,[start[0],start[1],start[2]+(size+size/2)*1],5);}
	}
}