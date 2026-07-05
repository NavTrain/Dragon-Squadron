create table if not exists public.dragon_squadron_state (
  id text primary key,
  state jsonb not null,
  updated_at timestamptz default now()
);

alter table public.dragon_squadron_state enable row level security;

drop policy if exists "dragon_squadron_read" on public.dragon_squadron_state;
drop policy if exists "dragon_squadron_write" on public.dragon_squadron_state;

create policy "dragon_squadron_read"
on public.dragon_squadron_state for select
using (true);

create policy "dragon_squadron_write"
on public.dragon_squadron_state for all
using (true)
with check (true);

do $$
begin
  alter publication supabase_realtime add table public.dragon_squadron_state;
exception when duplicate_object then
  null;
end $$;
