create table if not exists public.dragon_squadron_games (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  max_players integer not null check (max_players between 2 and 5),
  pin_hash text,
  status text not null default 'waiting',
  turn integer not null default 1,
  scenario_minutes integer not null default 0,
  joined_count integer not null default 0,
  state jsonb not null,
  last_activity timestamptz not null default now(),
  created_at timestamptz not null default now()
);

alter table public.dragon_squadron_games enable row level security;

drop policy if exists "dragon_squadron_games_select" on public.dragon_squadron_games;
drop policy if exists "dragon_squadron_games_insert" on public.dragon_squadron_games;
drop policy if exists "dragon_squadron_games_update" on public.dragon_squadron_games;

create policy "dragon_squadron_games_select"
on public.dragon_squadron_games for select
using (true);

create policy "dragon_squadron_games_insert"
on public.dragon_squadron_games for insert
with check (true);

create policy "dragon_squadron_games_update"
on public.dragon_squadron_games for update
using (true)
with check (true);
