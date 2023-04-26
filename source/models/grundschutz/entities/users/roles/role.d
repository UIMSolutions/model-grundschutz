module models.grundschutz.entities.users.role;

@safe:
import models.grundschutz;

class DBSIRoleEntity : DOOPEntity {
  mixin(EntityThis!("BSIRoleEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_roles");
  }
}
mixin(EntityCalls!("BSIRoleEntity"));

version(test_library) {
  unittest {
    assert(BSIRoleEntity);
  
  auto entity = BSIRoleEntity;
  }
}
