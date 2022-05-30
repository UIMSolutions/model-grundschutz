module models.grundschutz.entities.rooms.category;

@safe:
import models.grundschutz;

class DBSIRoomCategory : DOOPEntity {
  mixin(EntityThis!("BSIRoomCategory"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
              .addValues([
        GrundschutzProjectId
      ])

      ])
      .registerPath("grundschutz_roomcategories");
  }
}
mixin(EntityCalls!("BSIRoomCategory"));

version(test_library) {
  unittest {
    assert(BSIRoomCategory);
  
  auto entity = BSIRoomCategory;
  }
}
