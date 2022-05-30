module models.grundschutz.entities.projects.template_;

@safe:
import models.grundschutz;

class DBSIProjectTemplateEntity : DOOPEntity {
  mixin(EntityThis!("BSIProjectTemplateEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_projecttemplates");
  }
}
mixin(EntityCalls!("BSIProjectTemplateEntity"));

version(test_library) {
  unittest {
    assert(BSIProjectTemplateEntity);
  
  auto entity = BSIProjectTemplateEntity;
  }
}
