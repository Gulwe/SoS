-- lua
IT_LR_Artillery = 80;
IT_LR_RadMat = 81;
IT_LR_NonCombat = 82;
IT_LR_Cargo = 83;
IT_LR_Track = 84;
IT_LR_Crane = 85;
IT_LR_Bulldozer = 86;
IT_LR_Hovercraft = 87;
IT_LR_MultiBarrels = 88;

-- buttons.txt
SOS_TECH = {
	{
		TECH = IT_LR_Artillery,
		BUTTON = 1,
	},
	{
		TECH = IT_LR_RadMat,
		BUTTON = 56
	},
    {
        TECH = IT_LR_NonCombat,
        BUTTON = 42
    },
    {
        TECH = IT_LR_Cargo,
        BUTTON = 28
    },
    {
        TECH = IT_LR_Track,
        BUTTON = 27
    },
    {
        TECH = IT_LR_Crane,
        BUTTON = 72
    },
    {
        TECH = IT_LR_Bulldozer,
        BUTTON = 170
    },
    {
        TECH = IT_LR_Hovercraft,
        BUTTON = 173
    },
    {
        TECH = IT_LR_MultiBarrels,
        BUTTON = 174
    }
}

function GetLabQueueIcon(ID)
    if (ID <= -1) then
        return getIconTypeIndex(BudLab2IT(-ID));
    elseif (ID >= 80) then
    	return getCustomIconTypeIndex(ID);
    else
        return getIconTypeIndex(_Tech2ITTable[ID]);
    end;
end;

function getCustomIconTypeIndex(TECH)
    for i = 1, #SOS_TECH do
    	if (SOS_TECH[i].TECH == TECH) then
    		return SOS_TECH[i].BUTTON;
    	end;
    end;

    return -1;
end;