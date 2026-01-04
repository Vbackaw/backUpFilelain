--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local v0 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\198\202\213\33\233\172\196\17\196\205\207", "\126\177\163\187\69\134\219\167")]=(0 - 0)};
local v1 = {};
local v2 = {};
do
	local v6 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\19\193\43\220\249\49\222", "\156\67\173\74\165")).LocalPlayer:GetMouse();
	local v7 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\1\164\76\4\149\40\86\33\163\122\19\174\48\79\55\178", "\38\84\215\41\118\220\70"));
	local v8 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\98\3\44\33\251\66\0\43\17\251", "\158\48\118\66\114")).Heartbeat;
	v1.new = function(v39)
		local v40 = 0 - 0;
		local v41;
		local v42;
		while true do
			if (v40 == (0 - 0)) then
				v41, v42 = pcall(function()
					return v39.MouseEnter;
				end);
				if v41 then
					local v151 = 0 - 0;
					while true do
						if (v151 == 0) then
							v39.Active = true;
							v42:connect(function()
								local v165 = 0;
								local v166;
								local v167;
								while true do
									if (v165 == (1 - 0)) then
										v167 = v39.MouseLeave:connect(function()
											v166:disconnect();
											v167:disconnect();
										end);
										break;
									end
									if (v165 == (0 + 0)) then
										v166 = v39.InputBegan:connect(function(v171)
											if ((v171.UserInputType == Enum.UserInputType.MouseButton1) or (v171.UserInputType == Enum.UserInputType.Touch)) then
												local v172 = 0 - 0;
												local v173;
												while true do
													if (v172 == 0) then
														v173 = Vector2.new(v6.X - v39.AbsolutePosition.X, v6.Y - v39.AbsolutePosition.Y);
														while v8:wait() and v7:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
															v39:TweenPosition(UDim2.new(0 + 0, (v6.X - v173.X) + (v39.Size.X.Offset * v39.AnchorPoint.X), 0 - 0, (v6.Y - v173.Y) + (v39.Size.Y.Offset * v39.AnchorPoint.Y)), LUAOBFUSACTOR_DECRYPT_STR_0("\132\49\4", "\155\203\68\112\86\19\197"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\200\55\248", "\152\38\189\86\156\32\24\133"), 0.1, true);
														end
														break;
													end
												end
											end
										end);
										v167 = nil;
										v165 = 1414 - (447 + 966);
									end
								end
							end);
							break;
						end
					end
				end
				break;
			end
		end
	end;
	v2.new = function(v43, v44)
		v43:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\221\85\180\73\240\66\179\67\207\94\189\67", "\38\156\55\199")):connect(function()
			v44.Size = UDim2.new(v44.Size.X.Scale, v44.Size.X.Offset, v44.Size.Y.Scale, v43.AbsoluteSize.Y);
		end);
	end;
end
local v3 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\188\101\104\43\28\120\245\81", "\35\200\29\28\72\115\20\154")]=Color3.fromRGB(698 - 443, 255, 2072 - (1703 + 114)),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\177\213\218\159\32\61\23\186", "\84\121\223\177\191\237\76")]=Color3.fromRGB(708 - (376 + 325), 245, 50 - 19),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\87\219\163\53\92\63\211", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(550 - 371, 0 + 0, 207),[LUAOBFUSACTOR_DECRYPT_STR_0("\75\69\3\42\69\77\18", "\69\41\34\96")]=Color3.fromRGB(12 - 6, 5, 29 - (9 + 5))};
v0.Create = function(v11, v12, v13)
	local v14 = 0;
	local v15;
	while true do
		if (v14 == 1) then
			v15.Parent = v13.Parent;
			return v15;
		end
		if (v14 == 0) then
			v15 = Instance.new(v12);
			for v135, v136 in next, v13 do
				if (v135 ~= LUAOBFUSACTOR_DECRYPT_STR_0("\140\194\197\15\12\63", "\75\220\163\183\106\98")) then
					v15[v135] = v136;
				end
			end
			v14 = 377 - (85 + 291);
		end
	end
