-- 원본 함수를 통째로 덮어씌워 재정의합니다.
function PlayerAction.UnseenStrike.Function(player_manager, min_time, max_duration, crit_chance)
    local co = coroutine.running()
    local current_time = Application:time()
    local target_time = Application:time() + min_time
    local can_activate = true

    -- [수정 영역] 피격 시 실행되는 콜백 함수
    local function on_damage_taken()
        -- 원본에 있던 target_time = Application:time() + min_time 구문을 제거했습니다.
        -- 이제 맞아도 target_time(목표 시간)이 미래로 밀려나지 않습니다.
        if not player_manager:has_activate_temporary_upgrade("temporary", "unseen_strike") then
            can_activate = true
        end
    end

    -- 메시지 등록 및 루프 구문은 원본과 동일하게 유지합니다.
    player_manager:register_message(Message.OnPlayerDamage, co, on_damage_taken)

    while true do
        current_time = Application:time()

        if target_time <= current_time and can_activate then
            managers.player:activate_temporary_upgrade("temporary", "unseen_strike")
            can_activate = false
        end

        coroutine.yield(co)
    end

    player_manager:unregister_message(Message.OnPlayerDamage, co)
end