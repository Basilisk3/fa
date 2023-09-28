---@meta

---@class ProjectileBlueprint : EntityBlueprint
--- Development status 
---@field DevStatus unknown
--- Display information for the Projectile
---@field Display ProjectileBlueprintDisplay
--- Economy information for the unit
---@field Economy ProjectileBlueprintEconomy
--- Physics information for the Projectile
---@field Physics ProjectileBlueprintPhysics
--- Defense information for the projectile
---@field Defense ProjectileBlueprintDefense

---@class ProjectileBlueprintDefense
---@field MaxHealth number

---@class ProjectileBlueprintDisplay
---@field Mesh MeshBlueprint
--- mesh to use as the display of this projectile
---@field MeshBlueprint FileName
--- uniform scale to apply to mesh
---@field UniformScale number
--- range uniform scale of this projectile
---@field MeshScaleRange number
--- rate at which scale changes
---@field MeshScaleVelocity number
--- range rate at which scale changes
---@field MeshScaleVelocityRange number
--- if the camera should track this projectile when it's created
---@field CameraFollowsProjectile boolean
--- if `CameraFollowsProjectile` is true, how long until we snap the camera back to the launcher
--- after the projectile is destroyed
---@field CameraFollowTimeout number
--- how large is the strategic icon square for the projectile
---@field StrategicIconSize number

---@class ProjectileBlueprintEconomy
--- energy cost to build this projectile
---@field BuildCostEnergy number
--- mass cost to build this projectile
---@field BuildCostMass number
--- time in seconds to build this projectile
---@field BuildTime number

---@class ProjectileBlueprintPhysics
--- whether to check the projectile for collisions against terrain/water
---@field CollideSurface boolean
--- whether to check the projectile for collisions against other entities
---@field CollideEntity boolean
--- if this projectile should turn to track its target
---@field TrackTarget boolean
--- if this projectile should track as if it was an attack-ground attack
---@field TrackTargetGround boolean
--- acts as a multiplier to the location of where the missile will act like a ground attack. A value of 1.0 will encompass the entire collision box of the target. Defaults to 0.8
---@field TrackTargetGroundFuzziness? number
--- acts as a flat offset to the location where the missile will act like a ground attack. Defaults to 0
---@field TrackTargetGroundOffset? number
--- if this projectile should always face the direction its moving
---@field VelocityAlign boolean
--- if this projectile should always remain upright
---@field StayUpright boolean
--- Whether projectiles should lead their target. Applies only to tracking projectiles.
---@field LeadTarget boolean
--- Whether projectiles should try to stay underwater. Applies only to tracking projectiles.
---@field StayUnderwater boolean
--- if the projectile is initially affected by gravity
---@field UseGravity boolean
--- projectile will detonate when going above this height above ground
---@field DetonateAboveHeight number
--- projectile will detonate when dipping under this height above ground
---@field DetonateBelowHeight number
--- Max turn rate for the projectile, in degrees per second. Applies only
--- to tracking and velocity-aligned projectiles.
---@field TurnRate number
--- random variation around `TurnRate`
---@field TurnRateRange number
--- number of seconds before the projectile is destroyed
---@field Lifetime number
--- random variation around `Lifetime`
---@field LifetimeRange number
--- initial speed for the projectile
---@field InitialSpeed number
--- random variation around `InitialSpeed`
---@field InitialSpeedRange number
--- maximum speed for the projectile
---@field MaxSpeed number
--- random variation around `MaxSpeed`
---@field MaxSpeedRange number
--- forward acceleration of the projectile
---@field Acceleration number
--- random variation around `Acceleration`
---@field AccelerationRange number
--- initial position X offset
---@field PositionX number
--- random variation around `PositionX`
---@field PositionXRange number
--- initial position Y offset
---@field PositionY number
--- random variation around `PositionY`
---@field PositionYRange number
--- initial position Z offset
---@field PositionZ number
--- Random variation around PositionZ
---@field PositionZRange number
--- initial X direction component
---@field DirectionX number
--- Random variation around `DirectionX`
---@field DirectionXRange number
--- initial Y direction component
---@field DirectionY number
--- random variation around `DirectionY`
---@field DirectionYRange number
--- initial Z direction component
---@field DirectionZ number
--- random variation around `DirectionZ`
---@field DirectionZRange number
--- rotation rate in random direction
---@field RotationalVelocity number
--- range rotation rate in random direction
---@field RotationalVelocityRange number
--- minimum times to bounce on terrain before impact
---@field MinBounceCount number
--- maximum times to bounce on terrain before impact
---@field MaxBounceCount number
--- Bounce velocity dampening. `0.75` loses 75% velocity, defaults to `0.5`.
---@field BounceVelDamp number
--- if this entity is destroyed when it touches water
---@field DestroyOnWater boolean
--- maximum amount of zig-zag deflection
---@field MaxZigZag number
--- frequency of zig-zag directional changes, in seconds
---@field ZigZagFrequency number
--- realistic free fall ordinance type weapon
---@field RealisticOrdinance boolean
--- bombs that always drop stright down
---@field StraightDownOrdinance boolean
---@field OnLostTargetLifetime? number
