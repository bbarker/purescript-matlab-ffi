function applyRetVal = Apply(psFun, varargin)
  psFunEvaled = psFun();
  applyRetVal = ApplyGo(psFunEvaled, varargin{:});
end

function applyRetVal = ApplyGo(psFun, varargin)
  if numel(varargin) > 1
    rest = varargin(2:end);
    psFunNext = psFun(varargin{1});
    applyRetVal = ApplyGo(psFunNext, rest{:});
  else
    applyRetVal = psFun(varargin{1});
  end
end
