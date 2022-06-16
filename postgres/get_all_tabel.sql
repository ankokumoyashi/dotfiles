DROP FUNCTION test3();
CREATE OR REPLACE Function test3() RETURNS SETOF varchar
AS $$
DECLARE
    t_name VARCHAR(100);
BEGIN
    FOR t_name in SELECT tablename
    FROM pg_tables
    where schemaname = 'public'
    LOOP
        RETURN NEXT t_name;
    END LOOP;
    RETURN;
END;
$$
LANGUAGE plpgsql;

DO
$do$
DECLARE
    t_name VARCHAR(100);
    counts integer;
BEGIN
    FOR t_name in SELECT test3() LOOP
        BEGIN
            EXECUTE format('SELECT COUNT(*) FROM %s WHERE last_update > ''2022-05-31 14:47:57.62''', t_name) INTO counts;
            RAISE INFO '%', t_name;
            RAISE INFO '%', counts;
        EXCEPTION WHEN OTHERS THEN
            -- pass
        END;
    END LOOP;
END
$do$;
