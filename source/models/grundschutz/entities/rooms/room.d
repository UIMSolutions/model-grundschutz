module models.grundschutz.entities.rooms.room;

@safe:
import models.grundschutz;

class DBSIRoomEntity : DOOPEntity {
  mixin(EntityThis!("BSIRoomEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .addValues([
        "categoryId": UUIDAttribute, //
      ])
      .registerPath("grundschutz_rooms");
  }
}
mixin(EntityCalls!("BSIRoomEntity"));

version(test_library) {
  unittest {
    assert(BSIRoom);
  
  auto entity = BSIRoom;

  }
}
