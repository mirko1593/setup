-- ~/.luacheckrc
stds = {
  nvim = {
    globals = { "vim" }
  }
}

-- Add a default standard that includes the 'nvim' standard
std = "nvim+lua52"

-- Additional configurations
max_line_length = false,  -- Disable max line length warnings
unused_args = false,  -- Disable warnings for unused arguments

-- Ignore specific warnings globally
ignore = {
  "111",  -- Setting variable is not necessary (global variables)
  "113",  -- Accessing undefined variable (we define globals ourselves)
}
