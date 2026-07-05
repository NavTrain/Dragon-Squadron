create table if not exists public.dragon_squadron_state (
  id text primary key,
  state jsonb not null,
  updated_at timestamptz default now()
);
alter table public.dragon_squadron_state enable row level security;
drop policy if exists "dragon_squadron_state_all" on public.dragon_squadron_state;
create policy "dragon_squadron_state_all" on public.dragon_squadron_state for all using (true) with check (true);
