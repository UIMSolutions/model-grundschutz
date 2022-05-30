module models.grundschutz.entities.risks.risk;

@safe:
import models.grundschutz;

class DBSIRiskEntity : DOOPEntity {
  mixin(EntityThis!("BSIRiskEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_risks");
  }
}
mixin(EntityCalls!("BSIRiskEntity"));

version(test_library) {
  unittest {
    assert(BSIRiskEntity);
  
  auto entity = BSIRiskEntity;
	}
}
