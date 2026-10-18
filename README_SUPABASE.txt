MEEEN? V9 - Supabase setup

1) In Supabase, open SQL Editor -> New query.
2) Open SETUP_SUPABASE.sql, copy all its contents into the query, and click Run.
3) Wait for: Success. No rows returned.
4) Upload the updated MEEEN folder contents to the same GitHub Pages repository, replacing the old files.
5) Open the published site using a specific quiz link and test from a second device.

Project URL and the public Publishable key are configured in index.html. The publishable key is intended for browser use; never put a secret/service_role key in the website.

Privacy / limitations:
- The public leaderboard reads rows from quiz_results. Only player display name, score, total questions, quiz ID/title, gender and animal avatar are sent; answer details and essay answers are not sent to Supabase.
- Client-side scores can be manipulated by a determined user. This is a lightweight MVP, not an anti-cheat system.
- Existing quiz_results insert policy must remain enabled. This setup adds the SELECT policy needed for leaderboards.
