module models.grundschutz.entities.persons.category;

@safe:
import models.grundschutz;

class DBSIPersonCategoryEntity : DEntity {
  mixin(EntityThis!("BSIPersonCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .addValues([
        "categoryId": UUIDAttribute,
      ])
      .registerPath("grundschutz_personcategories");
  }
}
mixin(EntityCalls!("BSIPersonCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIPersonCategoryEntity);
  
  auto entity = BSIPersonCategoryEntity;
  }
}
