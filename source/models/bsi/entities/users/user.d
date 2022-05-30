module models.grundschutz.entities.users.user;

@safe:
import models.grundschutz;

class DBSIUserEntity : DOOPEntity {
  mixin(EntityThis!("BSIUserEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_users");
  }
}
mixin(EntityCalls!("BSIUserEntity"));

version(test_library) {
  unittest {
    assert(BSIUserEntity);
  
  auto entity = BSIUserEntity;
  }
}
