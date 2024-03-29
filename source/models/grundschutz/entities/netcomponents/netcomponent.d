module models.grundschutz.entities.netcomponents.netcomponent;

@safe:
import models.grundschutz;

class DBSINetComponent : DEntity {
  mixin(EntityThis!("BSINetComponent"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute, 
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
