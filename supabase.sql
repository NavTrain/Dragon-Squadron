create table if not exists public.dragon_squadron_games (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  max_players integer not null default 2,
  pin_hash text,
  status text not null default 'waiting',
  turn integer not null default 1,
  scenario_minutes integer not null default 480,
  joined_count integer not null default 0,
  state jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  last_activity timestamptz not null default now()
);

alter table public.dragon_squadron_games enable row level security;

do $$ begin
  create policy "Dragon Squadron public read" on public.dragon_squadron_games for select using (true);
exception when duplicate_object then null; end $$;

do $$ begin
  create policy "Dragon Squadron public insert" on public.dragon_squadron_games for insert with check (true);
exception when duplicate_object then null; end $$;

do $$ begin
  create policy "Dragon Squadron public update" on public.dragon_squadron_games for update using (true) with check (true);
exception when duplicate_object then null; end $$;
