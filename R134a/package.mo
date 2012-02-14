within HelmholtzFluids;
package R134a "R134a data, copied from RefProp R134a.fld"
  extends HelmholtzFluids.PartialHelmholtzFluid(
  fluidConstants={fluidConstantsR134a},
  helmholtzCoefficients=helmholtzCoefficientsR134a,
  ancillaryCoefficients=ancillaryCoefficientsR134a,
  thermalConductivityCoefficients=thermalConductivityCoefficientsR134a,
  dynamicViscosityCoefficients=dynamicViscosityCoefficientsR134a,
  surfaceTensionCoefficients=surfaceTensionCoefficientsR134a,
  fluidLimits=fluidLimitsR134a,
  Density(
    min=fluidLimitsR134a.DMIN,
    max=fluidLimitsR134a.DMAX,
    start=fluidLimitsR134a.DNOM),
  Temperature(min=fluidLimitsR134a.TMIN, max=fluidLimitsR134a.TMAX),
  AbsolutePressure(min=fluidLimitsR134a.PMIN, max=fluidLimitsR134a.PMAX),
  SpecificEnthalpy(min=fluidLimitsR134a.HMIN, max=fluidLimitsR134a.HMAX),
  SpecificEntropy(min=fluidLimitsR134a.SMIN, max=fluidLimitsR134a.SMAX));

  final constant PartialHelmholtzFluid.FluidConstants fluidConstantsR134a(
    chemicalFormula="C2H2F4",
    structureFormula="",
    casRegistryNumber="811-97-2",
    iupacName="",
    molarMass=0.102032,
    hasCriticalData=true,
       criticalTemperature=374.21,
       criticalPressure=4059280,
       criticalMolarVolume=0.102032/511.899952,
    hasIdealGasHeatCapacity=false,
    hasDipoleMoment=true,
       dipoleMoment=2.058,
    hasFundamentalEquation=true,
    hasLiquidHeatCapacity=true,
    hasSolidHeatCapacity=false,
    hasAccurateViscosityData=true,
    hasAccurateConductivityData=true,
    hasVapourPressureCurve=true,
    hasAcentricFactor=true,
       acentricFactor=0.32684,
    triplePointTemperature=169.85,
    triplePointPressure=389.517537,
    normalBoilingPoint=247.076,
    meltingPoint=247.076063) "copied from R134a.fld";

  final constant PartialHelmholtzFluid.EosLimits fluidLimitsR134a(
    TMIN=fluidConstantsR134a.triplePointTemperature,
    TNOM=298.15,
    TMAX=455,
    DMIN=Modelica.Constants.small,
    DNOM=511.899952,
    DMAX=1592,
    PMIN=Modelica.Constants.small,
    PNOM=101325,
    PMAX=70e6,
    HMIN=71.455e3,
    HMAX=577.754e3,
    SMIN=0.412e3,
    SMAX=10e3) "Helmholtz EoS Limits";

  final constant PartialHelmholtzFluid.HelmholtzCoefficients helmholtzCoefficientsR134a(
    idealLog=[
      -1.629789E+0,     1.00E0],
    idealPower=[
      -1.019535E+0,     0.00E0;
       9.047135E+0,     1.00E0;
      -9.723916E+0,    -0.50E0;
      -3.927170E+0,    -0.75E0],
    idealEinstein=fill(0.0, 0, 2),
    residualPoly=[
      0.5586817000E-01,  -0.50,   2.00,   0;
      0.4982230000E+00,   0.00,   1.00,   0;
      0.2458698000E-01,   0.00,   3.00,   0;
      0.8570145000E-03,   0.00,   6.00,   0;
      0.4788584000E-03,   1.50,   6.00,   0;
     -0.1800808000E+01,   1.50,   1.00,   0;
      0.2671641000E+00,   2.00,   1.00,   0;
     -0.4781652000E-01,   2.00,   2.00,   0],
    residualBwr=[
      0.1423987000E-01,   1.00,   5.00,   1;
      0.3324062000E+00,   3.00,   2.00,   1;
     -0.7485907000E-02,   5.00,   2.00,   1;
      0.1017263000E-03,   1.00,   4.00,   2;
     -0.5184567000E+00,   5.00,   1.00,   2;
     -0.8692288000E-01,   5.00,   4.00,   2;
      0.2057144000E+00,   6.00,   1.00,   2;
     -0.5000457000E-02,  10.00,   2.00,   2;
      0.4603262000E-03,  10.00,   4.00,   2;
     -0.3497836000E-02,  10.00,   1.00,   3;
      0.6995038000E-02,  18.00,   5.00,   3;
     -0.1452184000E-01,  22.00,   3.00,   3;
     -0.1285458000E-03,  50.00,  10.00,   4],
   residualGauss=fill(0.0, 0, 12)) "Coefficients of the Helmholtz EoS";

  final constant PartialHelmholtzFluid.AncillaryCoefficients ancillaryCoefficientsR134a(
    pressureSaturation=[
      -0.77513E+01,   1.0;
       0.29263E+01,   1.5;
      -0.26622E+01,   1.9;
      -0.39711E+01,   4.25],
    densityLiquid=[
       0.12449E+02,   0.5;
      -0.41023E+02,   0.7;
       0.73641E+02,   0.9;
      -0.64635E+02,   1.1;
       0.22551E+02,   1.3],
    densityVapor=[
      -0.29174E+01,   0.383;
      -0.72542E+01,   1.21;
      -0.23306E+02,   3.3;
       0.59840E+01,   5.6;
      -0.71821E+02,   7.0]) "Coefficients for the ancillary equations";

  final constant PartialHelmholtzFluid.ThermalConductivityCoefficients thermalConductivityCoefficientsR134a(
    reducingTemperature=425.16,
    reducingDensity=3920*0.0581222,
    lambda_0_coeffs=[
     1.62676E-03,    0;
     9.75703E-04,    1;
     2.89887E-02,    2],
    lambda_r_coeffs=[
    -3.04337E-02,    4.18357E-02,    1;
     1.65820E-01,   -1.47163E-01,    2;
    -1.48144E-01,    1.33542E-01,    3;
     5.25500E-02,   -4.85489E-02,    4;
    -6.29367E-03,    6.44307E-03,    5],
    nu=0.63,
    gamma=1.239,
    R0=1.03,
    z=0.063,
    c=1,
    xi_0=0.194E-9,
    Gamma_0=0.0496,
    qd_inverse=0.875350E-9,
    T_ref=637.68) "Coefficients for the thermal conductivity";

  final constant PartialHelmholtzFluid.DynamicViscosityCoefficients dynamicViscosityCoefficientsR134a(
    criticalTemperature=425.125,
    criticalMolarVolume=1/3920,
    molarMass=0.0581222,
    epsilon_kappa=280.51,
    sigma=0.57335,
    CET=[
    0.1628213, 0.5],
    a=[
     0.17067154,    0;
    -0.48879666,    1;
     0.039038856,   2],
    b=[
    -19.572881,       0.00;
     219.73999,      -0.25;
    -1015.3226,      -0.50;
     2471.01251,     -0.75;
    -3375.1717,      -1.00;
     2491.6597,      -1.25;
    -787.26086,      -1.50;
     14.085455,      -2.50;
    -0.34664158,     -5.50],
    g=[
     2.30873963359,      0.0,    0,  0,  0;
     2.03404037254,      0.5,    0,  0,  0],
    e=[
    -54.7737770846,      0.0,    2,  0,  0;
     58.0898623034,     -1.0,    2,  0,  0;
     0,                 -2.0,    2,  0,  0;
     35.2658446259,      0.0,    3,  0,  0;
    -39.6682203832,     -1.0,    3,  0,  0;
     0,                 -2.0,    3,  0,  0;
    -1.83729542151,      0.0,    4,  0,  0;
     0,                 -1.0,    4,  0,  0;
     0,                 -2.0,    4,  0,  0;
    -0.833262985358,     0.0,    5,  0,  0;
     1.93837020663,     -1.0,    5,  0,  0;
     0,                 -2.0,    5,  0,  0;
    -188.075903903,      0.0,    1, -1,  0],
    nu_po=[
     188.075903903,      0.0,    1,  0,  0],
    de_po=[
     1.,                 0.0,    0,  1,  0;
    -1.,                 0.0,    1,  0,  0])
  "Coefficients for the dynamic viscosity";

    final constant PartialHelmholtzFluid.SurfaceTensionCoefficients surfaceTensionCoefficientsR134a(
    coeffs=[
      0.05418,    1.26]) "Coefficients for the surface tension";


  annotation (Documentation(info="<html>
These are the coefficients for R134a. 
Implementation of the same correlations as in RefProp. 
All data is copied from R134a.fld
Units are converted to SI because Modelica uses SI.

<dl>
<dt> Lemmon, Eric W.; Huber, M. L. and McLinden, M. O.</dt>
<dd> <b>NIST Standard Reference Database 23: Reference Fluid Thermodynamic and Transport Properties - REFPROP. 9.0</b><br>
     National Institute of Standards and Technology, Standard Reference Data Program. Gaithersburg<br>
     URL: <a href=\"http://www.nist.gov/srd/nist23.cfm\">http://www.nist.gov/srd/nist23.cfm</a>
</dd>
<dt> B�cker, D. and Wagner, W.</dt>
<dd> <b>Reference Equations of State for the Thermodynamic Properties of Fluid Phase n-R134a and IsoR134a</b><br>
     Journal of Physical and Chemical Reference Data 35.2, S. 929-1019 (2006)<br>
     DOI: <a href=\"http://dx.doi.org/10.1063/1.1901687\">10.1063/1.1901687</a>
</dd>
<dt> Vogel, Eckhard; K�chenmeister, Cornelia and Bich, Eckard</dt>
<dd> <b>Viscosity correlation for n-R134a in the fluid region</b><br>
     High Temperatures - High Pressures 31.2, 173-186 (1999)<br>
     DOI: <a href=\"http://dx.doi.org/10.1068/htrt154\">10.1068/htrt154</a>
</dd>
<dt> Perkins, Richard A. et. al.</dt>
<dd> <b>Measurement and Correlation of the Thermal Conductivity of R134a from 135 K to 600 K at Pressures to 70 MPa</b><br>
     Journal of Chemical & Engineering Data 47.5, S. 1263-1271. (2002)<br>
     DOI: <a href=\"http://dx.doi.org/10.1021/je0101202\">10.1021/je0101202</a>
</dd>
</dl>
</html>"));

end R134a;