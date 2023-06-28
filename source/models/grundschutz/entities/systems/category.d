module models.grundschutz.entities.systems.category;

@safe:
import models.grundschutz;

class DBSISystemCategoryEntity : DEntity {
  mixin(EntityThis!("BSISystemCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_systemcategories");
  }
}
mixin(EntityCalls!("BSISystemCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSISystemCategoryEntity);
  
    auto entity = BSISystemCategoryEntity;
  }
}
