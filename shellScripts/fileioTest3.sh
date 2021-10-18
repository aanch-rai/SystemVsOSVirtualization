n=1
while [ $n -lt 6 ]
do
      sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags=direct prepare
      sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags=direct run
      sleep 60
      sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags=direct cleanup
      n=`expr $n + 1`
done
