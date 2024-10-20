require "raylib-cr"

SCREEN_WIDTH = 800
CREEN_HEIGHT = 450
TITLE        = "Raylib [core] example - Basic window"
FPS_RATE     = 60

def run
  Raylib.init_window(SCREEN_WIDTH, CREEN_HEIGHT, TITLE)
  Raylib.set_target_fps(FPS_RATE)

  # Detect window close button or ESC key
  until Raylib.close_window?
    Raylib.begin_drawing
    draw
    Raylib.end_drawing
  end

  Raylib.close_window
end

private def draw
  message = "Congrats! You created your first window!"
  Raylib.clear_background Raylib::WHITE
  Raylib.draw_text(message, 190, 200, 20, Raylib::LIGHTGRAY)
end
