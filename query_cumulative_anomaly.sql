SELECT r1.level_1_code                                        AS KODE_PROV,
       r1.level_1_name                                        AS PROV,
       r1.level_2_code                                        AS KODE_KAB,
       r1.level_2_name                                        AS KAB,
       r1.level_3_code                                        AS KODE_KEC,
       r1.level_3_name                                        AS KEC,
       r1.level_4_code                                        AS KODE_DESA,
       r1.level_4_name                                        AS DESA,

CONCAT(
        -- Anomali 1
        CASE WHEN (
            r1.r305c > 1 AND r1.r308a_value = 2
        ) THEN 'A1,' END,
	-- Anomali 2
        CASE WHEN (
            (cast(r1.r401d as decimal)/cast(r1.r401c as decimal) > 0.5) AND r1.r403a_value <> '01'
        ) THEN 'A2,' END,
	-- Anomali 3
        CASE WHEN (
            (r1.r503b_value = 7 AND r2.r1204a_value = 2)
            OR (r1.r503b_value IN (2, 3, 4) AND r2.r1204b_value = 2)
        ) THEN 'A3,' END,
	-- Anomali 4
        CASE WHEN (
            r2.r1206b2_value = 1
            AND r2.r1403a = 0
        ) THEN 'A4,' END,
  -- Anomali 5
        -- Anomali 5-1
        CASE WHEN r701_n_1.index1 = 1 AND ((r701_n_1.r701k4 < 1 AND r701_n_1.r701k5_value IN (3,4)) OR (r701_n_1.r701k4 > 50 AND r701_n_1.r701k5_value IN (1,2))) THEN 'A5-1,' END,
        -- Anomali 5-2
        CASE WHEN r701_n_2.index1 = 2 AND ((r701_n_2.r701k4 < 1 AND r701_n_2.r701k5_value IN (3,4)) OR (r701_n_2.r701k4 > 50 AND r701_n_2.r701k5_value IN (1,2))) THEN 'A5-2,' END,
        -- Anomali 5-3
        CASE WHEN r701_n_3.index1 = 3 AND ((r701_n_3.r701k4 < 1 AND r701_n_3.r701k5_value IN (3,4)) OR (r701_n_3.r701k4 > 50 AND r701_n_3.r701k5_value IN (1,2))) THEN 'A5-3,' END,
        -- Anomali 5-4
        CASE WHEN r701_n_4.index1 = 4 AND ((r701_n_4.r701k4 < 1 AND r701_n_4.r701k5_value IN (3,4)) OR (r701_n_4.r701k4 > 50 AND r701_n_4.r701k5_value IN (1,2))) THEN 'A5-4,' END,
        -- Anomali 5-5
        CASE WHEN r701_n_5.index1 = 5 AND ((r701_n_5.r701k4 < 1 AND r701_n_5.r701k5_value IN (3,4)) OR (r701_n_5.r701k4 > 50 AND r701_n_5.r701k5_value IN (1,2))) THEN 'A5-5,' END,
        -- Anomali 5-6
        CASE WHEN r701_n_6.index1 = 6 AND ((r701_n_6.r701k4 < 1 AND r701_n_6.r701k5_value IN (3,4)) OR (r701_n_6.r701k4 > 50 AND r701_n_6.r701k5_value IN (1,2))) THEN 'A5-6,' END,
        -- Anomali 5-7
        CASE WHEN r701_n_7.index1 = 7 AND ((r701_n_7.r701k4 < 1 AND r701_n_7.r701k5_value IN (3,4)) OR (r701_n_7.r701k4 > 50 AND r701_n_7.r701k5_value IN (1,2))) THEN 'A5-7,' END,
        -- Anomali 5-8
        CASE WHEN r701_n_8.index1 = 8 AND ((r701_n_8.r701k4 < 1 AND r701_n_8.r701k5_value IN (3,4)) OR (r701_n_8.r701k4 > 50 AND r701_n_8.r701k5_value IN (1,2))) THEN 'A5-8,' END,
        -- Anomali 5-9
        CASE WHEN r701_n_9.index1 = 9 AND ((r701_n_9.r701k4 < 1 AND r701_n_9.r701k5_value IN (3,4)) OR (r701_n_9.r701k4 > 50 AND r701_n_9.r701k5_value IN (1,2))) THEN 'A5-9,' END,
        -- Anomali 5-10
        CASE WHEN r701_n_10.index1 = 10 AND ((r701_n_10.r701k4 < 1 AND r701_n_10.r701k5_value IN (3,4)) OR (r701_n_10.r701k4 > 50 AND r701_n_10.r701k5_value IN (1,2))) THEN 'A5-10,' END,
        -- Anomali 5-11
        CASE WHEN r701_n_11.index1 = 11 AND ((r701_n_11.r701k4 < 1 AND r701_n_11.r701k5_value IN (3,4)) OR (r701_n_11.r701k4 > 50 AND r701_n_11.r701k5_value IN (1,2))) THEN 'A5-11,' END,
  -- Anomali 6 
         -- Anomali 6-1
        CASE WHEN r704_n_1.index1 = 1 AND ((r704_n_1.r704k3 < 1 AND r704_n_1.r704k4_value IN (3,4)) OR (r704_n_1.r704k3 > 50 AND r704_n_1.r704k4_value IN (1,2))) THEN 'A6-1,' END,
        -- Anomali 6-2
        CASE WHEN r704_n_2.index1 = 2 AND ((r704_n_2.r704k3 < 1 AND r704_n_2.r704k4_value IN (3,4)) OR (r704_n_2.r704k3 > 50 AND r704_n_2.r704k4_value IN (1,2))) THEN 'A6-2,' END,
        -- Anomali 6-3
        CASE WHEN r704_n_3.index1 = 3 AND ((r704_n_3.r704k3 < 1 AND r704_n_3.r704k4_value IN (3,4)) OR (r704_n_3.r704k3 > 50 AND r704_n_3.r704k4_value IN (1,2))) THEN 'A6-3,' END,
        -- Anomali 6-4
        CASE WHEN r704_n_4.index1 = 4 AND ((r704_n_4.r704k3 < 1 AND r704_n_4.r704k4_value IN (3,4)) OR (r704_n_4.r704k3 > 50 AND r704_n_4.r704k4_value IN (1,2))) THEN 'A6-4,' END,
        -- Anomali 6-5
        CASE WHEN r704_n_5.index1 = 5 AND ((r704_n_5.r704k3 < 1 AND r704_n_5.r704k4_value IN (3,4)) OR (r704_n_5.r704k3 > 50 AND r704_n_5.r704k4_value IN (1,2))) THEN 'A6-5,' END,
        -- Anomali 6-6
        CASE WHEN r704_n_6.index1 = 6 AND ((r704_n_6.r704k3 < 1 AND r704_n_6.r704k4_value IN (3,4)) OR (r704_n_6.r704k3 > 50 AND r704_n_6.r704k4_value IN (1,2))) THEN 'A6-6,' END,
        -- Anomali 6-7
        CASE WHEN r704_n_7.index1 = 7 AND ((r704_n_7.r704k3 < 1 AND r704_n_7.r704k4_value IN (3,4)) OR (r704_n_7.r704k3 > 50 AND r704_n_7.r704k4_value IN (1,2))) THEN 'A6-7,' END,
        -- Anomali 6-8
        CASE WHEN r704_n_8.index1 = 8 AND ((r704_n_8.r704k3 < 1 AND r704_n_8.r704k4_value IN (3,4)) OR (r704_n_8.r704k3 > 50 AND r704_n_8.r704k4_value IN (1,2))) THEN 'A6-8,' END,
        -- Anomali 6-9
        CASE WHEN r704_n_9.index1 = 9 AND ((r704_n_9.r704k3 < 1 AND r704_n_9.r704k4_value IN (3,4)) OR (r704_n_9.r704k3 > 50 AND r704_n_9.r704k4_value IN (1,2))) THEN 'A6-9,' END,
        -- Anomali 6-10
        CASE WHEN r704_n_10.index1 = 10 AND ((r704_n_10.r704k3 < 1 AND r704_n_10.r704k4_value IN (3,4)) OR (r704_n_10.r704k3 > 50 AND r704_n_10.r704k4_value IN (1,2))) THEN 'A6-10,' END,
        -- Anomali 6-11
        CASE WHEN r704_n_11.index1 = 11 AND ((r704_n_11.r704k3 < 1 AND r704_n_11.r704k4_value IN (3,4)) OR (r704_n_11.r704k3 > 50 AND r704_n_11.r704k4_value IN (1,2))) THEN 'A6-11,' END,
        -- Anomali 6-12
        CASE WHEN r704_n_12.index1 = 12 AND ((r704_n_12.r704k3 < 1 AND r704_n_12.r704k4_value IN (3,4)) OR (r704_n_12.r704k3 > 50 AND r704_n_12.r704k4_value IN (1,2))) THEN 'A6-12,' END,
        -- Anomali 6-13
        CASE WHEN r704_n_13.index1 = 13 AND ((r704_n_13.r704k3 < 1 AND r704_n_13.r704k4_value IN (3,4)) OR (r704_n_13.r704k3 > 50 AND r704_n_13.r704k4_value IN (1,2))) THEN 'A6-13,' END,
  -- Anomali 7
        -- Anomali 7-1
        CASE WHEN r1208_n_1.index1 = 1 AND ((r1208_n_1.r1208_k3 < 1 AND r1208_n_1.r1208_k4_value IN (3,4)) OR (r1208_n_1.r1208_k3 > 50 AND r1208_n_1.r1208_k4_value IN (1,2))) THEN 'A7-1,' END,
        -- Anomali 7-2
        CASE WHEN r1208_n_2.index1 = 2 AND ((r1208_n_2.r1208_k3 < 1 AND r1208_n_2.r1208_k4_value IN (3,4)) OR (r1208_n_2.r1208_k3 > 50 AND r1208_n_2.r1208_k4_value IN (1,2))) THEN 'A7-2,' END,
        -- Anomali 7-3
        CASE WHEN r1208_n_3.index1 = 3 AND ((r1208_n_3.r1208_k3 < 1 AND r1208_n_3.r1208_k4_value IN (3,4)) OR (r1208_n_3.r1208_k3 > 50 AND r1208_n_3.r1208_k4_value IN (1,2))) THEN 'A7-3,' END,
        -- Anomali 7-4
        CASE WHEN r1208_n_4.index1 = 4 AND ((r1208_n_4.r1208_k3 < 1 AND r1208_n_4.r1208_k4_value IN (3,4)) OR (r1208_n_4.r1208_k3 > 50 AND r1208_n_4.r1208_k4_value IN (1,2))) THEN 'A7-4,' END,
        -- Anomali 7-5
        CASE WHEN r1208_n_5.index1 = 5 AND ((r1208_n_5.r1208_k3 < 1 AND r1208_n_5.r1208_k4_value IN (3,4)) OR (r1208_n_5.r1208_k3 > 50 AND r1208_n_5.r1208_k4_value IN (1,2))) THEN 'A7-5,' END,
        -- Anomali 7-6
        CASE WHEN r1208_n_6.index1 = 6 AND ((r1208_n_6.r1208_k3 < 1 AND r1208_n_6.r1208_k4_value IN (3,4)) OR (r1208_n_6.r1208_k3 > 50 AND r1208_n_6.r1208_k4_value IN (1,2))) THEN 'A7-6,' END,
        -- Anomali 7-7
        CASE WHEN r1208_n_7.index1 = 7 AND ((r1208_n_7.r1208_k3 < 1 AND r1208_n_7.r1208_k4_value IN (3,4)) OR (r1208_n_7.r1208_k3 > 50 AND r1208_n_7.r1208_k4_value IN (1,2))) THEN 'A7-7,' END,
        -- Anomali 7-8
        CASE WHEN r1208_n_8.index1 = 8 AND ((r1208_n_8.r1208_k3 < 1 AND r1208_n_8.r1208_k4_value IN (3,4)) OR (r1208_n_8.r1208_k3 > 50 AND r1208_n_8.r1208_k4_value IN (1,2))) THEN 'A7-8,' END,
        -- Anomali 7-9
        CASE WHEN r1208_n_9.index1 = 9 AND ((r1208_n_9.r1208_k3 < 1 AND r1208_n_9.r1208_k4_value IN (3,4)) OR (r1208_n_9.r1208_k3 > 50 AND r1208_n_9.r1208_k4_value IN (1,2))) THEN 'A7-9,' END,
  -- Anomali 8
        -- Anomali 8-1
        CASE WHEN r1209_n_1.index1 = 1 AND ((r1209_n_1.r1209_k3 < 1 AND r1209_n_1.r1209_k4_value IN (3,4)) OR (r1209_n_1.r1209_k3 > 50 AND r1209_n_1.r1209_k4_value IN (1,2))) THEN 'A8-1,' END,
        -- Anomali 8-2
        CASE WHEN r1209_n_2.index1 = 2 AND ((r1209_n_2.r1209_k3 < 1 AND r1209_n_2.r1209_k4_value IN (3,4)) OR (r1209_n_2.r1209_k3 > 50 AND r1209_n_2.r1209_k4_value IN (1,2))) THEN 'A8-2,' END,
        -- Anomali 8-3
        CASE WHEN r1209_n_3.index1 = 3 AND ((r1209_n_3.r1209_k3 < 1 AND r1209_n_3.r1209_k4_value IN (3,4)) OR (r1209_n_3.r1209_k3 > 50 AND r1209_n_3.r1209_k4_value IN (1,2))) THEN 'A8-3,' END,
        -- Anomali 8-4
        CASE WHEN r1209_n_4.index1 = 4 AND ((r1209_n_4.r1209_k3 < 1 AND r1209_n_4.r1209_k4_value IN (3,4)) OR (r1209_n_4.r1209_k3 > 50 AND r1209_n_4.r1209_k4_value IN (1,2))) THEN 'A8-4,' END,
        -- Anomali 8-5
        CASE WHEN r1209_n_5.index1 = 5 AND ((r1209_n_5.r1209_k3 < 1 AND r1209_n_5.r1209_k4_value IN (3,4)) OR (r1209_n_5.r1209_k3 > 50 AND r1209_n_5.r1209_k4_value IN (1,2))) THEN 'A8-5,' END,
        -- Anomali 8-6
        CASE WHEN r1209_n_6.index1 = 6 AND ((r1209_n_6.r1209_k3 < 1 AND r1209_n_6.r1209_k4_value IN (3,4)) OR (r1209_n_6.r1209_k3 > 50 AND r1209_n_6.r1209_k4_value IN (1,2))) THEN 'A8-6,' END,
        -- Anomali 8-7
        CASE WHEN r1209_n_7.index1 = 7 AND ((r1209_n_7.r1209_k3 < 1 AND r1209_n_7.r1209_k4_value IN (3,4)) OR (r1209_n_7.r1209_k3 > 50 AND r1209_n_7.r1209_k4_value IN (1,2))) THEN 'A8-7,' END,
        -- Anomali 8-8
        CASE WHEN r1209_n_8.index1 = 8 AND ((r1209_n_8.r1209_k3 < 1 AND r1209_n_8.r1209_k4_value IN (3,4)) OR (r1209_n_8.r1209_k3 > 50 AND r1209_n_8.r1209_k4_value IN (1,2))) THEN 'A8-8,' END,
        -- Anomali 8-9
        CASE WHEN r1209_n_9.index1 = 9 AND ((r1209_n_9.r1209_k3 < 1 AND r1209_n_9.r1209_k4_value IN (3,4)) OR (r1209_n_9.r1209_k3 > 50 AND r1209_n_9.r1209_k4_value IN (1,2))) THEN 'A8-9,' END,
        -- Anomali 8-10
        CASE WHEN r1209_n_10.index1 = 10 AND ((r1209_n_10.r1209_k3 < 1 AND r1209_n_10.r1209_k4_value IN (3,4)) OR (r1209_n_10.r1209_k3 > 50 AND r1209_n_10.r1209_k4_value IN (1,2))) THEN 'A8-10,' END,
	-- Anomali 9
        CASE WHEN (
            r1.r401c < ((r1.r401a + r1.r401b) / 13)
        ) THEN 'A9,' END,
  -- Anomali 10
        CASE WHEN (
            r2.r1203b1 IS NOT NULL AND (r2.r1201a8 + r2.r1201a9) = 0
        ) THEN 'A10,' END,
  -- Anomali 11
        CASE WHEN (
            r1.r305a_value = 1 AND r1.r307b2 < 10
        ) THEN 'A11,' END,
  -- Anomali 12
        CASE WHEN (
            r1.r603 > 0 AND (r1.r1101a + r1.r1101b) = 0
        ) THEN 'A12,' END,
  -- Anomali 13
        CASE WHEN (
            r1.r403b1_value = 6 AND r1.r309a_value = 3
        ) THEN 'A13,' END,
  -- Anomali 14
        CASE WHEN (
            r1.r403c1_value = 5 AND r1.r403c2_value = 1
        ) THEN 'A14,' END,
  -- Anomali 15
        CASE WHEN (
            r1.r508a_value = 7 AND r1.r512a_value = 3
        ) THEN 'A15,' END,
  -- Anomali 16
        CASE WHEN (
            r1.r508b_value = 5 AND r1.r512a_value = 3
        ) THEN 'A16,' END,
  -- Anomali 17
        CASE WHEN (
            r1.r511c1_value = 1 AND r1.r514a_k2_value = 2
        ) THEN 'A17,' END,
  -- Anomali 18
        CASE WHEN (
            r1.r504d_value = 1 AND r1.r515b_value = 3
        ) THEN 'A18,' END,
  -- Anomali 19
        CASE WHEN (
            r1.r403a_value <> '01' AND r1.r517_value = 1
        ) THEN 'A19,' END,
  -- Anomali 20
        CASE WHEN (
            r1.r308a_value = 2 AND r1.r604b_value = 1
        ) THEN 'A20,' END,
  -- Anomali 21
        CASE WHEN (
            r1.r308a_value = 2 AND r1.r605c_value = 1
        ) THEN 'A21,' END,
  -- Anomali 22
        CASE WHEN (
            r1.r511a_value = 1 AND r1.r513a_value = 2
        ) THEN 'A22,' END,
  -- Anomali 23
        CASE WHEN (
             r704_n_9.index1 = 9 AND (r704_n_9.r704k2 > 0 AND r1.r706c = 0)
        ) THEN 'A23,' END,
  -- Anomali 24
        CASE WHEN (
            r1.r515c_value IN (1, 2) AND (r1.r1101a = 0 AND r1.r1101b = 0)
        ) THEN 'A24,' END,
  -- Anomali 25
        CASE WHEN (
            r2.r1403f_value = 1 AND r1.r309a_value = 3
        ) THEN 'A25,' END,
  -- Anomali 26
        CASE WHEN (
            r2.r1403g_value = 1 AND r1.r512a_value = 3
        ) THEN 'A26,' END,
  -- Anomali 27
        CASE WHEN (
            r601_k2_2.data_key = 'r601_k2' AND r601_k2_2.pair_value = '02' AND r1.r308a_value = 2 AND r510a_1.pair_value is NULL
        ) THEN 'A27,' END,
  -- Anomali 28
        CASE WHEN (
            r601_k2_11.data_key = 'r601_k2' AND r601_k2_11.pair_value = '11' AND r1.r308a_value = 2
        ) THEN 'A28,' END,
  -- Anomali 29
        CASE WHEN (
            r601_k2_6.data_key = 'r601_k2' AND r601_k2_6.pair_value = '06' AND r1.r308a_value = 2
        ) THEN 'A29,' END,
  -- Anomali 30
        CASE WHEN (
            r601_k2_9.data_key = 'r601_k2' AND r601_k2_9.pair_value = '09' AND r1.r309a_value = 3
        ) THEN 'A30,' END,
  -- Anomali 31
        CASE WHEN (
            (r1.r803a <> 0 OR r1.r803b <> 0) AND r801_1.pair_value is NULL
        ) THEN 'A31,' END,
  -- Anomali 32
        CASE WHEN (
            r1.r304 > 1000
        ) THEN 'A32,' END,
  -- Anomali 33
        CASE WHEN (
             r1.r705a = 0 AND r1.r705e > 0
        ) THEN 'A33,' END,
  -- Anomali 34
        CASE WHEN (
            (r1.r508b_value = 1 OR r1.r508b_value = 2) AND (r1.r508a_value = 8 OR r1.r508a_value = 9 OR r1.r508a_value = 10)
        ) THEN 'A34,' END,
  -- Anomali 35
        CASE WHEN (
            ISNULL(r1.r509c1, 0) > 0 AND ((CAST(r1.r509c2 as DECIMAL)/CAST(ISNULL(r1.r509c1, 0) as DECIMAL)) < 2)
        ) THEN 'A35,' END,
  -- Anomali 36
        CASE WHEN (
            ISNULL(r1.r511b1, 0) > 0 AND ((CAST(r1.r511b2 as DECIMAL)/CAST(ISNULL(r1.r511b1, 0) as DECIMAL)) < 2)
        ) THEN 'A36,' END,
  -- Anomali 37
        CASE WHEN (
            ISNULL(r1.r513b1, 0) > 0 AND ((CAST(r1.r513b2 as DECIMAL)/CAST(ISNULL(r1.r513b1, 0) as DECIMAL)) < 2)
        ) THEN 'A37,' END,
  -- Anomali 38
        CASE WHEN (
            r1.r503b_value = 1
        ) THEN 'A38,' END,
  -- Anomali 39
        CASE WHEN (
            r1.r517_value = 1 AND r1.r1101a = 0 AND r1.r1101b = 0
        ) THEN 'A39,' END,
  -- Anomali 40
        CASE WHEN (
            r1002_n_1.r1002k5 < 5 AND (r1002_n_1.r1002k6a + (r1002_n_1.r1002k6b)/60) > 1
        ) THEN 'A40,' END,
  -- Anomali 41
        CASE WHEN (
            r1002_n_2.r1002k5 < 5 AND (r1002_n_2.r1002k6a + (r1002_n_2.r1002k6b)/60) > 1
        ) THEN 'A41,' END,
  -- Anomali 42
        CASE WHEN (
            r1002_n_3.r1002k5 < 5 AND (r1002_n_3.r1002k6a + (r1002_n_3.r1002k6b)/60) > 1
        ) THEN 'A42,' END,
  -- Anomali 43
        CASE WHEN (
            r1002_n_4.r1002k5 < 5 AND (r1002_n_4.r1002k6a + (r1002_n_4.r1002k6b)/60) > 1
        ) THEN 'A43,' END
	) as ANOMALI,

