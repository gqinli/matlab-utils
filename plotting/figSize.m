function figSize(varargin)
% figsize(figh, height, width)
% figsize(height, width) - uses gcf by default
% 
% Sizes figure to height x width in cm

if(nargin == 3)
    figh = varargin{1};
    height = varargin{2};
    width = varargin{3};
elseif(nargin == 2)
    figh = gcf;
    height = varargin{1};
    width = varargin{2};
else
    error('Requires 2 or 3 arguments: [figh=gcf], height, width');
end

set(figh, 'PaperUnits' ,'centimeters');
set(figh, 'Units', 'centimeters');
figPos = get(figh,'Position');

set(figh, 'PaperPositionMode', 'auto');
newPos = [figPos(1), figPos(2), width, height];
set(figh, 'Position', newPos);
