return {
  'sphamba/smear-cursor.nvim',
  event = 'VeryLazy',
  opts = {
    -- kitty часто перебивает цвет курсора поэтому надо задать явно
    cursor_color = '#d3cdc3',          

    -- символы повышенной детализации для плавности
    legacy_computing_symbols_support = true,

    -- геометрия смаза
    stiffness = 0.6,                   
    trailing_stiffness = 0.3,
    trailing_exponent = 3,
    distance_stop_animating = 0.5,

    -- рисует смаз даже поверх позиции цели
    never_draw_over_target = false,
  },
}
