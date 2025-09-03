# techbase-tmux-theme plugin
# Color palette (from https://github.com/mcauley-penney/techbase.nvim theme)
set -g @color_fg "#CCD5E5"
set -g @color_bg "#191d23"
set -g @color_bg_alt "#20252E"
set -g @color_comment "#474B65"
set -g @color_accent "#6A8BE3"
set -g @color_number "#B85B53"
set -g @color_operator "#b09884"

# Use True Color if possible
set-option -ga terminal-overrides ",xterm-256color:Tc"

# Status bar
set -g status-style "fg=#{@color_fg},bg=#{@color_bg_alt}"
set -g status "on"
set -g status-justify "left"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#{@color_bg},bg=#{@color_accent},bold] #S #[fg=#{@color_accent},bg=#{@color_bg_alt},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#{@color_bg_alt},bg=#{@color_bg_alt},nobold,nounderscore,noitalics]#[fg=#{@color_fg},bg=#{@color_bg_alt}] #{prefix_highlight} #[fg=#{@color_fg},bg=#{@color_bg_alt},nobold,nounderscore,noitalics]#[fg=#{@color_bg},bg=#{@color_fg}] %Y-%m-%d  %I:%M %p  #h "
setw -g window-status-activity-style "underscore,fg=#{@color_fg},bg=#{@color_bg_alt}"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#{@color_fg},bg=#{@color_bg_alt}"
setw -g window-status-format "#[fg=#{@color_bg_alt},bg=#{@color_bg_alt},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#{@color_bg_alt},bg=#{@color_bg_alt},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#{@color_bg_alt},bg=#{@color_fg},nobold,nounderscore,noitalics]#[fg=#{@color_bg_alt},bg=#{@color_fg},bold] #I  #W #F #[fg=#{@color_fg},bg=#{@color_bg_alt},nobold,nounderscore,noitalics]"

# Pane border
set-option -g pane-border-style "fg=#{@color_operator},bg=#{@color_bg}"
set-option -g pane-active-border-style "fg=#{@color_accent},bg=#{@color_bg}"

# Message styling (for copy mode, prompts, etc)
set-option -g message-style "fg=#{@color_fg},bg=#{@color_bg_alt}"
set-option -g message-command-style "fg=#{@color_accent},bg=#{@color_bg_alt}"

# Mode-style (copy mode indicator)
set-option -g mode-style "fg=#{@color_bg},bg=#{@color_accent},bold"

# Clock mode colors
set-window-option -g clock-mode-colour "#{@color_number}"
set-window-option -g clock-mode-style 24

# Bell color
set-option -g bell-action any
set-option -g window-status-bell-style "fg=#F71735,bg=#{@color_bg_alt}"


