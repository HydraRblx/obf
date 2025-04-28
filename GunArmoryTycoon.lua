--[ Unlimited Ammo ]--
local TABLE_TableIndirection = {};
TABLE_TableIndirection["obf_stringchar%0"] = string.char;
TABLE_TableIndirection["obf_stringbyte%0"] = string.byte;
TABLE_TableIndirection["obf_stringsub%0"] = string.sub;
TABLE_TableIndirection["obf_bitlib%0"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%0"] = TABLE_TableIndirection["obf_bitlib%0"].bxor;
TABLE_TableIndirection["obf_tableconcat%0"] = table.concat;
TABLE_TableIndirection["obf_tableinsert%0"] = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	TABLE_TableIndirection["result%0"] = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		TABLE_TableIndirection["obf_tableinsert%0"](TABLE_TableIndirection["result%0"], TABLE_TableIndirection["obf_stringchar%0"](TABLE_TableIndirection["obf_XOR%0"](TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_STR, i, i + 1)), TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return TABLE_TableIndirection["obf_tableconcat%0"](TABLE_TableIndirection["result%0"]);
end
TABLE_TableIndirection["v0%0"] = string[LUAOBFUSACTOR_DECRYPT_STR_0("\210\203\218\55", "\126\177\163\187\69\134\219\167")];
TABLE_TableIndirection["v1%0"] = string[LUAOBFUSACTOR_DECRYPT_STR_0("\33\212\62\192", "\156\67\173\74\165")];
TABLE_TableIndirection["v2%0"] = string[LUAOBFUSACTOR_DECRYPT_STR_0("\39\162\75", "\38\84\215\41\118\220\70")];
TABLE_TableIndirection["v3%0"] = bit32 or bit;
TABLE_TableIndirection["v4%0"] = TABLE_TableIndirection["v3%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\82\14\45\0", "\158\48\118\66\114")];
TABLE_TableIndirection["v5%0"] = table[LUAOBFUSACTOR_DECRYPT_STR_0("\168\43\30\53\114\177", "\155\203\68\112\86\19\197")];
TABLE_TableIndirection["v6%0"] = table[LUAOBFUSACTOR_DECRYPT_STR_0("\79\211\37\249\82\108", "\152\38\189\86\156\32\24\133")];
local function v7(v13, v14)
	TABLE_TableIndirection["v15%0"] = (570 + 1085) - ((4983 - 3389) + (174 - 113));
	TABLE_TableIndirection["v16%0"] = nil;
	while true do
		if ((TABLE_TableIndirection["v15%0"] == ((3207 - 1545) - ((278 - 170) + 1553))) or ((5212 - (555 + 64)) <= (2098 + 574))) then
			return TABLE_TableIndirection["v5%0"](TABLE_TableIndirection["v16%0"]);
		end
		if ((TABLE_TableIndirection["v15%0"] == (931 - (857 + 74))) or (1168 > (3724 - (367 + 201)))) then
			TABLE_TableIndirection["v16%0"] = {};
			for v29 = (1441 - (214 + 713)) - (211 + 21 + (635 - 354)), #v13 do
				TABLE_TableIndirection["v6%0"](TABLE_TableIndirection["v16%0"], TABLE_TableIndirection["v0%0"](TABLE_TableIndirection["v4%0"](TABLE_TableIndirection["v1%0"](TABLE_TableIndirection["v2%0"](v13, v29, v29 + ((314 + 940) - (976 + 44 + 233)))), TABLE_TableIndirection["v1%0"](TABLE_TableIndirection["v2%0"](v14, 1 + (v29 % #v14), ((1835 - (282 + 595)) - ((2529 - (1523 + 114)) + 65)) + (v29 % #v14) + ((2 + 0) - (1 - 0))))) % (957 - (376 + 325))));
			end
			TABLE_TableIndirection["v15%0"] = 1 - 0;
		end
	end
end
TABLE_TableIndirection["v8%0"] = game[LUAOBFUSACTOR_DECRYPT_STR_0("\204\91\166\95\249\69\180", "\38\156\55\199")][LUAOBFUSACTOR_DECRYPT_STR_0("\132\114\127\41\31\68\246\66\177\120\110", "\35\200\29\28\72\115\20\154")];
TABLE_TableIndirection["v9%0"] = TABLE_TableIndirection["v8%0"]:WaitForChild(v7("\243\194\216\46\246\186\196\21", "\126\177\163\187\69\134\219\167"));
TABLE_TableIndirection["v10%0"] = 92233720000000000000 - (1065 - (68 + 997));
game:GetService(v7("\16\217\43\215\232\38\223\13\208\245", "\156\67\173\74\165")):SetCore(v7("\7\178\71\18\146\41\82\61\177\64\21\189\50\79\59\185", "\38\84\215\41\118\220\70"), {[v7("\100\31\54\30\251", "\158\48\118\66\114")]=v7("\134\37\20\51\51\135\226\235\12\9\50\97\164", "\155\203\68\112\86\19\197"),[v7("\114\216\46\232", "\152\38\189\86\156\32\24\133")]=v7("\201\89\171\79\241\94\179\67\248\23\134\75\241\88\231\117\255\69\174\86\232", "\38\156\55\199"),[v7("\129\126\115\38", "\35\200\29\28\72\115\20\154")]=v7("\11\189\201\222\158\63\49\13\182\213\133\194\99\98\75\236\137\138\222\123\102\77\239", "\84\121\223\177\191\237\76"),[v7("\159\67\219\161\46\89\63\207", "\161\219\54\169\192\90\48\80")]=(((1275 - (226 + 1044)) - 2) + ((6 - 3) - (15 - (9 + 5))))});
local function v11(v17)
	TABLE_TableIndirection["v18%0"] = (2097 - ((463 - (85 + 291)) + (1145 - 882))) - (((2205 - (243 + 1022)) - ((184 - (32 + 85)) + 111 + 2)) + 724 + 263);
	TABLE_TableIndirection["v19%0"] = nil;
	TABLE_TableIndirection["v20%0"] = nil;
	TABLE_TableIndirection["v21%0"] = nil;
	while true do
		if ((TABLE_TableIndirection["v18%0"] == (((3876 + 822) - (618 + 2166)) - ((2496 - (1123 + 57)) + (1430 - (892 + 65)) + ((401 + 91) - 368)))) or ((826 - (163 + 91)) > (6416 - (1869 + 61)))) then
			TABLE_TableIndirection["v23%0"] = 952 - (225 + 577 + 150);
			TABLE_TableIndirection["v24%0"] = nil;
			while true do
				if (((3348 - 1944) == 1404) and (TABLE_TableIndirection["v23%0"] == (0 - (0 - 0)))) then
					TABLE_TableIndirection["v24%0"] = ((0 - 0) - (0 - 0)) - (0 + 0 + 0);
					while true do
						if ((TABLE_TableIndirection["v24%0"] == (((1347 - (87 + 263)) - ((1256 - 341) + 78 + 4)) + (180 - (67 + 113)))) or ((4719 - (140 + 831)) < (1622 + 590))) then
							TABLE_TableIndirection["v35%0"] = 0;
							while true do
								if ((TABLE_TableIndirection["v35%0"] == ((4 - 2) - (1 + 0))) or ((4689 - 3509) == (3132 - (802 + 150)))) then
									TABLE_TableIndirection["v24%0"] = 1 + 0 + 0 + ((438 - (262 + 176)) - (0 - 0));
									break;
								end
								if (TABLE_TableIndirection["v35%0"] ~= (1187 - ((1757 - (198 + 490)) + (521 - 403)))) then
								else
									TABLE_TableIndirection["v20%0"] = TABLE_TableIndirection["v19%0"]:FindFirstChild(v7("\4\192\43", "\232\73\161\76")) or Instance.new(v7("\146\215\86\107\31\183\204\71", "\126\219\185\34\61"), TABLE_TableIndirection["v19%0"]);
									TABLE_TableIndirection["v20%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\55\190\220\218", "\84\121\223\177\191\237\76")] = v7("\33\207\89", "\135\108\174\62\18\30\23\147");
									TABLE_TableIndirection["v35%0"] = (3 - 1) - (1 + 0);
								end
							end
						end
						if (((5087 - (915 + 82)) < (5859 - (696 + 510))) and (TABLE_TableIndirection["v24%0"] == ((3 - 1) - (2 - 1)))) then
							TABLE_TableIndirection["v18%0"] = (1 + 0 + 2) - ((1 - 0) - (1187 - (1069 + 118)));
							break;
						end
					end
					break;
				end
			end
		end
		if ((TABLE_TableIndirection["v18%0"] == ((0 + (0 - 0)) - (791 - ((742 - (123 + 251)) + (2101 - 1678))))) or ((5800 - 3148) < (17 + 179))) then
			TABLE_TableIndirection["v25%0"] = (0 + 0) - (0 + 0);
			while true do
				if (((7347 - 3212) < (4779 + 38)) and (TABLE_TableIndirection["v25%0"] == 1)) then
					TABLE_TableIndirection["v18%0"] = ((3 + 19) - ((801 - (368 + 423)) + (25 - 17))) - ((29 - (10 + 8)) - (30 - 22));
					break;
				end
				if (((714 - (416 + 26)) == 272) and (TABLE_TableIndirection["v25%0"] == ((425 + 17) - (416 + (54 - 28))))) then
					TABLE_TableIndirection["v19%0"] = v17:FindFirstChild(v7("\123\71\16\19\72\78\21\32\90", "\69\41\34\96"));
					if ((100 <= (4957 - 1834)) and TABLE_TableIndirection["v19%0"]) then
						for v36, v37 in ipairs(v17:GetChildren()) do
							if ((v37[LUAOBFUSACTOR_DECRYPT_STR_0("\149\87\196\165", "\161\219\54\169\192\90\48\80")] == v7("\142\198\199\60\3\39\169\198\196", "\75\220\163\183\106\98")) and (v37 ~= TABLE_TableIndirection["v19%0"])) then
								v37:Destroy();
							end
						end
					else
						TABLE_TableIndirection["v32%0"] = 0;
						TABLE_TableIndirection["v33%0"] = nil;
						TABLE_TableIndirection["v34%0"] = nil;
						while true do
							if ((TABLE_TableIndirection["v32%0"] == (0 - 0)) or ((736 + 633) > (3176 + 1811))) then
								TABLE_TableIndirection["v33%0"] = ((0 - 0) - (0 + 0)) + (0 - 0);
								TABLE_TableIndirection["v34%0"] = nil;
								TABLE_TableIndirection["v32%0"] = (439 - (145 + 293)) + 0;
							end
							if ((TABLE_TableIndirection["v32%0"] == ((431 - (44 + 386)) - (1486 - (998 + 488)))) or ((275 + 588) >= 4584)) then
								while true do
									if ((TABLE_TableIndirection["v33%0"] == ((867 - (550 + 317)) + 0 + 0)) or ((1016 - 292) >= 1668)) then
										TABLE_TableIndirection["v34%0"] = ((2290 - (201 + 571)) - ((1283 - (116 + 1022)) + (1958 - (970 + 695)))) - (1020 + ((2040 - 1550) - (26 + 18 + (1409 - 1023))));
										while true do
											if (TABLE_TableIndirection["v34%0"] == (((4900 - (582 + 1408)) - ((3461 - 2463) + (613 - 125))) - (630 + 252 + (1921 - 1380)))) then
												TABLE_TableIndirection["v19%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\67\18\32\71\86", "\69\41\34\96")] = v17;
												break;
											end
											if (TABLE_TableIndirection["v34%0"] == ((1824 - (1195 + 629)) - (0 + 0))) then
												TABLE_TableIndirection["v40%0"] = 772 - ((1060 - (814 + 45)) + (1406 - 835));
												while true do
													if (((1208 - (162 + 618)) < (98 + 1706)) and (TABLE_TableIndirection["v40%0"] == (1 + 0))) then
														TABLE_TableIndirection["v34%0"] = ((2025 - (261 + 624)) - (116 + (1815 - 793))) - 1;
														break;
													end
													if (TABLE_TableIndirection["v40%0"] ~= ((0 - 0) - 0)) then
													else
														TABLE_TableIndirection["v19%0"] = Instance.new(v7("\36\181\135\51\220\16", "\185\98\218\235\87"));
														TABLE_TableIndirection["v19%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\146\194\218\15", "\75\220\163\183\106\98")] = v7("\249\57\55\208\223\166\222\57\52", "\202\171\92\71\134\190");
														TABLE_TableIndirection["v40%0"] = 1081 - (1020 + 60);
													end
												end
											end
										end
										break;
									end
								end
								break;
							end
						end
					end
					TABLE_TableIndirection["v25%0"] = (1 - 0) + 0 + 0;
				end
			end
		end
		if (TABLE_TableIndirection["v18%0"] ~= ((1644 - (1373 + 263)) - 5)) then
		else
			TABLE_TableIndirection["v21%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\44\187\134\50", "\185\98\218\235\87")] = v7("\52\2\182\57\2\18\152\38\10\25", "\75\103\118\217");
			TABLE_TableIndirection["v21%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\253\61\43\243\219", "\202\171\92\71\134\190")] = TABLE_TableIndirection["v10%0"];
			break;
		end
		if ((TABLE_TableIndirection["v18%0"] == (((1426 - (630 + 793)) - 2) + (3 - (1002 - (451 + 549))))) or ((11267 - 7942) > (7178 - 2565))) then
			TABLE_TableIndirection["v20%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\31\192\32\157\44", "\232\73\161\76")] = TABLE_TableIndirection["v10%0"];
			TABLE_TableIndirection["v21%0"] = TABLE_TableIndirection["v19%0"]:FindFirstChild(v7("\133\253\37\217\29\170\18\202\187\230", "\167\214\137\74\171\120\206\83")) or Instance.new(v7("\162\254\38\107\249\171\158\245", "\199\235\144\82\61\152"), TABLE_TableIndirection["v19%0"]);
			TABLE_TableIndirection["v18%0"] = ((7400 - 5837) - (814 + (75 - 30))) - ((926 - (1934 - (746 + 638))) + 325);
		end
	end
end
local function v12()
	while true do
		TABLE_TableIndirection["v22%0"] = 0;
		while true do
			if ((TABLE_TableIndirection["v22%0"] == (0 + 0 + (0 - 0))) or ((6697 - (760 + 987)) <= 4553)) then
				for v30, v31 in ipairs(TABLE_TableIndirection["v9%0"]:GetChildren()) do
					if v31:IsA(v7("\243\91\127\24", "\126\167\52\16\116\217")) then
						v11(v31);
					end
				end
				wait((1913.1 - (1789 + 124)) - (0 + (766 - (745 + 21))));
				break;
			end
		end
	end
end
v12();
