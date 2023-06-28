module models.grundschutz.entities.servers.category;

@safe:
import models.grundschutz;

class DBSIServerCategoryEntity : DEntity {
  mixin(EntityThis!("BSIServerCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
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
