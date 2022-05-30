module models.grundschutz.entities.processes.category;

@safe:
import models.grundschutz;

class DBSIProcessCategoryEntity : DOOPEntity {
  mixin(EntityThis!("BSIProcessCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId
      ])
      .registerPath("grundschutz_processcategories");
  }
}
mixin(EntityCalls!("BSIProcessCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIProcessCategoryEntity);
  
  auto entity = BSIProcessCategoryEntity;
  }
}
