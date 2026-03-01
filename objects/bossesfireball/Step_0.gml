mp_potential_step(Player.x, Player.y, 4, true);

var check_dist = 0.1;
var dist = distance_to_object(Player);

if (dist <= check_dist) {
	Player.hurt(1);
	instance_destroy();
}
