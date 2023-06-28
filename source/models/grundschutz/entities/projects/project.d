module models.grundschutz.entities.projects.project;

@safe:
import models.grundschutz;

class DBSIProjectEntity : DEntity {
  mixin(EntityThis!("BSIProjectEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_projects");
  }
}
mixin(EntityCalls!("BSIProjectEntity"));

version(test_library) {
  unittest {
    assert(BSIProjectEntity);
  
  	auto entity = BSIProjectEntity;
	}
}