CONCAT('<a href="https://fasih-sm.bps.go.id/survey-collection/assignment-detail/',
        r1.assignment_id
       , '/1a8fde37-032e-4ae3-85f7-e677337fbb76" target="_blank">Link Assignment</a>') AS LINK

FROM tnk_e7a35bd4.root_table r1
        LEFT JOIN tnk_e7a35bd4.root_table_2 r2
                  ON r2.assignment_id = r1.assignment_id
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_1 ON r701_n_1.assignment_id = r1.assignment_id AND r701_n_1.index1 = 1
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_2 ON r701_n_2.assignment_id = r1.assignment_id AND r701_n_2.index1 = 2
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_3 ON r701_n_3.assignment_id = r1.assignment_id AND r701_n_3.index1 = 3
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_4 ON r701_n_4.assignment_id = r1.assignment_id AND r701_n_4.index1 = 4
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_5 ON r701_n_5.assignment_id = r1.assignment_id AND r701_n_5.index1 = 5
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_6 ON r701_n_6.assignment_id = r1.assignment_id AND r701_n_6.index1 = 6
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_7 ON r701_n_7.assignment_id = r1.assignment_id AND r701_n_7.index1 = 7
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_8 ON r701_n_8.assignment_id = r1.assignment_id AND r701_n_8.index1 = 8
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_9 ON r701_n_9.assignment_id = r1.assignment_id AND r701_n_9.index1 = 9
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_10 ON r701_n_10.assignment_id = r1.assignment_id AND r701_n_10.index1 = 10
        LEFT JOIN 
            tnk_e7a35bd4.r701_nested r701_n_11 ON r701_n_11.assignment_id = r1.assignment_id AND r701_n_11.index1 = 11
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_1 ON r704_n_1.assignment_id = r1.assignment_id AND r704_n_1.index1 = 1
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_2 ON r704_n_2.assignment_id = r1.assignment_id AND r704_n_2.index1 = 2
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_3 ON r704_n_3.assignment_id = r1.assignment_id AND r704_n_3.index1 = 3
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_4 ON r704_n_4.assignment_id = r1.assignment_id AND r704_n_4.index1 = 4
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_5 ON r704_n_5.assignment_id = r1.assignment_id AND r704_n_5.index1 = 5
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_6 ON r704_n_6.assignment_id = r1.assignment_id AND r704_n_6.index1 = 6
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_7 ON r704_n_7.assignment_id = r1.assignment_id AND r704_n_7.index1 = 7
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_8 ON r704_n_8.assignment_id = r1.assignment_id AND r704_n_8.index1 = 8
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_9 ON r704_n_9.assignment_id = r1.assignment_id AND r704_n_9.index1 = 9
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_10 ON r704_n_10.assignment_id = r1.assignment_id AND r704_n_10.index1 = 10
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_11 ON r704_n_11.assignment_id = r1.assignment_id AND r704_n_11.index1 = 11
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_12 ON r704_n_12.assignment_id = r1.assignment_id AND r704_n_12.index1 = 12
        LEFT JOIN 
            tnk_e7a35bd4.r704_nested r704_n_13 ON r704_n_13.assignment_id = r1.assignment_id AND r704_n_13.index1 = 13
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_1 ON r1208_n_1.assignment_id = r1.assignment_id AND r1208_n_1.index1 = 1
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_2 ON r1208_n_2.assignment_id = r1.assignment_id AND r1208_n_2.index1 = 2
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_3 ON r1208_n_3.assignment_id = r1.assignment_id AND r1208_n_3.index1 = 3
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_4 ON r1208_n_4.assignment_id = r1.assignment_id AND r1208_n_4.index1 = 4
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_5 ON r1208_n_5.assignment_id = r1.assignment_id AND r1208_n_5.index1 = 5
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_6 ON r1208_n_6.assignment_id = r1.assignment_id AND r1208_n_6.index1 = 6
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_7 ON r1208_n_7.assignment_id = r1.assignment_id AND r1208_n_7.index1 = 7
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_8 ON r1208_n_8.assignment_id = r1.assignment_id AND r1208_n_8.index1 = 8
        LEFT JOIN 
            tnk_e7a35bd4.r1208_nested r1208_n_9 ON r1208_n_9.assignment_id = r1.assignment_id AND r1208_n_9.index1 = 9
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_1 ON r1209_n_1.assignment_id = r1.assignment_id AND r1209_n_1.index1 = 1
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_2 ON r1209_n_2.assignment_id = r1.assignment_id AND r1209_n_2.index1 = 2
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_3 ON r1209_n_3.assignment_id = r1.assignment_id AND r1209_n_3.index1 = 3
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_4 ON r1209_n_4.assignment_id = r1.assignment_id AND r1209_n_4.index1 = 4
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_5 ON r1209_n_5.assignment_id = r1.assignment_id AND r1209_n_5.index1 = 5
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_6 ON r1209_n_6.assignment_id = r1.assignment_id AND r1209_n_6.index1 = 6
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_7 ON r1209_n_7.assignment_id = r1.assignment_id AND r1209_n_7.index1 = 7
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_8 ON r1209_n_8.assignment_id = r1.assignment_id AND r1209_n_8.index1 = 8
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_9 ON r1209_n_9.assignment_id = r1.assignment_id AND r1209_n_9.index1 = 9
        LEFT JOIN 
            tnk_e7a35bd4.r1209_nested r1209_n_10 ON r1209_n_10.assignment_id = r1.assignment_id AND r1209_n_10.index1 = 10
        LEFT JOIN (SELECT assignment_id, pair_value, pair_label, data_key
         FROM tnk_e7a35bd4.pair_label_value_0
            WHERE data_key = 'r601_k2' AND pair_value = '02' ) r601_k2_2
            ON r601_k2_2.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT assignment_id, pair_value, pair_label, data_key
         FROM tnk_e7a35bd4.pair_label_value_0
            WHERE data_key = 'r510a' AND pair_value = '1' ) r510a_1
            ON r510a_1.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT assignment_id, pair_value, pair_label, data_key
         FROM tnk_e7a35bd4.pair_label_value_0
            WHERE data_key = 'r601_k2' AND pair_value = '11' ) r601_k2_11
            ON r601_k2_11.assignment_id = r1.assignment_id                
        LEFT JOIN (SELECT assignment_id, pair_value, pair_label, data_key
         FROM tnk_e7a35bd4.pair_label_value_0
            WHERE data_key = 'r601_k2' AND pair_value = '06' ) r601_k2_6
            ON r601_k2_6.assignment_id = r1.assignment_id 
        LEFT JOIN (SELECT assignment_id, pair_value, pair_label, data_key
         FROM tnk_e7a35bd4.pair_label_value_0
            WHERE data_key = 'r601_k2' AND pair_value = '09' ) r601_k2_9
            ON r601_k2_9.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT assignment_id, pair_value, pair_label, data_key
         FROM tnk_e7a35bd4.pair_label_value_0
            WHERE data_key = 'r801' AND pair_value = '1' ) r801_1
            ON r801_1.assignment_id = r1.assignment_id
        LEFT JOIN tnk_e7a35bd4.r1002_nested r1002_n_1
            ON r1002_n_1.assignment_id = r1.assignment_id
            AND r1002_n_1.index1 = 1
        LEFT JOIN tnk_e7a35bd4.r1002_nested r1002_n_2
            ON r1002_n_2.assignment_id = r1.assignment_id
            AND r1002_n_2.index1 = 2
        LEFT JOIN tnk_e7a35bd4.r1002_nested r1002_n_3
            ON r1002_n_3.assignment_id = r1.assignment_id
            AND r1002_n_3.index1 = 3
        LEFT JOIN tnk_e7a35bd4.r1002_nested r1002_n_4
            ON r1002_n_4.assignment_id = r1.assignment_id
            AND r1002_n_4.index1 = 4
 