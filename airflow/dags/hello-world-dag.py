from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime, timedelta
from airflow.utils.trigger_rule import TriggerRule


default_args = {
    "owner": "airflow",
    "start_date": datetime(2021, 1, 1),
    "depends_on_past": False,
    "email_on_failure": False,
    "email_on_retry": False,
    "email": "youremail@host.com",
    "retries": 0,
    "retry_delay": timedelta(minutes=5),
}

# A DAG aceita CRON Expression. Assim, no schedule_interval abaixo, #"*/5 * * * *"
with DAG(
    dag_id="mits-quality-dag",
    schedule_interval="*/5 * * * *",
    default_args=default_args,
    catchup=False,
) as dag:

    hello = BashOperator(
        task_id='run_hello',
        bash_command='echo "Hello"',
    )

    world = BashOperator(
        task_id='run_world',
        bash_command='echo "World"',
    )

    hello >> world

# To test from command line: airflow tasks test dag_id task_id schedule
# Example -> airflow tasks test mits-quality-dag run_amb 2015-06-01
# git rm --cached
