module models.grundschutz.entities.persons.person;

@safe:
import models.grundschutz;

class DBSIPersonEntity : DEntity {
  mixin(EntityThis!("BSIPersonEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_person");
  }
}
mixin(EntityCalls!("BSIPersonEntity"));

version(test_library) {
  unittest {
    assert(BSIPersonEntity);
  
  auto entity = BSIPersonEntity;
  }
}
