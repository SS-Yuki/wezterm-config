local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh' }
   options.launch_menu = {
      { label = 'PowerShell', args = { 'pwsh' } },
      { label = 'Windows PowerShell', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'Git Bash', args = {'C:/Applications/Git/bin/bash.exe', '-i', '-l'} },
      { label = 'Ubuntu 22.04', args = {'C:/Windows/system32/wsl.exe', '-d', 'Ubuntu-22.04'}},
      { label = 'Aliyun', args = { 'ssh', 'root@47.102.87.107' }},
      -- { label = 'Nushell', args = { 'nu' } },
   }
elseif platform.is_mac then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      -- { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      -- { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
      { label = 'Aliyun', args = { 'ssh', 'root@47.102.87.107' }},
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
