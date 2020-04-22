
#!/bin/bash


#!/bin/bash

most_urgent_desc=`task rc.verbose: rc.report.next.columns:description rc.report.next.labels:1 limit:1 next`
most_urgent_id=`task rc.verbose: rc.report.next.columns:id rc.report.next.labels:1 limit:1 next`
most_urgent_due=`task status:pending count`
echo "$most_urgent_id" > /tmp/tw_polybar_id
echo "ToDo : $most_urgent_due"
