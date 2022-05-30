module models.grundschutz.entities.netcomponents.netcomponent;

@safe:
import models.grundschutz;

class DBSINetComponent : DOOPEntity {
  mixin(EntityThis!("BSINetComponent"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId, 
      ])
      .addValues([
        "categoryId": UUIDAttribute,
      ])
      .registerPath("grundschutz_netcomponent");
  }
}
mixin(EntityCalls!("BSINetComponent"));

version(test_library) {
  unittest {
    assert(BSINetComponent);
  
  auto entity = BSINetComponent;
  }
}
