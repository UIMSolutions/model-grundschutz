module models.grundschutz.entities.platforms.platform;

@safe:
import models.grundschutz;

class DBSIPlatform : DOOPEntity {
  mixin(EntityThis!("BSIPlatform"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_platforms");
  }
}
mixin(EntityCalls!("BSIPlatform"));

version(test_library) {
  unittest {
    assert(BSIPlatform);
  
  auto entity = BSIPlatform;
	}
}
