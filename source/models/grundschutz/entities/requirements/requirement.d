module models.grundschutz.entities.requirements.requirement;

@safe:
import models.grundschutz;

class DBSIRequirementEntity : DOOPEntity {
  mixin(EntityThis!("BSIRequirementEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_requirements");
  }
}
mixin(EntityCalls!("BSIRequirementEntity"));

version(test_library) {
  unittest {
    assert(BSIRequirementEntity);
  
  	auto entity = BSIRequirementEntity;
	}
}
