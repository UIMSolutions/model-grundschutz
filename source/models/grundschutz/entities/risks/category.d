module models.grundschutz.entities.riskcategorys.category;

@safe:
import models.grundschutz;

class DBSIRiskCategoryEntity : DEntity {
  mixin(EntityThis!("BSIRiskCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_riskcategories");
  }
}
mixin(EntityCalls!("BSIRiskCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIRiskCategoryEntity);
  
  auto entity = BSIRiskCategoryEntity;
	}
}
