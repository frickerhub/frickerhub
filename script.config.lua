if KRNL_LOADED then
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "FrickerHub";
	Text = "Script should work fine since your using KRNL!";
})
end
if syn_decompile then
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "FrickerHub";
	Text = "Full Support | Synapse X";
})
end
if not syn_decompile then
if not KRNL_LOADED then
local function callback(Text)
 if Text == "Get Link" then
setclipboard ("https://wearedevs.net/d/Krnl")
wait(0.3)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "KRNL Download !";
	Text = "The download link has been copied to your clipboard , Paste it in your browser for download ";
})
elseif Text == ("Button2 text") then
 print ("Answer2")
 end
end
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
game.StarterGui:SetCore("SendNotification",  {
 Title = "FrickerHub";
 Text = "Since you are not using synapse , I recommend you use krnl. Would you like to copy download link?";
 Icon = "";
 Duration = 15;
 Button1 = "Get Link";
 Button2 = "Close";
 Callback = NotificationBindable;
})
end
end
if game.PlaceId == 621129760 then --- kat
loadstring(game:HttpGet(('https://frickerhub.github.io/frickerhub/kat.lua'),true))()
end
