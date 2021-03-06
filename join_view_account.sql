-- shard 1

CREATE TABLE "bedrock-hellmar"."join_view_account_1"
WITH (format = 'PARQUET', partitioned_by = ARRAY['d_date'])
AS
SELECT 
    v.event_id, v.event_date, v.device_id, v.account_id, v.profile_id, v.session_id, v.hashed_ip, v.start_date, v.end_date, v.program_id, v.program_title, v.video_id, v.video_type, v.video_title, v.video_duration, v.is_session_empty, v.seconds_viewed, v.last_timecode_seen_vod, v.last_date_seen_live, v.platform_code, v.service_code, v.reporting_type_code, v.latitude, v.longitude, v.asn, v.country_code, v.user_agent, v.conn_type, v.is_csl_activated, v.legal_end_date, v.user_action, v.postal_code, u.birthdate, u.age, u.gender, u.is_empty_first_name, u.is_empty_last_name, u.locale, u.zip_code, u.login_provider, u.registration_source, u.work_location, u.work_title, u.work_zip, u.emailing_id, u.email_md5, u.email_sha256, u.has_subscribed_newsletter, u.has_subscribed_newsletter_partner,
    u.has_kid, u.parental_filter, u.pairing_operators, u.is_active, u.is_locked_out, u.is_registered, u.is_verified, u.is_session_expired, u.last_login_date, u.create_date, u.update_date, u.consent_personalization, u.consent_adtargeting, u.consent_analytics, u.consent_multidevicematching, u.consent_expiration_date,
    d_date
FROM "bedrock-hellmar"."m6web_core_fact_beneficiaries_v1" v
LEFT OUTER JOIN "bedrock-hellmar"."m6web_core_dim_users_v1" u
ON u.account_id = v.account_id
WHERE d_date >= '2019-06-01' AND d_date <= '2019-08-31'
                                               
2  WHERE d_date >= '2019-09-01' AND d_date <= '2019-10-31'
3  WHERE d_date >= '2019-11-01' AND d_date <= '2019-12-31'
4  WHERE d_date >= '2020-01-01' AND d_date <= '2020-02-29'
5  WHERE d_date >= '2020-03-01' AND d_date <= '2020-04-30'
6  WHERE d_date >= '2020-05-01' AND d_date <= '2020-06-30'
7  WHERE d_date >= '2020-07-01' AND d_date <= '2020-08-31'
8  WHERE d_date >= '2020-09-01' AND d_date <= '2020-10-31'
9  WHERE d_date >= '2020-11-01' AND d_date <= '2020-12-31'
10 WHERE d_date >= '2021-01-01' AND d_date <= '2021-02-28'
                                                                                                                                                                                                                                                                                                                                                                                                                                       
