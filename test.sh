
while true; do
	ping -t 3 google.com | awk -v host=google.com -v date="$(date)" '/packet loss/ {print date, "|", host, "|", $7}' >> packet-loss.txt
	sleep 5
done

