/obj/machinery/scanner_gate/donor
	name = "vip scanner gate"
	desc = "A gate configured to only allow people with VIP access passes through"
	use_power = FALSE
	density = FALSE
	locked = TRUE
	resistance_flags = INDESTRUCTIBLE

/obj/machinery/scanner_gate/donor/auto_scan(atom/movable/AM)
	return

/obj/machinery/scanner_gate/donor/attackby(obj/item/W, mob/user, params)
	return

/obj/machinery/scanner_gate/donor/emag_act(mob/user)
	return

/obj/machinery/scanner_gate/donor/Cross(atom/movable/AM)
	. = ..()
	if(is_donator(AM))
		set_scanline("scanning", 10)
		return TRUE
	alarm_beep()
	return FALSE
