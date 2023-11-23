# Launchers

This folder contains launcher scripts
intended to be added into Steam as
"non-Steam games"

## `.nix_template.sh`

This is the base template for launching
Nix applications. Let's break it down,
line-by-line:

```bash
#!/usr/bin/env bash
# The above is called a "shebang" and should
# be present at the top of any shell script

# This line stops Steam from injecting performance data,
# which can break applications
unset LD_PRELOAD

# The Steam launcher resets the PATH. This line
# allows your script to actually find your Nix software again
source /etc/profile.d/nix.sh

# nixGL is required in order to run graphical software,
# so you put it before the name of your actual application
exec nixGL <MyApplicationHere> [-flags --go=here]
```

When you've created your script, you'll need to make it
executable (`chmod u+x /path/to/my/script.sh`) or run it via:

```bash
bash /path/to/my/script.sh
```

### Using `.nix_template.sh` as the executable

You can also use `.nix_template.sh` itself as an executable and pass
in the name of your application as an addtional argument, _e.g._

```bash
/path/to/.nix_template.sh pingus -f -R 1280x800
```
