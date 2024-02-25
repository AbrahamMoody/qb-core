local Translations = {
    error = {
        not_online = 'Der Bürger ist nicht erreichbar',
        wrong_format = 'Falsches Format',
        missing_args = 'Nicht alle Argumente wurden ausgefüllt (x, y, z)',
        missing_args2 = 'Alle Argumente müssen ausgefüllt sein!',
        no_access = 'Kein Zugriff auf diesen Befehl',
        company_too_poor = 'Dein Gehalt konnte nicht überwießen werden',
        item_not_exist = 'Das Item existiert nicht',
        too_heavy = 'Du trägst zuviel bei Dir.',
        location_not_exist = 'Der Ort existiert nicht',
        duplicate_license = 'Doppelte Rockstar-Lizenz gefunden',
        no_valid_license  = 'Keine verifizierte Rockstar-Lizenz gefunden',
        not_whitelisted = 'Du bist nicht gewhitelisted',
        server_already_open = 'Der Server ist schon geöffnet',
        server_already_closed = 'Der Server ist schon geschlossen',
        no_permission = 'Du hast keine Rechte dafür..',
        no_waypoint = 'Kein Wegpunkt gesetzt.',
        tp_error = 'Error beim teleportieren.',
        connecting_database_error   = '[QBCORE] - Bei der Verbindung zum Server ist ein Datenbankfehler aufgetreten. (Datenbank an??)',
        connecting_database_timeout = '[QBCORE] - Zeitüberschreitung bei der Verbindung zur Datenbank.(Datenbank an?)',
    },
    success = {
        server_opened = 'Der Server wurde geöffnet',
        server_closed = 'Der Server wurde geschlossen',
        teleported_waypoint = 'Zum Wegpunkt teleportiert.',
    },
    info = {
        received_paycheck = 'Dein Gehalt in Höhe von $%{value} wurde überwießen',
        job_info = 'Beruf: %{value} | Postion: %{value2} | im Dienst: %{value3}',
        gang_info = 'Gang: %{value} | Rang: %{value2}',
        on_duty = 'Du hast eingestempelt!',
        off_duty = 'Du hast ausgestempelt!',
        checking_ban = 'Hallo %s. Wir prüfen, ob du gebannt wurdest.',
        join_server = 'Willkommen %s bei {Server Name}.',
        checking_whitelisted = 'Hallo %s. Wir prüfen deine Erlaubnis.',
        exploit_banned = 'Du wurdest fürs Cheaten gebannt. Meld dich auf dem Discord: %{discord}',
        exploit_dropped = 'Du wurdest gekickt, für das Ausnutzen von Fehlern',
    },
    command = {
        tp = {
            help = 'TP zu Bürger oder Coords (Nur Admins)',
            params = {
                x = { name = 'id/x', help = 'ID vom Bürger oder X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'TP zum Marker (Nur Admins)' },
        togglepvp = { help = 'Schalte PVP ein oder aus (Nur Admins)' },
        addpermission = {
            help = 'Gebe einem Bürger Rechte (God Only)',
            params = {
                id = { name = 'id', help = 'ID des Bürgers' },
                permission = { name = 'permission', help = 'Zugriffsrechte' },
            },
        },
        removepermission = {
            help = 'Nimm jemand die Rechte (God Only)',
            params = {
                id = { name = 'id', help = 'ID des Bürgers' },
                permission = { name = 'permission', help = 'Zugriffsrechte' },
            },
        },
        openserver = { help = 'Öffne den Server für jeden (Nur Admins)' },
        closeserver = {
            help = 'Schließe den Server für Leute ohne Rechte (Nur Admins)',
            params = {
                reason = { name = 'reason', help = 'Grund fürs schließen (optional)' },
            },
        },
        car = {
            help = 'Spawne ein Fahrzeug (Nur Admins)',
            params = {
                model = { name = 'model', help = 'Modell Name' },
            },
        },
        dv = { help = 'Fahrzeug entfernen (Nur Admins)' },
        dvall = { help = 'Alle Fahrzeuge löschen (nur Admin)' },
        dvp = { help = 'Alle PEDS löschen (Admin Only)' },
        dvo = { help = 'Alle Objekte löschen (Admin Only)' },
        givemoney = {
            help = 'Gib jemandem Geld (Nur Admins)',
            params = {
                id = { name = 'id', help = 'Bürger ID' },
                moneytype = { name = 'moneytype', help = 'Geldtyp (Bargeld, Bank, Crypto)' },
                amount = { name = 'amount', help = 'Geldmenge' },
            },
        },
        setmoney = {
            help = 'Setze die Geldmenge für einen Bürger (Nur Admins)',
            params = {
                id = { name = 'id', help = 'Bürger ID' },
                moneytype = { name = 'moneytype', help = 'Geldtyp (Bargeld, Bank, Crypto)' },
                amount = { name = 'amount', help = 'Geldmenge' },
            },
        },
        job = { help = 'Check deinen Job' },
        setjob = {
            help = 'Setze den Job eines Bürgers (Nur Admins)',
            params = {
                id = { name = 'id', help = 'Bürger ID' },
                job = { name = 'job', help = 'Job Name' },
                grade = { name = 'grade', help = 'Dienstgrad' },
            },
        },
        gang = { help = 'Check deine Gang' },
        setgang = {
            help = 'Setze die Gang eines Bürgers (Nur Admins)',
            params = {
                id = { name = 'id', help = 'Bürger ID' },
                gang = { name = 'gang', help = 'Gang Name' },
                grade = { name = 'grade', help = 'Gang Rang' },
            },
        },
        ooc = { help = 'OOC Chat Nachricht' },
        me = {
            help = 'Locale Chat Nachricht',
            params = {
                message = { name = 'message', help = 'Nachricht zu senden' }
            },
        },
    },
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
