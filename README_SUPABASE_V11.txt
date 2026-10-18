MEEEN V11 — Short share links

WHAT CHANGED
- Quiz definitions are stored in Supabase table public.quiz_links.
- Share links contain only a short unique ID (for example #q=...).
- Quiz results continue to use the existing public.quiz_results table and quiz-specific quiz ID.
- Older #challenge= links remain supported by the website.

IMPORTANT SETUP BEFORE UPLOADING
1. Supabase → SQL Editor → New query.
2. Open SETUP_SUPABASE_V11.sql, copy all SQL, paste it, and click Run.
3. Confirm Success. No rows returned.
4. Upload the contents of this MEEEN folder to the same GitHub Pages repository, replacing the old index.html and adding SETUP_SUPABASE_V11.sql if you want to keep the setup file with the project.
5. Test by creating a NEW quiz, then open the short link in a private/incognito window or another device.

The link-storage table allows public read/insert because quiz creators and friends use the site without accounts. Do not put private information in quiz questions. Never place a Supabase secret/service_role key in client-side code.
