DROP TABLE IF EXISTS LoadArchiverRise;
DROP TABLE IF EXISTS LoadArchiverRiseBackfill;

CREATE TABLE IF NOT EXISTS LoadArchiverRise (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE TABLE IF NOT EXISTS LoadArchiverRiseBackfill (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE INDEX idx_archiver_txid ON LoadArchiverRise (WeaveVMArchiveTxid);
CREATE INDEX idx_backfill_txid ON LoadArchiverRiseBackfill (WeaveVMArchiveTxid);
CREATE INDEX idx_archiver_block_id ON LoadArchiverRise (NetworkBlockId);
CREATE INDEX idx_backfill_block_id ON LoadArchiverRiseBackfill (NetworkBlockId);
