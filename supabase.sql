-- Dragon Squadron SURFEX online state table
-- Run this in Supabase SQL Editor for a new project.

create table if not exists public.surfex_games (
  id text primary key,
  state jsonb,
  players jsonb default '{}'::jsonb,
  scoreboard jsonb default '[]'::jsonb,
  updated_at timestamptz default now()
);

alter table public.surfex_games enable row level security;

drop policy if exists "Dragon Squadron read" on public.surfex_games;
drop policy if exists "Dragon Squadron insert" on public.surfex_games;
drop policy if exists "Dragon Squadron update" on public.surfex_games;

create policy "Dragon Squadron read"
  on public.surfex_games
  for select
  using (true);

create policy "Dragon Squadron insert"
  on public.surfex_games
  for insert
  with check (true);

create policy "Dragon Squadron update"
  on public.surfex_games
  for update
  using (true)
  with check (true);

-- Enable realtime replication for dashboard sync.
do $$
begin
  alter publication supabase_realtime add table public.surfex_games;
exception
  when duplicate_object then null;
end $$;
