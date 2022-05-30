module models.grundschutz.entities.persons.person;

@safe:
import models.grundschutz;

class DBSIPersonEntity : DOOPEntity {
  mixin(EntityThis!("BSIPersonEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId
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
