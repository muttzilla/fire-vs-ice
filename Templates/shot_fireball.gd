class_name ShotFireball extends RigidBody3D
var damage=1;
func fire( facing:Vector3, speed:float ) -> void:
    facing=facing.normalized();
    self.linear_velocity+=speed*facing;


func _on_body_entered(body):
    if body.has_method("takeDamage"):
        body.takeDamage(damage);
    self.queue_free()
