function [v_206, a_206] = RA185483_L10_03()
  t = [200 202 204 206 208 210];             % s
  theta = [0.75 0.72  0.70 0.68 0.67 0.66];  % rad
  r = [5120 5370 5560 5800 6030 6240];       % m

  dr = diff(r);
  dTheta = diff(theta);
 
  dr2 = diff(dr);
  dTheta2 = diff(dTheta);


  v_206 =[dr(4) r(4)*dTheta(4)]';
  a_206 = [(dr2(4)-r(4)*dTheta(4).^2) (r(4)*dTheta2(4) + 2*dr(4)*dTheta(4))]';


end
