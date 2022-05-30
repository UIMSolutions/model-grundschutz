module models.grundschutz.entities.users.role;

@safe:
import models.grundschutz;

class DBSIRoleEntity : DOOPEntity {
  mixin(EntityThis!("BSIRoleEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId
      ])
      .registerPath("grundschutz_roles");
  }
}
mixin(EntityCalls!("BSIRole"));

version(test_library) {
  unittest {
    assert(BSIRoleEntity);
  
  auto entity = BSIRoleEntity;
  }
}
