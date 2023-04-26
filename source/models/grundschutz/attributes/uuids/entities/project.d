module models.grundschutz.attributes.uuids.entities.project;

@safe:
import models.grundschutz;

class DGrundschutzProjectIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("GrundschutzProjectIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("projectId")
      .registerPath("projectid");
  }  
}
mixin(AttributeCalls!("GrundschutzProjectIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DGrundschutzProjectIdAttribute);
    testAttribute(GrundschutzProjectIdAttribute);
  }
}