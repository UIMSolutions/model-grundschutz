module models.grundschutz.entities.processes.process;

@safe:
import models.grundschutz;

class DBSIProcessEntity : DEntity {
  mixin(EntityThis!("BSIProcessEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_processes");
  }
}
mixin(EntityCalls!("BSIProcessEntity"));

version(test_library) {
  unittest {
    assert(BSIProcessEntity);
  
  	auto entity = BSIProcessEntity;
	}
}
