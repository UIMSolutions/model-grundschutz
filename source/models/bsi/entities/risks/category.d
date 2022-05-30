module models.grundschutz.entities.riskcategorys.category;

@safe:
import models.grundschutz;

class DBSIRiskCategoryEntity : DOOPEntity {
  mixin(EntityThis!("BSIRiskCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId
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
