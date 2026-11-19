CREATE TABLE doc_tokens (doc_id TEXT NOT NULL,
    tok TEXT NOT NULL,
    PRIMARY KEY(doc_id,
    tok));
CREATE INDEX idx_tok_doc ON doc_tokens(tok,
    doc_id);
CREATE TABLE IF NOT EXISTS jaccard_set_similarity_sql_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
