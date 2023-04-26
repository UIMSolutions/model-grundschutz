module models.grundschutz.entities.systems.system;

@safe:
import models.grundschutz;

class DBSISystemEntity : DOOPEntity {
  mixin(EntityThis!("BSISystemEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
			.addValues([
				"platformId": StringAttribute, // 
				"confidentialityCode": StringAttribute, // 
				"confidentialityReason": StringAttribute, // 
				"integrityCode": StringAttribute, // 
				"integrityReason": StringAttribute, // 
				"availabilityCode": StringAttribute, // 
				"availabilityReason": StringAttribute, // 
      ])
      .registerPath("grundschutz_systems");
  }
}
mixin(EntityCalls!("BSISystemEntity"));

version(test_library) {
  unittest {
    assert(BSISystemEntity);
  
  auto entity = BSISystemEntity;	
}
}
