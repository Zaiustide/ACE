CREATE INDEX idx_account_session_log_accountId ON account_session_log (accountId);
CREATE INDEX idx_character_login_log_characterId ON character_login_log (characterId);

CREATE INDEX idx_arena_character_stats_char ON arena_character_stats (character_id);
CREATE INDEX idx_arena_character_stats_event ON arena_character_stats (event_type);
CREATE INDEX idx_arena_character_stats_char_event ON arena_character_stats (character_id, event_type);
CREATE INDEX idx_arena_character_stats_event_rank ON arena_character_stats (event_type, rank_points);

CREATE INDEX idx_arena_player_event ON arena_player (event_id);