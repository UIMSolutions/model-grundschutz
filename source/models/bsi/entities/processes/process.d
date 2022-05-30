module models.grundschutz.entities.processes.process;

@safe:
import models.grundschutz;

class DBSIProcessEntity : DOOPEntity {
  mixin(EntityThis!("BSIProcessEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId
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
