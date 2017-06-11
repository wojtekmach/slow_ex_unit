1. `mkfifo fifo`
2. In pane 1 run: `while true ; do COUNTER_FILE=a mix test; done`
3. In pane 2 run: `while true ; do echo > fifo ; done`
4. In pane 3 run: `tail -f fifo | COUNTER_FILE=b mix test --listen-on-stdin`
