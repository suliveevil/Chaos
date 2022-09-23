local function do_the_right_thing()
   local path
   if app == 'A' then
     path = specific_path_retrieving_function_of_app_A()
   elseif app == 'B' then
     path = specific_path_retrieving_function_of_app_B()
   else 
      path = "AX…Document………" -- "Universal" AppleScript assault at generic GUI elemements.
   end
   return path or "Sorry mate, nothing to return."
end
