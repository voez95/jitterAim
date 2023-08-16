function OnEvent(event, arg)
    local isNumLockOn = IsKeyLockOn("numlock")
    local isRightMouseButtonPressed = IsMouseButtonPressed(3)
    
-- Cuando se presiona la tecla "scroll lock" se activa el script
   if (IsKeyLockOn("scrolllock")and event == "MOUSE_BUTTON_PRESSED" and arg == 2) then
        while isRightMouseButtonPressed do
            if IsMouseButtonPressed(1) then
                local centerX = 0 -- X-coordenada del centro del circulo
                local centerY = 2 -- Y-coordinate del centro del circulo
                local radius = 12 -- Radio del circulo
                local angle = 0 -- Angulo inicial
                local speed = 0.05 -- Velocidad del movimiento del mouse

                local step = 2 * math.pi / 12 -- pasos realizados por cada iteracion

                for i = 1, 24 do
                    local x = centerX + math.cos(angle) * radius
                    local y = centerY + math.sin(angle) * radius
                    MoveMouseRelative(x, y)
                    Sleep(3)

                    angle = angle + step
                end
            end
            
-- mientras el click derecho del mouse este presionado realiza el movimiento circular del mouse
            isRightMouseButtonPressed = IsMouseButtonPressed(3)
            Sleep(60)
        end
    end
end