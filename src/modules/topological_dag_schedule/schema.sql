CREATE TABLE tasks (tid TEXT PRIMARY KEY,
    dur INTEGER NOT NULL CHECK(dur > 0));
CREATE TABLE task_deps (parent TEXT NOT NULL,
    child TEXT NOT NULL,
    PRIMARY KEY(parent,
    child));
CREATE TABLE IF NOT EXISTS topological_dag_schedule_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
