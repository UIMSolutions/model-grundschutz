module models.grundschutz.entities.servers.category;

@safe:
import models.grundschutz;

class DBSIServerCategoryEntity : DOOPEntity {
  mixin(EntityThis!("BSIServerCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId
      ])
      .registerPath("grundschutz_servercategories");
  }
}
mixin(EntityCalls!("BSIServerCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIServerCategoryEntity);
  
  auto entity = BSIServerCategory;
  }
}
