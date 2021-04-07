import subprocess

p = subprocess.Popen("./update.sh", stdout=subprocess.PIPE, shell=True)

p_status=p.wait()

print(p_status)