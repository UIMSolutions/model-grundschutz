module models.grundschutz.entities.rooms.category;

@safe:
import models.grundschutz;

class DBSIRoomCategoryEntity : DEntity {
  mixin(EntityThis!("BSIRoomCategoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_roomcategories");
  }
}
mixin(EntityCalls!("BSIRoomCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIRoomCategoryEntity);
  
  auto entity = BSIRoomCategoryEntity;
  }
}
