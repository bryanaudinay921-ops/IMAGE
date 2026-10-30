local Players = game:GetService("Players")

-- Dictionnaire des traductions pour indiquer l'indisponibilité du script
local translations = {
    ["fr"] = {
        titre = "SCRIPT INDISPONIBLE",
        message = "Ce script n'est actuellement plus disponible du tout. Veuillez rejoindre notre serveur Discord pour plus d'informations."
    },
    ["en"] = {
        titre = "SCRIPT UNAVAILABLE",
        message = "This script is currently completely unavailable. Please join our Discord server for more information."
    },
    ["es"] = {
        titre = "SCRIPT NO DISPONIBLE",
        message = "Este script no está disponible en absoluto actualmente. Únete a nuestro servidor de Discord para más información."
    },
    ["pt"] = {
        titre = "SCRIPT INDISPONÍVEL",
        message = "Este script está totalmente indisponível no momento. Junte-se ao nosso servidor do Discord para mais informações."
    },
    ["de"] = {
        titre = "SKRIPT NICHT VERFÜGBAR",
        message = "Dieses Skript ist derzeit überhaupt nicht verfügbar. Bitte trete unserem Discord-Server bei, um weitere Informationen zu erhalten."
    },
    ["ru"] = {
        titre = "СКРИПТ НЕ ДОСТУПЕН",
        message = "Этот скрипт в настоящее время полностью недоступен. Пожалуйста, зайдите на наш Discord-сервер для получения дополнительной информации."
    },
    ["id"] = {
        titre = "SKRIP TIDAK TERSEDIA",
        message = "Skrip ini saat ini sama sekali tidak tersedia. Silakan bergabung dengan server Discord kami untuk informasi lebih lanjut."
    },
    ["vi"] = {
        titre = "KỊCH BẢN KHÔNG CÓ SẴN",
        message = "Kịch bản này hiện hoàn toàn không có sẵn. Vui lòng tham gia máy chủ Discord của chúng tôi để biết thêm thông tin."
    },
    ["tr"] = {
        titre = "BETİK KULLANILAMAZ",
        message = "Bu betik şu anda tamamen kullanılamıyor. Daha fazla bilgi için lütfen Discord sunucumuza katılın."
    },
    ["ar"] = {
        titre = "السكربت غير متوفر",
        message = "هذا السكربت غير متوفر تماماً حالياً. يرجى الانضمام إلى خادم Discord الخاص بنا لمزيد من المعلومات."
    },
    ["zh"] = {
        titre = "脚本不可用",
        message = "该脚本目前完全不可用。请加入我们的 Discord 服务器以获取更多信息。"
    },
    ["ja"] = {
        titre = "スクリプト利用不可",
        message = "このスクリプトは現在完全に利用できません。詳細についてはDiscordサーバーに参加してください。"
    },
    ["ko"] = {
        titre = "스크립트 사용 불가",
        message = "현재 이 스크립트는 전혀 사용할 수 없습니다. 자세한 내용은 Discord 서버에 가입해 주세요."
    }
}

-- Détection automatique de la langue du joueur (anglais par défaut si non trouvée)
local localeId = "en"
pcall(function()
    localeId = Players.LocalPlayer.LocaleId
end)
local langCode = string.sub(localeId, 1, 2):lower()
local t = translations[langCode] or translations["en"]

-- Attribution du titre et du message traduits
getgenv().Titre = t.titre
getgenv().Message = t.message
getgenv().Temps = 15

-- LES NOUVELLES OPTIONS DE TEXTE
getgenv().Police = 2          -- 3 = Style Minecraft (1 à 10 disponibles)
getgenv().Gras = true         -- true = Activer le gras (B), false = Désactiver
getgenv().Italique = true     -- true = Activer l'italique (slash), false = Désactiver
getgenv().CouleurTexte = 3    -- 6 = Jaune (1=Blanc, 2=Noir, 3=Rouge, etc.)

-- LES ANCIENNES OPTIONS QUI FONCTIONNENT TOUJOURS
getgenv().LD = 2            -- Contour Noir
getgenv().CouleurFond = 2     -- Fond Blanc
getgenv().ImageID = 86356189335165         -- 0 = Pas d'image
getgenv().ImageArrondi = 0    -- Pas d'arrondi

loadstring(game:HttpGet("https://raw.githubusercontent.com/bryanaudinay921-ops/message-en-lua/refs/heads/main/gfnfgngf.lua"))()
