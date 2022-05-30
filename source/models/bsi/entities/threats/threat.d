module models.grundschutz.entities.threats.threat;

@safe:
import models.grundschutz;

class DBSIThreatEntity : DOOPEntity {
  mixin(EntityThis!("BSIThreatEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
				GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_threats");
  }
}
mixin(EntityCalls!("BSIThreatEntity"));


version(test_library) {
  unittest {
    
    assert(BSIThreatEntity);
  
  auto entity = BSIThreatEntity;
	}
}
