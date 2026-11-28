CREATE TABLE d61_touch (uid INTEGER NOT NULL, seq INTEGER NOT NULL, channel TEXT NOT NULL, PRIMARY KEY(uid, seq));
CREATE TABLE d61_conv (uid INTEGER PRIMARY KEY, conv_seq INTEGER NOT NULL);
CREATE TABLE IF NOT EXISTS first_last_touch_attr_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
