try
	do shell script "/usr/local/bin/docker ps"
on error
	return ""
end try

set containers to do shell script "/usr/local/bin/docker container ls -q | wc -l | xargs"

if containers = "0" then
	return ""
end if

return containers