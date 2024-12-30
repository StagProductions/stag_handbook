local QBCore = exports['qb-core']:GetCoreObject()

local CommandList = {
    handbook = {
        style = 'info', title = 'Police Handbook', duration = 15000,
        message = '# **/arrest** \n Arrest Format \n\n # **/nec** \n Arrest Necessities \n\n # **/ipp** \n Initial Phase Pursuit \n\n # **/ic** \n Identity Codes \n\n # **/wm** \n Warning Markers \n\n # **/methane** \n Major Incident',
    },
    arrest = {
        style = 'info', title = 'Arrest Format', duration = 20000,
        message = 'The time now is ___\n\nYou are currently under arrest on suspision of ___.\n\nYou do not have to say anything. But, it may harm your defence if you do not mention when questioned something which you later rely on in court. Anything you do say may be given in evidence.\n\nDo you understand?.\n\nThe necessities for your arrest are to ___.',
    },
    nec = {
        style = 'info', title = 'Arrest Necessities', duration = 20000,
        message = 'Investigation: conduct a prompt and effective.\n\nDisappearance: prevent the prosecution being hindered.\n\n Child or Vulnerable person: to protect a. \n\n Obstruction: of the highway unlawfully (preventing).\n\n Physical Injury: prevent to themselves or other person.\n\n Public Decency: prevent an offence being committed against.\n\n Loss or Damage: prevent to property.\n\n Address: enable to be ascertained (not readily available).\n\n Name: enable to be ascertained (not readily available).',
    },
    ipp = {
        style = 'info', title = 'Initial Phase Pursuit', duration = 20000,
        message = 'VEHICLE DESCRIPTION: MAKE/MODEL/VRM\n\nLOCATION & DIRECTION:___\n\nSPEED:___\n\nTRAFFIC DENSITY: LOW/MED/HIGH\n\nPEDESTRIAN DENSITY:LOW/MED/HIGH\n\nROAD CONDITIONS: WET/DRY/DIRT\n\nWEATHER: CLEAR/LIGHT/DARK\n\nVISIBILITY:CLEAR/MED/LOW\n\nDRIVER CLASSIFICATION:IPP/ADV/TPAC\n\nPOLICE VEHICLE:MARKED/UNMARKED',
    },
    ic = {
        style = 'info', title = 'Identity Codes', duration = 20000,
        message = 'IC1: White - North European\nIC2: White - South European\nIC3: Black\nIC4: Asian\nIC5: Chinese, Japanese or other South East Asian\nIC6: Arabic or North African\nIC9: Unknown',
    },
    wm = {
        style = 'info', title = 'Warning Markers', duration = 20000,
        message = 'FI: FIREARMS\nWE: WEAPONS\nXP: EXPLOSIVES\nVI: VIOLENT\nCO: CONTAGIOUS\nES: ESCAPER\nAG: ALLEGES\nAT: AILMENT\nSU: SUICIDAL\nMH: MENTAL HEALTH\nDR: DRUGS\nIM: MALE IMPERSONATOR\nIF: FEMALE IMPERSONATOR',
    },
    methane = {
        style = 'info', title = 'Major Incident', duration = 20000,
        message = 'Major Incident Declared: __\nExact Location: of incident\nType of incident: category\nHazards: in the area\nAccess: routes in/out\nNumber and types of casualties: ___\nEmergency Services present and required: ___.',
    },
}

for cmd, data in pairs(CommandList) do
    RegisterCommand(cmd, function(source, args, rawCommand)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player or Player.PlayerData.job.name ~= 'police' then return end
        TriggerClientEvent('t-notify:client:Custom', source, {
            style = data.style,
            title = data.title,
            message = data.message,
            duration = data.duration,
        })
    end, false)
end