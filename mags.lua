getgenv().Mags = { Enabled = true, Distance = 6.5 } function r(h) return game:GetService(h) end local e = r('Stats') local function q() return e.PerformanceStats.Ping:GetValue() end function t(o,s) return (o-s).Magnitude end local p = r("\80\108\97\121\101\114\115") local k = r("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101") local n = k:WaitForChild("\86\97\108\117\101\115") local l = p.LocalPlayer local a = 95  local function d(f, i) local b = i.CFrame.LookVector local g = (f - i.Position).unit local m = math.deg(math.acos(b:Dot(g))) local _ = (f - i.Position).Magnitude if _ >= Mags.Distance then return end if m <= a then return true  else return false  end end function c() local q_ = n:WaitForChild("\66\97\108\108").Value if not q_ then return end if not q_:IsA("\80\97\114\116") then return end local dq = workspace:FindFirstChild(l.Name) if not dq then return end local fd = q_.Position + q_.Velocity * (q()/1000) if d(q_, dq:WaitForChild("\84\111\114\115\111")) then firetouchinterest(dq:WaitForChild("\76\101\102\116\32\65\114\109"), q_, 0) firetouchinterest(dq:WaitForChild("\82\105\103\104\116\32\65\114\109"), q_, 0) wait(0.1) firetouchinterest(dq:WaitForChild("\76\101\102\116\32\65\114\109"), q_, 1) firetouchinterest(dq:WaitForChild("\82\105\103\104\116\32\65\114\109"), q_, 1) end end print('successfully bypassed CameraApi flag') game:GetService("\82\117\110\83\101\114\118\105\99\101").Stepped:Connect(function() c() end)