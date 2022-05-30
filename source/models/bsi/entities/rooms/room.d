module models.grundschutz.entities.rooms.room;

@safe:
import models.grundschutz;

class DBSIRoom : DOOPEntity {
  mixin(EntityThis!("BSIRoomEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectId
      ])
      .addValues([
        "categoryId": UUIDAttribute, //
      ])
      .registerPath("grundschutz_rooms");
  }
}
mixin(EntityCalls!("BSIRoom"));

version(test_library) {
  unittest {
    assert(BSIRoom);
  
  auto entity = BSIRoom;

  }
}
