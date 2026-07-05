-- Dragon Squadron SURFEX multi-game table
-- Run this once in Supabase SQL Editor before uploading/testing the app.

create extension if not exists pgcrypto;

create table if not exists public.dragon_squadron_games (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  max_players integer not null check (max_players between 2 and 5),
  pin_hash text,
  status text not null default 'waiting' check (status in ('waiting','active','complete','abandoned','deleted')),
  turn integer not null default 1,
  scenario_minutes integer not null default 0,
  joined_count integer not null default 0,
  state jsonb not null,
  created_at timestamptz not null default now(),
  last_activity timestamptz not null default now()
);

create index if not exists dragon_squadron_games_status_idx on public.dragon_squadron_games(status);
create index if not exists dragon_squadron_games_activity_idx on public.dragon_squadron_games(last_activity desc);

alter table public.dragon_squadron_games enable row level security;

drop policy if exists "Dragon Squadron public read" on public.dragon_squadron_games;
drop policy if exists "Dragon Squadron public insert" on public.dragon_squadron_games;
drop policy if exists "Dragon Squadron public update" on public.dragon_squadron_games;
drop policy if exists "Dragon Squadron public delete" on public.dragon_squadron_games;

create policy "Dragon Squadron public read"
  on public.dragon_squadron_games for select
  using (true);

create policy "Dragon Squadron public insert"
  on public.dragon_squadron_games for insert
  with check (true);

create policy "Dragon Squadron public update"
  on public.dragon_squadron_games for update
  using (true)
  with check (true);

create policy "Dragon Squadron public delete"
  on public.dragon_squadron_games for delete
  using (true);
