-- MEEEN? leaderboard read access.
-- Run this as a NEW query in Supabase SQL Editor AFTER the quiz_results table exists.
-- The website only stores public leaderboard fields in result_data (no answer details).

drop policy if exists "Allow public leaderboard reads" on public.quiz_results;
create policy "Allow public leaderboard reads"
on public.quiz_results
for select
to anon, authenticated
using (true);
