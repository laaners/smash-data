SETLOCAL EnableDelayedExpansion
@echo off
for %%f in (*.gif) do (
	set var_name=%%f
	ren %%f OLD_%%f
	ffmpeg -i OLD_%%f -r 15 -preset veryfast !var_name!
)

	::ffmpeg -i OLD_%%f -vf scale=290:-1 -preset veryfast !var_name!