end;
v0.CreateWindow = function(v16, v17)
	assert(v17.text, LUAOBFUSACTOR_DECRYPT_STR_0("\12\181\203\57\216\15\191", "\185\98\218\235\87"));
	local v18 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\200\51\50\232\202", "\202\171\92\71\134\190")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\206\43\143\37\196\63", "\232\73\161\76")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\184\213\77\78\27\191", "\126\219\185\34\61")]=false};
	local v17 = v17 or {};
	setmetatable(v17, {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\241\87\124\122\114\235", "\135\108\174\62\18\30\23\147")]=v3});
	v16.windowcount = v16.windowcount + 1;
	local v20 = (gethui and gethui()) or game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\149\230\56\206\63\187\58", "\167\214\137\74\171\120\206\83"));
	v0.gui = v0.gui or v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\184\243\32\88\253\169\172\229\59", "\199\235\144\82\61\152"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\41\23\180\46", "\75\103\118\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\125\92\29\187\12\198\70\105", "\126\167\52\16\116\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\47\50\133\186\13", "\156\168\78\64\224\212\121")]=v20});
	v18.frame = v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\33\252\164\195\2", "\174\103\142\197"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\41\82\61", "\152\54\72\63\88\69\62")]=v17.text,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\197\252\89\218\208", "\60\180\164\142")]=v16.gui,[LUAOBFUSACTOR_DECRYPT_STR_0("\121\93\17\32\49\232", "\114\56\62\101\73\71\141")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\232\216\207\191\251\212\209\182\237\239\214\185\231\200\212\185\251\222\202\187\240", "\164\216\137\187")]=(1265 - (243 + 1022)),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\239\43\183", "\107\178\134\81\210\198\158")]=UDim2.new(0 - 0, 198 + 42, 1180 - (1123 + 57), 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\1\145\207\190\49\1\140", "\202\88\110\226\166")]=UDim2.new(0 + 0, (269 - (163 + 91)) + ((200 * v16.windowcount) - (2130 - (1869 + 61))), 0 + 0, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\14\129\252\205\209\0\151\249\206\224\0\142\248\216\144", "\170\163\111\226\151")]=v17.barcolor,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\63\160\60\75\37\26\24\42\183\8\71\47\44\29", "\73\113\80\210\88\46\87")]=0});
	local v23 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\180\63\200\0\206\143\60\216\6\212\132\62\219\27\228\132", "\135\225\76\173\114"));
	local v24 = true;
	v23.InputBegan:Connect(function(v45, v46)
		if v46 then
			return;
		end
		if (v45.KeyCode == Enum.KeyCode.K) then
			v24 = not v24;
			v0.gui.Enabled = v24;
		end
	end);
	v18.background = v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\60\255\185\189\169", "\199\122\141\216\208\204\221"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\29\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\133\188\71\3\154\30\5\43\128", "\112\69\228\223\44\100\232\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\30\21\214\184\104", "\230\180\127\103\179\214\28")]=v18.frame,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\10\77\66\225\83\211\133\31\90\118\237\89\229\128", "\128\236\101\63\38\132\33")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\168\18\79\177\249\192\185\167\21\103\185\231\192\190\250", "\175\204\201\113\36\214\139")]=v17.bgcolor,[LUAOBFUSACTOR_DECRYPT_STR_0("\119\195\38\213\16\78\195\59", "\100\39\172\85\188")]=UDim2.new(0, 0 - 0, 1 - 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\113\163\133", "\83\205\24\217\224")]=UDim2.new(1 + 0, 0 - 0, 0 + 0, 25),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\201\196\45\245\225\200\46\229\192\195\57\231\203\217\46", "\93\134\165\173")]=true});
	v18.container = v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\152\224\192\207\63", "\30\222\146\161\162\90\174\210"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\203\79\125\15", "\106\133\46\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\47\125\232\91\73\86\37\97", "\32\56\64\19\156\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\201\247\83\84\230", "\224\58\168\133\54\58\146")]=v18.frame,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\89\89\249\112\148\180\2\67\83\123\244\109\131\139", "\107\57\54\43\157\21\230\231")]=(1474 - (1329 + 145)),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\138\18\254\190\206\192\206\133\21\214\182\208\192\201\216", "\175\187\235\113\149\217\188")]=v17.bgcolor,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\160\146\69\247\112\119\50", "\24\92\207\225\44\131\25")]=UDim2.new(0, 971 - (140 + 831), 1851 - (1409 + 441), 718 - (15 + 703)),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\218\162\73", "\29\43\179\216\44\123")]=UDim2.new(1 + 0, 0, 438 - (262 + 176), 25),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\213\41\92\174\253\37\95\190\220\46\72\188\215\52\95", "\44\221\185\64")]=true});
	v18.organizer = v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\100\86\96\21\203\73\70\124\20\243", "\19\97\135\40\63"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\128\93\62\62", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\164\194\102\42\209", "\196\46\203\176\18\79\163\45"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\45\108\10\11\233\235\189\48", "\143\216\66\30\126\68\155")]=Enum.SortOrder.LayoutOrder,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\201\31\206\203\183", "\129\202\168\109\171\165\195\183")]=v18.container});
	v18.padder = v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\23\113\7\217\218\16\239\44\95", "\134\66\56\87\184\190\116"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\48\4\190", "\85\92\81\105\219\121\139\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\178\84\65\117\209\250", "\191\157\211\48\37\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\30\240\24\51\209\24\216\25\60\203", "\90\191\127\148\124")]=UDim.new(0, 1731 - (345 + 1376)),[LUAOBFUSACTOR_DECRYPT_STR_0("\72\134\42\19\113\137\41\35\119\151", "\119\24\231\78")]=UDim.new(0, 693 - (198 + 490)),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\44\183\79\210\84", "\113\226\77\197\42\188\32")]=v18.container});
	v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\28\4\245\184\63", "\213\90\118\148"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\117\47\185\83", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\88\135\142\148\34\164\254\21", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\33\21\249", "\59\211\72\111\156\176")]=UDim2.new(4 - 3, 0, 0 - 0, 1208 - (696 + 510)),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\136\240\36\90\142\236\35", "\77\46\231\131")]=UDim2.new(0 - 0, 1262 - (1091 + 171), 1 + 0, -(6 - 4)),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\91\164\68\191\70\133\73\160\81\134\73\162\81\186", "\32\218\52\214")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\108\22\50\163\246\162\74\79\64\19\18\167\253\191\87\9", "\58\46\119\81\200\145\208\37")]=v17.underline,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\141\34\169\167\169", "\86\75\236\80\204\201\221")]=v18.frame});
	local v29 = v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\220\158\102\85\120\139", "\235\18\33\23\229\158"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\126\187\204\190", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\126\123\78\215\74", "\128\132\17\28\41\187\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\27\8\62\88\25", "\61\97\82\102\90")]=(6 - 4),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\47\168\64\192\69\17\28\162\42\159\89\198\89\13\25\173\60\174\69\196\78", "\105\204\78\203\43\167\55\126")]=(375 - (123 + 251)),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\165\48\23\7\13\200\95", "\49\197\202\67\126\115\100\167")]=UDim2.new(4 - 3, -(723 - (208 + 490)), 0 + 0, 0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\82\197\44", "\62\87\59\191\73\224\54")]=UDim2.new(0, 861 - (660 + 176), 1 + 0, 202 - (14 + 188)),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\7\226\221", "\169\135\98\154")]="-",[LUAOBFUSACTOR_DECRYPT_STR_0("\255\114\60\64\206\58\210\206", "\168\171\23\68\52\157\83")]=(692 - (534 + 141)),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\116\237\185\6\34\139\251\99\166", "\231\148\17\149\205\69\77")]=v17.txtcolor,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\168\201\239", "\159\224\199\167\155\55")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\242\46\215\249\231", "\178\151\147\92")]=v18.frame});
	v29.MouseButton1Click:connect(function()
		v18.closed = not v18.closed;
		v29.Text = (v18.closed and "+") or "-";
		if v18.closed then
			v18:Resize(true, UDim2.new(1, 0 + 0, 0 + 0, 0));
		else
			v18:Resize(true);
		end
	end);
	v16:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\184\248\84\38\62\77\120\137\241", "\26\236\157\44\82\114\44"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\25\39\207\94", "\59\74\78\181")]=UDim2.new(1 + 0, 0 - 0, 1, 0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\208\89\81\180\55\222\79\84\183\17\195\91\84\160\53\208\72\95\189\38\200", "\211\69\177\58\58")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\234\107\241\236\217\132\236\99\240\217\194\175\224\117", "\171\215\133\25\149\137")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\205\42\238\204\63\240\77\243\155", "\34\129\168\82\154\143\80\156")]=v17.txtcolor,[LUAOBFUSACTOR_DECRYPT_STR_0("\177\183\43\31\107\65\133\138\160\96", "\233\229\210\83\107\40\46")]=(v17.bartextcolor or Color3.fromRGB(255, 137 + 118, 163 + 92)),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\71\42\194\54\200\88\55", "\101\161\34\82\182")]=17,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\2\87\234", "\78\136\109\57\158\187\130\226")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\58\225\229", "\145\94\95\153")]=(v17.text or LUAOBFUSACTOR_DECRYPT_STR_0("\234\196\26\209\65\160", "\215\157\173\116\181\46")),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\181\134\247", "\186\85\212\235\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\136\24\250\54\249", "\56\162\225\118\158\89\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\4\210\170\44\204", "\184\60\101\160\207\66")]=v18.frame});
	do
		local v49 = 396 - (115 + 281);
		while true do
			if ((0 - 0) == v49) then
				v1.new(v18.frame);
				v2.new(v18.background, v18.container);
				break;
			end
		end
	end
	local function v30()
		local v50 = 0;
		local v51;
		while true do
			if (0 == v50) then
				v51 = 0 + 0;
				for v142, v143 in next, v18.container:GetChildren() do
					if (not v143:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\4\171\80\181\34\150\80\189\40\141\105\168", "\220\81\226\28")) and not v143:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\38\252\178\250\238\195\26\219\133", "\167\115\181\226\155\138"))) then
						v51 = v51 + v143.AbsoluteSize.Y;
					end
				end
				v50 = 1;
			end
			if (v50 == 1) then
				return UDim2.new(1, 0, 0, v51 + (24 - 14));
			end
		end
	end
	v18.Resize = function(v52, v53, v54)
		local v55 = v54 or v30();
		v52.container.ClipsDescendants = true;
		if v53 then
			v52.background:TweenSize(v55, LUAOBFUSACTOR_DECRYPT_STR_0("\205\55\243", "\166\130\66\135\60\27\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\67\192\112", "\80\36\42\174\21"), 0.5 - 0, true);
		else
			v52.background.Size = v55;
		end
	end;
	v18.AddToggle = function(v57, v58, v59)
		local v60 = 867 - (550 + 317);
		local v61;
		local v62;
		while true do
			if (v60 == (0 - 0)) then
				v57.count = v57.count + (1 - 0);
				v59 = v59 or function()
				end;
				v60 = 1;
			end
			if ((2 - 1) == v60) then
				v61 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\122\21\47\110\98\17\53\127\66", "\26\46\112\87"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\179\96", "\212\217\67\203\20\223\223\37")]=v58,[LUAOBFUSACTOR_DECRYPT_STR_0("\137\132\178\215", "\178\218\237\200")]=UDim2.new(286 - (134 + 151), -(1675 - (970 + 695)), 0 - 0, 2010 - (582 + 1408)),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\180\229\219\177\167\233\197\184\177\210\194\183\187\245\192\183\167\227\222\181\172", "\176\214\213\134")]=(3 - 2),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\168\174\192\139\89\85\251\191\229", "\57\148\205\214\180\200\54")]=Color3.fromRGB(255, 320 - 65, 960 - 705),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\248\45\32\78\51\241\60\51\120\31\248\59\32", "\22\114\157\85\84")]=Enum.TextXAlignment.Left,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\202\10\203\72\226\135\214\207\22\214", "\200\164\171\115\164\61\150")]=v57.Count,[LUAOBFUSACTOR_DECRYPT_STR_0("\138\241\27\81\176\183\238\6", "\227\222\148\99\37")]=14,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\93\92\226", "\153\83\50\50\150")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\119\97\25\125\191", "\45\61\22\19\124\19\203")]=v57.container});
				v62 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\245\23\21\225\32\101\173\213\29\3", "\217\161\114\109\149\98\16"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\37\32\104", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\39\244", "\221\81\97\178\212\152\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\226\5\239\57\194\235\18\233\73", "\122\173\135\125\155")]=Color3.fromRGB(255, 1849 - (1195 + 629), 32 - 7),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\192\3\178\56\35\199\145\207\4\141\45\48\198\151\209\1\171\58\63\203\157", "\168\228\161\96\217\95\81")]=(242 - (187 + 54)),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\222\61\85\59\94\212\223", "\55\187\177\78\60\79")]=UDim2.new(781 - (162 + 618), -25, 0, 0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\199\69\238", "\224\77\174\63\139\38\175")]=UDim2.new(0 + 0, 25, 1, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\68\64\58\183\72\66\43", "\78\228\33\56")]=(35 - 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\113\188\23", "\229\174\30\210\99")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\236\148\84\227\41", "\89\123\141\230\49\141\93")]=v61});
				v60 = 2 - 0;
			end
			if (v60 == 3) then
				return v62;
			end
			if (v60 == 2) then
				v62.MouseButton1Click:connect(function()
					local v144 = 0;
					while true do
						if (v144 == (0 + 0)) then
							v57.toggles[v58] = not v57.toggles[v58];
							v62.TextColor3 = (v57.toggles[v58] and Color3.fromRGB(1636 - (1373 + 263), 1255 - (451 + 549), 45 + 95)) or Color3.fromRGB(255, 38 - 13, 25);
							v144 = 1 - 0;
						end
						if ((1385 - (746 + 638)) == v144) then
							v62.Text = (v57.toggles[v58] and LUAOBFUSACTOR_DECRYPT_STR_0("\220\95", "\42\147\17\150\108\112")) or LUAOBFUSACTOR_DECRYPT_STR_0("\32\128\11", "\136\111\198\77\31\135");
							v59(v57.toggles[v58]);
							break;
						end
					end
				end);
				v57:Resize();
				v60 = 2 + 1;
			end
		end
	end;
	v18.AddBox = function(v63, v64, v65)
		local v66 = 0 - 0;
		local v67;
		while true do
			if (v66 == 1) then
				v67 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\54\12\191\66\159\235\15", "\201\98\105\199\54\221\132\119"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\0\130\34\7\61\163\181\8\134\51\54\48\180\173", "\204\217\108\227\65\98\85")]=v64,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\202\239\224", "\160\62\163\149\133\76")]=UDim2.new(342 - (218 + 123), -(1591 - (1535 + 46)), 0, 20 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\161\14\36\196\196\175\24\33\199\226\178\12\33\208\198\161\31\42\205\213\185", "\163\182\192\109\79")]=(0.75 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\39\3\203\242\38\41\21\206\241\23\41\12\207\231\103", "\149\84\70\96\160")]=v17.boxcolor,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\3\21\249\27\9\1\226\42\85", "\141\88\102\109")]=Color3.fromRGB(815 - (306 + 254), 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\86\210\100\34\28\89\200\180\93\199\117\20\41", "\161\211\51\170\16\122\93\53")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\207\171\170\60\200\167\168\45", "\72\155\206\210")]=(1 + 13),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\127\76\26", "\83\38\26\52\110")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\126\24\41\82", "\38\56\119\71")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\238\65\217\48\66\220\253\92\211\55", "\54\147\143\56\182\69")]=v63.Count,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\142\237\77\218\196\178\246\83\218\230\136\231\76\211", "\191\182\225\159\41")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\19\58\80\133\147", "\162\75\114\72\53\235\231")]=v63.container});
				v67.FocusLost:connect(function(...)
					v65(v67, ...);
				end);
				v66 = 1469 - (899 + 568);
			end
			if (v66 == (2 + 0)) then
				v63:Resize();
				return v67;
			end
			if (v66 == (0 - 0)) then
				v63.count = v63.count + (604 - (268 + 335));
				v65 = v65 or function()
				end;
				v66 = 291 - (60 + 230);
			end
		end
	end;
	v18.AddCustomTextBox = function(v68, v69, v70)
		v68.count = v68.count + (573 - (426 + 146));
		v70 = v70 or function()
		end;
		local v72 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\184\57\92\246\113\13\148", "\98\236\92\36\130\51"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\148\21\13\185\64\160\186\60\160\28\30\142\64\176\161", "\80\196\121\108\218\37\200\213")]=(v69 or LUAOBFUSACTOR_DECRYPT_STR_0("\45\114\17\106\64\5\139\14\51\22\122\64\29\196\78\61", "\234\96\19\98\31\43\110")),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\22\72\194", "\235\102\127\50\167\204\18")]=UDim2.new(1 + 0, -(1466 - (282 + 1174)), 811 - (569 + 242), 57 - 37),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\160\246\40\67\60\95\180\251\39\112\60\81\175\230\51\69\60\85\175\246\58", "\78\48\193\149\67\36")]=0.75,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\31\131\19\70\34\17\149\22\69\19\17\140\23\83\99", "\33\80\126\224\120")]=Color3.fromRGB(50, 3 + 47, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\173\27\208\127\227\164\12\214\15", "\60\140\200\99\164")]=Color3.fromRGB(1279 - (706 + 318), 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\241\28\50\154\166\248\13\33\172\138\241\10\50", "\194\231\148\100\70")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\114\73\217\183\197\193\92\73", "\168\38\44\161\195\150")]=(1265 - (721 + 530)),[LUAOBFUSACTOR_DECRYPT_STR_0("\180\249\154\98", "\118\224\156\226\22\80\136\214")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\100\225\87\148", "\224\34\142\57")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\166\220\210\102\229\114\28\218\162\215", "\110\190\199\165\189\19\145\61")]=v68.count,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\228\101\236\142\213\233\226\109\237\187\206\194\238\123", "\167\186\139\23\136\235")]=(1271 - (945 + 326)),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\180\154\8\20\161", "\109\122\213\232")]=v68.container});
		v72.FocusLost:Connect(function(v108)
			if v108 then
				local v139 = 0 - 0;
				while true do
					if (v139 == (0 + 0)) then
						v70(v72.Text);
						print(LUAOBFUSACTOR_DECRYPT_STR_0("\219\228\167\34\174\250\167\61\239\228\183\59\229\246\172\112\250\242\169\35\180", "\80\142\151\194"), v72.Text);
						break;
					end
				end
			end
		end);
		v68:Resize();
		return v72;
	end;
	v18.AddButton = function(v73, v74, v75)
		local v76 = 0;
		local v77;
		while true do
			if (v76 == (700 - (271 + 429))) then
				v73.count = v73.count + 1 + 0;
				v75 = v75 or function()
				end;
				v76 = 1501 - (1408 + 92);
			end
			if (v76 == 1) then
				v77 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\55\195\111\88\33\211\99\88\12\200", "\44\99\166\23"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\72\242\49\34", "\196\28\151\73\86\83")]=v74,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\10\51\21", "\22\147\99\73\112\226\56\120")]=UDim2.new(1, -(1096 - (461 + 625)), 0, 1308 - (993 + 295)),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\116\225\254\138\170\122\247\251\137\140\103\227\251\158\168\116\240\240\131\187\108", "\237\216\21\130\149")]=(1 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\182\75\71\75\147\198\82\141\92\12", "\62\226\46\63\63\208\169")]=Color3.fromRGB(1426 - (418 + 753), 255, 98 + 157),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151\39\44\35\87\226\23\88\134\17\25", "\62\133\121\53\227\127\109\79")]=Enum.TextXAlignment.Left,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\42\225\229\167\184\21", "\194\112\116\82\149\182\206")]=(2 + 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\167\66\12", "\110\89\200\44\120\160\130")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\194\82\73\86\94\20\95\175\198\89", "\45\203\163\43\38\35\42\91")]=v73.Count,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\132\206\38\137\189", "\52\178\229\188\67\231\201")]=v73.container});
				v77.MouseButton1Click:connect(v75);
				v76 = 2;
			end
			if (v76 == (1 + 1)) then
				v73:Resize();
				return v77;
			end
		end
	end;
	v18.AddSlider = function(v78, v79, v80, v81)
		v78.count = v78.count + 1 + 0;
		v81 = v81 or function()
		end;
		v80 = v80 or {[LUAOBFUSACTOR_DECRYPT_STR_0("\44\72\94", "\67\65\33\48\100\151\60")]=(529 - (406 + 123)),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\230\182", "\147\191\135\206\184")]=(1869 - (1749 + 20)),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\58\163\194\209\64\183", "\210\228\72\198\161\184\51")]=false};
		local v83 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\16\91\242\29\118", "\174\86\41\147\112\19"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\104\9\151\14", "\203\59\96\237\107\69\111\113")]=UDim2.new(1 + 0, -10, 1322 - (1249 + 73), 15 + 25),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\23\175\234\54\226\216\49\24\168\213\35\241\217\55\6\173\243\52\254\212\61", "\183\68\118\204\129\81\144")]=(1146 - (466 + 679)),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\172\105\235\30\150\33\191\116\225\25", "\226\110\205\16\132\107")]=v78.count,[LUAOBFUSACTOR_DECRYPT_STR_0("\219\194\242\220\79\255", "\33\139\163\128\185")]=v78.container});
		local v84 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\99\93\28\202\123\89\6\219\91", "\190\55\56\100"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\98\170\36\10", "\147\54\207\92\126\115\131")]=v79,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\56\47\120", "\30\109\81\85\29\109")]=UDim2.new(2 - 1, -10, 0 - 0, 1920 - (106 + 1794)),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\112\87\189\49\204\243\234\127\80\130\36\223\242\236\97\85\164\51\208\255\230", "\156\159\17\52\214\86\190")]=(1 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\234\165\168\141\224\177\179\188\188", "\220\206\143\221")]=Color3.fromRGB(65 + 190, 752 - 497, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\120\53\3\224\237\222\143\122\35\26\221\194\198", "\178\230\29\77\119\184\172")]=Enum.TextXAlignment.Left,[LUAOBFUSACTOR_DECRYPT_STR_0("\193\187\18\15\68\241\239\187", "\152\149\222\106\123\23")]=(37 - 23),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\41\248\87", "\213\189\70\150\35")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\127\84\102\13\65\65", "\104\47\53\20")]=v83});
		local v85 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\133\94\128\17\185", "\111\195\44\225\124\220"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\235\79\26\118", "\203\184\38\96\19\203")]=UDim2.new(115 - (4 + 110), -(594 - (57 + 527)), 1427 - (41 + 1386), 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\124\106\72\218\48\124\119", "\174\89\19\25\33")]=UDim2.new(103 - (17 + 86), 4 + 1, 1 - 0, -15),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\19\81\69\240\149\4\58\28\86\109\248\139\4\61\65", "\107\79\114\50\46\151\231")]=Color3.fromRGB(40, 115 - 75, 206 - (122 + 44)),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\169\167\45\143\43\132\201\35\163\133\32\146\60\187", "\160\89\198\213\73\234\89\215")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\112\166\251\203\92", "\165\40\17\212\158")]=v83});
		local v86 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\195\203\9\62\35", "\70\133\185\104\83"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\55\76\94\47", "\169\100\37\36\74")]=UDim2.new(0 - 0, 0, 1 + 0, 0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\134\161\91\7\149\173\69\14\131\129\95\12\136\176\3", "\48\96\231\194")]=Color3.fromRGB(0 - 0, 320 - (30 + 35), 140),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\85\28\41\28\202\156\138\210\95\62\36\1\221\163", "\227\168\58\110\77\121\184\207")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\75\61\173\69\191\207", "\197\27\92\223\32\209\187\17")]=v85});
		local v87 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\55\90\219\239\47\94\193\254\15", "\155\99\63\163"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\182\212\185\153", "\228\226\177\193\237\217")]=tostring(v80.min),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\185\57\227", "\134\84\208\67")]=UDim2.new(0 + 0, 30, 1257 - (1043 + 214), 75 - 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\163\149\85\7\165\137\82", "\60\115\204\230")]=UDim2.new(1213 - (323 + 889), -(93 - 58), 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\59\232\123\224\40\228\101\233\62\223\98\230\52\248\96\230\40\238\126\228\35", "\16\135\90\139")]=(581 - (361 + 219)),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\113\30\39\109\91\116\91\102\85", "\24\52\20\102\83\46\52")]=Color3.fromRGB(575 - (53 + 267), 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\42\57\48\60\205\53\36", "\111\164\79\65\68")]=14,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\214\141\202", "\138\166\185\227\190\78")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\117\215\50\92\55", "\121\171\20\165\87\50\67")]=v83});
		local v88 = false;
		local function v89(v109)
			local v110 = 0 + 0;
			local v111;
			local v112;
			while true do
				if (v110 == (414 - (15 + 398))) then
					v86.Size = UDim2.new(v111, 982 - (18 + 964), 3 - 2, 0 + 0);
					v87.Text = tostring(v112);
					v110 = 2;
				end
				if (2 == v110) then
					v81(v112);
					break;
				end
				if (0 == v110) then
					v111 = math.clamp((v109.Position.X - v85.AbsolutePosition.X) / v85.AbsoluteSize.X, 0 + 0, 851 - (20 + 830));
					v112 = math.floor(v80.min + ((v80.max - v80.min) * v111) + 0.5 + 0);
					v110 = 1;
				end
			end
		end
		v85.InputBegan:Connect(function(v113)
			if (v113.UserInputType == Enum.UserInputType.MouseButton1) then
				v88 = true;
				v89(v113);
			end
		end);
		v85.InputEnded:Connect(function(v114)
			if (v114.UserInputType == Enum.UserInputType.MouseButton1) then
				v88 = false;
			end
		end);
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\243\43\188\36\144\12\214\45\173\5\188\16\208\49\186\51", "\98\166\88\217\86\217")).InputChanged:Connect(function(v115)
			if (v88 and (v115.UserInputType == Enum.UserInputType.MouseMovement)) then
				v89(v115);
			end
		end);
		v78:Resize();
		return v85;
	end;
	v18.AddLabel = function(v90, v91)
		local v92 = 126 - (116 + 10);
		local v93;
		local v94;
		while true do
			if (v92 == (1 + 0)) then
				v94 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\194\243\97\21\170\221\244\243\117", "\188\150\150\25\97\230"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\140\71\22", "\141\186\233\63\98\108")]=v91,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\227\54\179", "\69\145\138\76\214")]=UDim2.new(1, -10, 0, v93.Y + (743 - (542 + 196))),[LUAOBFUSACTOR_DECRYPT_STR_0("\68\202\145\157\140\21\113\195\140\141", "\118\16\175\233\233\223")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\133\54\176\233\153\114\158\138\49\143\252\138\115\152\148\52\169\235\133\126\146", "\29\235\228\85\219\142\235")]=(1 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\209\162\201\84\65\43\93\47\135", "\50\93\180\218\189\23\46\71")]=Color3.fromRGB(75 + 180, 130 + 125, 92 + 163),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\161\67\88\124\253\68\215\163\85\65\65\210\92", "\40\190\196\59\44\36\188")]=Enum.TextXAlignment.Left,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\64\196\160\201\116\23\57", "\109\92\37\188\212\154\29")]=(36 - 22),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\224\170\215", "\58\100\143\196\163\81")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\67\58\172\42\93\202\28\30\71\49", "\110\122\34\67\195\95\41\133")]=v90.Count,[LUAOBFUSACTOR_DECRYPT_STR_0("\69\176\73\79\216\97", "\182\21\209\59\42")]=v90.container});
				v90:Resize();
				v92 = 2;
			end
			if (v92 == 2) then
				return v94;
			end
			if (v92 == (0 - 0)) then
				v90.count = v90.count + (1552 - (1126 + 425));
				v93 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\221\9\18\187\165\65\204\30\36", "\222\215\55\165\125\65")):GetTextSize(v91, 421 - (118 + 287), Enum.Font.FredokaOne, Vector2.new(math.huge, math.huge));
				v92 = 1;
			end
		end
	end;
	v18.AddDropdown = function(v95, v96, v97)
		v95.count = v95.count + 1;
		local v99 = v96[3 - 2] or "";
		v97 = v97 or function()
		end;
		local v100 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\24\212\222\14\222\192\239\79\32", "\42\76\177\166\122\146\161\141"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\150\131\31\203", "\22\197\234\101\174\25")]=UDim2.new(1122 - (118 + 1003), -(29 - 19), 377 - (142 + 235), 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\53\166\215\113\189\216\147\35\48\145\206\119\161\196\150\44\38\160\210\117\182", "\230\77\84\197\188\22\207\183")]=(0.75 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\21\197\247\139\179\255\32\247\16\229\243\128\174\226\102", "\85\153\116\166\156\236\193\144")]=v96.boxcolor,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\229\85\167\199\15\168\239\95\224", "\96\196\128\45\211\132")]=Color3.fromRGB(56 + 199, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\136\99\75\234\142\184\209\50\131\118\90\220\187", "\184\85\237\27\63\178\207\212")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\60\92\17\75\59\80\19\90", "\63\104\57\105")]=(991 - (553 + 424)),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80", "\36\107\231\196")]=v99,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\186\172\147", "\231\61\213\194")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\162\47\119\12\191\14\122\19\168\13\122\17\168\49", "\19\105\205\93")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\9\199\142\42\189\39\204\133\58\187", "\95\201\104\190\225")]=v95.Count,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\202\211\203\161\223", "\174\207\171\161")]=v95.container});
		local v101 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\196\243\12\244\253\245\248\234\25\252\246", "\183\141\158\109\147\152"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\8\229\7\43\27\233\25\34\13\210\30\45\7\245\28\45\27\227\2\47\16", "\108\76\105\134")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\200\176\230\203", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\177\177\250\192\213\16\117\108\170\183\184\142\137\80\34\43\247\235\187\146\151\91\38", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\10\243\41", "\118\38\99\137\76\51")]=UDim2.new(0 - 0, 16 + 2, 1 + 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\41\22\27\29\41\242\40", "\64\157\70\101\114\105")]=UDim2.new(1 + 0, -(9 + 11), 0, 0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\169\181\230\30\84", "\112\32\200\199\131")]=v100});
		local v102;
		local function v103(v116)
			local v117 = 0;
			local v118;
			local v119;
			local v120;
			local v121;
			local v122;
			local v123;
			while true do
				if (v117 == (4 - 2)) then
					return (v119.X >= v120) and (v119.X <= v121) and (v119.Y >= v122) and (v119.Y <= v123);
				end
				if (v117 == (0 - 0)) then
					v118 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\25\67\89\170\234\165\50\57\68\111\189\209\189\43\47\85", "\66\76\48\60\216\163\203")):GetMouseLocation();
					v119 = Vector2.new(v118.X, v118.Y - (80 - 44));
					v117 = 1 + 0;
				end
				if (v117 == (4 - 3)) then
					v120, v121 = v116.AbsolutePosition.X, v116.AbsolutePosition.X + v116.AbsoluteSize.X;
					v122, v123 = v116.AbsolutePosition.Y, v116.AbsolutePosition.Y + v116.AbsoluteSize.Y;
					v117 = 755 - (239 + 514);
				end
			end
		end
		local function v104(v124)
			local v125 = 0;
			local v126;
			while true do
				if (v125 == (0 + 0)) then
					v126 = 1329 - (797 + 532);
					for v153, v154 in next, v124 do
						v126 = v126 + 1;
					end
					v125 = 1;
				end
				if (v125 == 1) then
					return v126;
				end
			end
		end
		v101.MouseButton1Click:connect(function()
			local v127 = 0 + 0;
			while true do
				if (v127 == (1 + 1)) then
					v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\143\175\85\250\76\218\8\187\159\118\230\75", "\68\218\230\25\147\63\174"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\131\43\94\73", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\77\251\243\98\238", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\167\191\171\56\7", "\115\113\198\205\206\86")]=v102});
					for v155, v156 in next, v96 do
						local v157 = 0 - 0;
						local v158;
						while true do
							if (v157 == 0) then
								v158 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\166\66\234\78\139\89", "\58\228\55\158"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58", "\85\212\233\176\78\92\205")]=v156,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\89\139\233\77\74\135\247\68\92\171\237\70\87\154\177", "\130\42\56\232")]=Color3.fromRGB(40, 40, 1242 - (373 + 829)),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\176\60\247\99\48\230\186\54\176", "\95\138\213\68\131\32")]=Color3.fromRGB(986 - (476 + 255), 1385 - (369 + 761), 148 + 107),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\39\179\71\115\56\27\168\89\115\26\33\185\70\122", "\22\74\72\193\35")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\124\252\76\31\112\254\93", "\56\76\25\132")]=(24 - 10),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\206\165\50", "\175\62\161\203\70")]=Enum.Font.FredokaOne,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\212\217\22", "\85\92\189\163\115")]=UDim2.new(1 - 0, 238 - (64 + 174), 0, 3 + 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\173\34\61\39\184", "\88\73\204\80")]=v102,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\170\30\66\44\194", "\186\78\227\112\38\73")]=(2 - 0)});
								v158.MouseButton1Click:connect(function()
									local v168 = 336 - (144 + 192);
									while true do
										if (v168 == (217 - (42 + 174))) then
											v102.Size = UDim2.new(1 + 0, 0, 0 + 0, 0 + 0);
											game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\216\82\255\71\90\105", "\26\156\55\157\53\51")):AddItem(v102, 1504.1 - (363 + 1141));
											break;
										end
										if (v168 == 0) then
											v100.Text = v156;
											v97(v156);
											v168 = 1581 - (1183 + 397);
										end
									end
								end);
								break;
							end
						end
					end
					break;
				end
				if (v127 == 0) then
					if (v104(v96) == (0 - 0)) then
						return;
					end
					if v102 then
						local v159 = 0 + 0;
						while true do
							if (v159 == (0 + 0)) then
								v102:Destroy();
								v102 = nil;
								break;
							end
						end
					end
					v127 = 1976 - (1913 + 62);
				end
				if (v127 == 1) then
					v95.container.ClipsDescendants = false;
					v102 = v0:Create(LUAOBFUSACTOR_DECRYPT_STR_0("\170\202\23\212\189", "\48\236\184\118\185\216"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\178\68\57\219\61\234\179", "\84\133\221\55\80\175")]=UDim2.new(0 + 0, 0 - 0, 1934 - (565 + 1368), 0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\230\39\173\192\78\178\242\42\162\228\83\177\232\54\245", "\60\221\135\68\198\167")]=Color3.fromRGB(0, 1916 - (1477 + 184), 346 - 91),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\180\226\134", "\185\142\221\152\227\34")]=UDim2.new(0 + 0, v100.AbsoluteSize.X, 0, v104(v96) * 21),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\202\69\254\70\33\196\81\223\82\202\74\43\242\84", "\151\56\165\55\154\35\83")]=(856 - (564 + 292)),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\66\23\235\174\87", "\142\192\35\101")]=v100,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\121\32\179\244\168\169\5\213\112\39\167\230\130\184\5", "\118\182\21\73\195\135\236\204")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\21\20\68\1\21", "\157\104\92\122\32\100\109")]=2});
					v127 = 2;
				end
			end
		end);
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\150\181\202\216\20\41\157\190\183\149\202\216\43\46\142\174", "\203\195\198\175\170\93\71\237")).InputBegan:connect(function(v128)
			if (v128.UserInputType == Enum.UserInputType.MouseButton1) then
				if (v102 and not v103(v102)) then
					game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\10\78\60\199\88\2", "\156\78\43\94\181\49\113")):AddItem(v102);
				end
			end
		end);
		v97(v99);
		v95:Resize();
		local v105 = {};
		v105.Refresh = function(v129)
			local v130 = 0 - 0;
			while true do
				if (v130 == 0) then
					v96 = v129;
					v100.Text = v96[1] or "";
					v130 = 2 - 1;
				end
				if (v130 == 1) then
					if v102 then
						local v160 = 304 - (244 + 60);
						while true do
							if (v160 == (0 + 0)) then
								v102:Destroy();
								v102 = nil;
								break;
							end
						end
					end
					break;
				end
			end
		end;
		return v105;
	end;
	return v18;
end;
return v0;
