function palette=colourPalettes(paletteName,n)
% Create colour palettes based off cartridges collected in the game 
% "Gato Roboto"
% Game available from: https://www.gatoroboto.com
% To use:
%           palette=colourPalettes(paletteName,n)
% Inputs:
%           paletteName = string corresponding to possible colour palettes
%           'default','bark','starboard','goop','port','coffeestain',
%           'urine','nicotine','meowtrix','virtualcat','chewedgum',
%           'grape','gris','swampmatcha','tamagato'
%           n = number of possible colour values (e.g., 256 would create a
%           colour palette with 256 evenly spaced colours)
% Outputs:
%           palette = n * 3 matlab-compatible colourmap
%
% search for 
if strcmpi(paletteName,'default')
    colourLimits = [1 255;1 255;1 255];
elseif strcmpi(paletteName,'bark')
    colourLimits = [53 247;39 228;39 199];
elseif strcmpi(paletteName,'starboard')
    colourLimits = [28 255; 58 255; 82 235];
elseif strcmpi(paletteName,'goop')
    colourLimits = [33 117; 2 244; 7 218];
elseif strcmpi(paletteName,'port')    
    colourLimits = [33 243; 67 169; 153 101];
elseif strcmpi(paletteName,'coffeestain')
    colourLimits = [42 255; 14 254; 12 229];
elseif strcmpi(paletteName,'urine')
    colourLimits = [23 254; 58 242; 80 86];
elseif strcmpi(paletteName,'nicotine')
    colourLimits = [14 249; 19 212; 6 130];
elseif strcmpi(paletteName,'meowtrix')
    colourLimits = [8 186; 7 251; 8 103];
elseif strcmpi(paletteName,'virtualcat')
    colourLimits = [42 189; 3 42; 2 29];
elseif strcmpi(paletteName,'chewedgum')
    colourLimits = [46 243; 25 172; 34 168];
elseif strcmpi(paletteName,'grape')    
    colourLimits = [4 197; 6 55; 17 225];
elseif strcmpi(paletteName,'gris')
    colourLimits = [51 192; 50 191; 52 192];
elseif strcmpi(paletteName,'swampmatcha')    
    colourLimits = [38 229; 70 240; 32 197];
elseif strcmpi(paletteName,'tamagato')        
    colourLimits = [190 13; 202 20; 149 5];
else
    error('Colour palette name not found')
end
palette = zeros(n,3);
for rgb_i = 1:3%r,g,b
    palette(:,rgb_i)=linspace(colourLimits(rgb_i,1),colourLimits(rgb_i,2),n)';
end
palette      = palette./256;%convert to 0-1 range