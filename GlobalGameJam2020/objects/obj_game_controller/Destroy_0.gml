ds_grid_destroy(GRID);
//surface_free(surface);
ds_list_destroy(OPEN_SPACES);
mp_grid_destroy(MP_GRID);
part_type_destroy(global.pt_dust_smoke);
part_system_destroy(global.part_system);
surface_free(light_surface);