-- MEEEN V11: store quiz definitions separately so share links stay short.
-- Safe to run as a NEW query. Creates a new table; does not delete existing quiz_results.
create table if not exists public.quiz_links (
  id text primary key,
  quiz_data jsonb not null,
  created_at timestamptz not null default now()
);

alter table public.quiz_links enable row level security;

drop policy if exists "Allow public quiz link reads" on public.quiz_links;
create policy "Allow public quiz link reads"
on public.quiz_links for select to anon, authenticated using (true);

drop policy if exists "Allow public quiz link inserts" on public.quiz_links;
create policy "Allow public quiz link inserts"
on public.quiz_links for insert to anon, authenticated with check (true);
