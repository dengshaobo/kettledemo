CREATE TABLE performance_log
(
  ID_BATCH INT
, SEQ_NR INT
, LOGDATE DATETIME
, TRANSNAME VARCHAR(255)
, STEPNAME VARCHAR(255)
, STEP_COPY INT
, LINES_READ BIGINT
, LINES_WRITTEN BIGINT
, LINES_UPDATED BIGINT
, LINES_INPUT BIGINT
, LINES_OUTPUT BIGINT
, LINES_REJECTED BIGINT
, ERRORS BIGINT
, INPUT_BUFFER_ROWS BIGINT
, OUTPUT_BUFFER_ROWS BIGINT
)
;