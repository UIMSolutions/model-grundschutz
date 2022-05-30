module models.grundschutz.entities.networks.category;

@safe:
import models.grundschutz;

class DBSINetworkCategoryEntity : DOOPEntity {
  mixin(EntityThis!("BSINetworkCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_networkcategory");
  }
}
mixin(EntityCalls!("BSINetworkCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSINetworkCategoryEntity);
  
  auto entity = BSINetworkCategoryEntity;
  }
}
