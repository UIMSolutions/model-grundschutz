module models.grundschutz.entities.ics.category;

@safe:
import models.grundschutz;

class DBSIICSSystemCategoryEntity : DOOPEntity {
  mixin(EntityThis!("BSIICSSystemCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute,
      ])
      .registerPath("grundschutz_icssystems.categories");
  }
}
mixin(EntityCalls!("BSIICSSystemCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIICSSystemCategoryEntity);
  
  auto entity = BSIICSSystemCategoryEntity;
  }
}
