module models.grundschutz.entities.platforms.category;

@safe:
import models.grundschutz;

class DBSIPlatformCategoryEntity : DEntity {
  mixin(EntityThis!("BSIPlatformCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectId": UUIDAttribute, // {"en":"Unique identifier of the project with which this entity is associated."}}`,
      ])
      .registerPath("grundschutz_platformcategories");
  }
}
mixin(EntityCalls!("BSIPlatformCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIPlatformCategoryEntity);
  
  auto entity = BSIPlatformCategoryEntity;
  }
}
