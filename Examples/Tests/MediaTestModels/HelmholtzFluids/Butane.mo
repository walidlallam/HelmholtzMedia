within HelmholtzMedia.Examples.Tests.MediaTestModels.HelmholtzFluids;
model Butane "Test HelmholtzFluids.Butane"
  //
  extends Modelica.Icons.Example;
  extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
     redeclare package Medium = HelmholtzMedia.HelmholtzFluids.Butane);
  annotation (Documentation(info="<html>

</html>"),
   experiment(StopTime=1.01));
end Butane;
