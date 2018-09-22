/// @description Insert description here
// You can write your code in this editor
randomize();
//detector radius'es
detectR = 128;
hitR = 36;

timer = 0;
wonderS = 2*room_speed;

// ai states
enum states{
	idle,
	wonder,
	follow,
	hit
}
state = states.idle;

//physics
hspeed_ = 0;
vspeed_ = 0;

dampening_ = .1;
speed_ = 4;

follow_ = objMouse;