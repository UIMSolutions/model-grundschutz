module models.grundschutz.entities.netcomponents.category;

@safe:
import models.grundschutz;

class DBSINetComponentCategoryEntity : DEntity {
  mixin(EntityThis!("BSINetComponentCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_netcomponentcategories");
  }
}
mixin(EntityCalls!("BSINetComponentCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSINetComponentCategoryEntity);
  
  auto entity = BSINetComponentCategoryEntity;
  }
}
