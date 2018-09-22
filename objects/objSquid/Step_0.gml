/// @description ai
switch(state){
	case states.idle:
	#region
		timer++;
		if timer = wonderS{
			state = choose(states.idle,states.wonder);
			timer = 0;
		}
		
		//detectors
		
		//follow
		if follow_ != noone{
		#region
			if collision_circle(x,y,detectR,follow_,false,true){
				state = states.follow;
				timer = 0;
			}
		#endregion
		}
		
		//repell
		if avoid_ != noone{
		#region
		if collision_circle(x,y,repellR,avoid_,false,true){
			hspeed_ = lengthdir_x(-speed_,point_direction(x,y,instance_nearest(x,y,avoid_).x,instance_nearest(x,y,avoid_).y));
			vspeed_ = lengthdir_y(-speed_,point_direction(x,y,instance_nearest(x,y,avoid_).x,instance_nearest(x,y,avoid_).y));
		}
		#endregion
		}
	#endregion
		;break;
		
	case states.wonder:
	#region
		var ang = irandom_range(0,360);
		
		hspeed_ = lengthdir_x(speed_,ang);
		vspeed_ = lengthdir_y(speed_,ang);
		
		state = states.idle;
		
	#endregion
		;break;
		
	case states.follow:
	#region
	
		//detectors
		timer++;
		//follow
		if follow_ != noone{
		#region
		if collision_circle(x,y,detectR,follow_,false,true){
			if timer = wonderS{
			hspeed_ = lengthdir_x(speed_,point_direction(x,y,follow_.x,follow_.y));
			vspeed_ = lengthdir_y(speed_,point_direction(x,y,follow_.x,follow_.y));
			timer = 0;
			}
		}else{
			state = states.idle;
			timer = 0;
		}
		}else{
			state = states.idle;
			timer = 0;
		#endregion
		}
		//repell
		if avoid_ != noone{
		#region
		if collision_circle(x,y,repellR,avoid_,false,true){
			hspeed_ = lengthdir_x(-speed_,point_direction(x,y,instance_nearest(x,y,avoid_).x,instance_nearest(x,y,avoid_).y));
			vspeed_ = lengthdir_y(-speed_,point_direction(x,y,instance_nearest(x,y,avoid_).x,instance_nearest(x,y,avoid_).y));
		}
		#endregion
		}
		
	#endregion
		;break;
}

hspeed_ = lerp(hspeed_,0,dampening_);
vspeed_ = lerp(vspeed_,0,dampening_);

x += hspeed_;
y += vspeed_;