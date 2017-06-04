minetest.register_craftitem("pa_test:pa_tester", {
  description = "Particle Animation Tester",
  inventory_image = "pa_test.png",
  on_use = function(itemstack, user, pointed_thing)
    local p = pointed_thing.above
    if not p then
      return
    end

    minetest.add_particle{
      pos = p,
      velocity = {x = 0, y = 0, z = 0},
      acceleration = {x = 0, y = 2.5, z = 0},
      expirationtime = 0.475,
      collisiondetection = false,
      texture = "pa_test_smoke.png",
      animation = {
        type = "vertical_frames",
        aspect_w = 16,
        aspect_h = 16,
        length = 0.5,
      },
      size = 5,
    }
  end,
})
