document.addEventListener('DOMContentLoaded', () => {
        document.getElementsByClassName('start_stop').addEventListener('click', main_stopWatch);
        document.getElementsByClassName('end_stop').addEventListener('click', clear_stopWatch);

        let isStarted = false, stopTime, startTime, pendTime = 0, stopWatchId;
        let disp = document.getElementsByClassName('display');
        let startStop = document.getElementsByClassName('start_stop');

        function main_stopWatch() {
          isStarted = !isStarted;
          isStarted ? start_stopWatch() : stop_stopWatch();
        }

        function start_stopWatch() {
          start_stop.innerHTML = 'ストップ';
          dispTime();
          stopWatchId = setInterval(dispTime, 1);
        }

        function dispTime() {
          startTime = startTime || Date.now();
          stopTime = Date.now() - startTime + pendTime;
          disp.innerHTML = (stopTime / 1000).toFixed(3);
        }

        function stop_stopWatch() {
          start_stop.innerHTML = 'スタート';
          clearInterval(stopWatchId);
          startTime = null;
          pendTime = stopTime;
        }

        function clear_stopWatch() {
          stop_stopWatch();
          pendTime = 0;
          disp.innerHTML = '0.000';
        }
      })