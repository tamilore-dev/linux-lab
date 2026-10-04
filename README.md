# linux_lab

My bash practice repo. I'm learning Linux sysadmin work, and this is where the scripts I write along the way end up. Some are tiny exercises, a few are small tools I actually use. Expect rough edges.

## What's in here

| Folder | What it holds |
|---|---|
| `scripts/` | Practice scripts: variables, loops, conditionals, |
| `sysadmin/` | Scripts that check on a machine, like server stats, health check and cronjobs |

## Running a script

```bash
git clone git@github.com:tamilore-dev/linux-lab.git
cd linux-lab
chmod +x scripts/some-script.sh
./scripts/some-script.sh
```

Most scripts only read system info (`free`, `df`, `vmstat`), but read one before you run it. That's good advice for any script from the internet.

## Tested on

Fedora Workstation, bash 5. They should work on most Linux distros, but I haven't tried others.

## What I'm working on

- [x] Variables and basic scripting
- [ ] [Next topic, e.g. loops, functions, argument handling]
- [ ] Moving the useful scripts into their own repos

## Credit

Some exercises come from [roadmap.sh](https://roadmap.sh). The scripts are my own, with help from docs and man pages when I got stuck.
