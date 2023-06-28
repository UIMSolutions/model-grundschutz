module models.grundschutz.entities.servers.server;

@safe:
import models.grundschutz;
  
class DBSIServerEntity : DEntity {
  mixin(EntityThis!("BSIServerEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_servers");
  }
}
mixin(EntityCalls!("BSIServerEntity"));

version(test_library) {
  unittest {
    assert(BSIServerEntity);
  
  auto entity = BSIServerCategoryEntity;
	}
}
