-- Dragon Squadron SURFEX multigame table
-- Run once in the Supabase SQL Editor if the table does not already exist.

create extension if not exists pgcrypto;

create table if not exists public.dragon_squadron_games (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  max_players integer not null check (max_players between 2 and 5),
  pin_hash text,
  status text not null default 'waiting',
  turn integer not null default 1,
  scenario_minutes integer not null default 0,
  joined_count integer not null default 0,
  state jsonb not null default '{}'::jsonb,
  last_activity timestamptz not null default now(),
  created_at timestamptz not null default now()
);

create index if not exists dragon_squadron_games_status_idx on public.dragon_squadron_games(status);
create index if not exists dragon_squadron_games_created_idx on public.dragon_squadron_games(created_at desc);
create index if not exists dragon_squadron_games_activity_idx on public.dragon_squadron_games(last_activity desc);

alter table public.dragon_squadron_games enable row level security;

drop policy if exists "Dragon Squadron public read" on public.dragon_squadron_games;
create policy "Dragon Squadron public read"
  on public.dragon_squadron_games
  for select
  using (true);

drop policy if exists "Dragon Squadron public insert" on public.dragon_squadron_games;
create policy "Dragon Squadron public insert"
  on public.dragon_squadron_games
  for insert
  with check (true);

drop policy if exists "Dragon Squadron public update" on public.dragon_squadron_games;
create policy "Dragon Squadron public update"
  on public.dragon_squadron_games
  for update
  using (true)
  with check (true);
