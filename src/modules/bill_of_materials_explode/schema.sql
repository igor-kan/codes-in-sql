CREATE TABLE bom_links (parent_part TEXT NOT NULL,
    child_part TEXT NOT NULL,
    qty INTEGER NOT NULL CHECK(qty > 0),
    PRIMARY KEY(parent_part,
    child_part));
CREATE TABLE IF NOT EXISTS bill_of_materials_explode_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
