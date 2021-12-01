DELETE
FROM vk.messages
WHERE CURRENT_TIMESTAMP() - create_at < 0;

# Тему курсового пока не выбрал - определюсь в ближайшее время