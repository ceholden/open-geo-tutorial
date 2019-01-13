#!/bin/bash
echo -n "c.NotebookApp.password = u'" >> /root/.jupyter/jupyter_notebook_config.py
python -c "from IPython.lib import passwd; import sys; sys.stdout.write(passwd('${JUPYTER_NOTEBOOK_PASSWORD}'));" >> /root/.jupyter/jupyter_notebook_config.py
echo -n "'" >> /root/.jupyter/jupyter_notebook_config.py

exec "$@"