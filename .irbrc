require 'irb/completion'
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:IRB_NAME]="irb"
IRB.conf[:MATH_MODE]=false
IRB.conf[:IRB_RC] = nil
IRB.conf[:BACK_TRACE_LIMIT]=16
IRB.conf[:USE_LOADER] = false
IRB.conf[:USE_READLINE] = nil
IRB.conf[:USE_TRACER] = false
IRB.conf[:IGNORE_SIGINT] = true
IRB.conf[:IGNORE_EOF] = false
IRB.conf[:DEBUG_LEVEL]=0
#IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:PROMPT_MODE] = :MY_PROMPT

IRB.conf[:PROMPT][:MY_PROMPT] = { # name of prompt mode
  :PROMPT_I => "",             # normal prompt
  :PROMPT_S => "",             # prompt for continuing strings
  :PROMPT_C => "  ",             # prompt for continuing statement
  :RETURN => "#=>%s\n"        # format to return value
}
