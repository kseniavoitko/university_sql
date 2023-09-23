from psycopg2 import connect, Error
from contextlib import contextmanager


@contextmanager
def connection():
    conn = None
    try:
        conn = connect(
            host="cornelius.db.elephantsql.com",
            user="oproblqj",
            database="oproblqj",
            password="C2l1VtnffjYSbHbda4QXrY8LCk0rYDNk",
        )
        yield conn
        conn.commit()
    except Error as error:
        print(error)
        conn.rollback()
    finally:
        if conn is not None:
            conn.close()
