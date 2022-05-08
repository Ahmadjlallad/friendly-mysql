use mavenfuzzyfactorymini;
# its redundant and we need to normalize it
# we need foreign key
# create a new table
select *
from website_pageviews_non_normalized
where website_session_id = 20;

create table website_page_view_normalized
select website_pageview_id, created_at, website_session_id, pageview_url
from website_pageviews_non_normalized;
select *
from website_page_view_normalized;

create table website_sessions_normalized
select distinct website_session_id,
                session_created_at,
                user_id,
                utm_source,
                utm_campaign,
                utm_content,
                device_type,
                http_referer
from website_pageviews_non_normalized;
alter table website_sessions_normalized
    add primary key (website_session_id);
alter table website_page_view_normalized
    add primary key (website_pageview_id),
    add foreign key (website_session_id) references website_sessions_normalized (website_session_id);
drop table website_page_view_normalized;