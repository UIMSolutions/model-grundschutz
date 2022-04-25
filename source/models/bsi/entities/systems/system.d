module models.bsi.systems.system;

@safe:
import models.bsi;

static this() {
  createEntities[DBSISystem.namespace] = (Json json) => BSISystem(json); 
  createEntities["bsiSystem"] = (Json json) => BSISystem(json); 
}
// 
class DBSISystem : DOOPEntity {
  mixin(EntityThis!("BSISystem"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
				"projectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the project with which this entity is associated."}}`,
				"platformId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the platform with which this entity is associated."}}`,
				"confidentialityCode":`{"datatype":"String", "descriptions":{"en":""}}`,
				"confidentialityReason":`{"datatype":"String", "descriptions":{"en":""}}`,
				"integrityCode":`{"datatype":"String", "descriptions":{"en":""}}`,
				"integrityReason":`{"datatype":"String", "descriptions":{"en":""}}`,
				"availabilityCode":`{"datatype":"String", "descriptions":{"en":""}}`,
				"availabilityReason":`{"datatype":"String", "descriptions":{"en":""}}`,
				/*"annotationId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the note."}}`,
				"objectTypeCode":`{"datatype":"Integer", "descriptions":{"en":"Type of entity with which the note is associated."}}`,
				"objectTypeCode_display":`{"datatype":"String", "descriptions":{"en":""}}`,
				"owningUserId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the user who owns the note."}}`,
				"objectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the object with which the note is associated."}}`,
				"objectIdTypeCode":`{"datatype":"Integer", "descriptions":{"en":"The name of the entity linked by objectId"}}`,
				"owningBusinessUnit":`{"datatype":"String", "descriptions":{"en":"Unique identifier of the business unit that owns the note."}}`,
				"subject":`{"datatype":"String", "descriptions":{"en":"Subject associated with the note."}}`,
				"isDocument":`{"datatype":"String", "descriptions":{"en":"Specifies whether the note is an attachment."}}`,
				"noteText":`{"datatype":"String", "descriptions":{"en":"Text of the note."}}`,
				"mimeType":`{"datatype":"String", "descriptions":{"en":"MIME type of the note's attachment."}}`,
				"langId":`{"datatype":"UUID", "descriptions":{"en":"Language identifier for the note."}}`,
				"documentBody":`{"datatype":"String", "descriptions":{"en":"Contents of the note's attachment."}}`,
				"fileSize":`{"datatype":"String", "descriptions":{"en":"File size of the note."}}`,
				"fileName":`{"datatype":"String", "descriptions":{"en":"File name of the note."}}`,
				"ownerId":`{"datatype":"UUID", "descriptions":{"en":"Owner Id"}}`,
				"ownerIdType":`{"datatype":"String", "descriptions":{"en":"The type of owner, either User or Team."}}`,
				"stepId":`{"datatype":"UUID", "descriptions":{"en":"workflow step id associated with the note."}}`,
				"overriddenCreatedOn":`{"datatype":"DateTime", "descriptions":{"en":"Date and time that the record was migrated."}}`,
				"importSequenceNumber":`{"datatype":"String", "descriptions":{"en":"Unique identifier of the data import or data migration that created this record."}}`,
				"createdOnBehalfBy":`{"datatype":"UserId", "descriptions":{"en":"Unique identifier of the delegate user who created the annotation."}}`,
				"modifiedOnBehalfBy":`{"datatype":"UserId", "descriptions":{"en":"Unique identifier of the delegate user who last modified the annotation."}}`,
				"owningTeamId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the team who owns the note."}}`, */
      ])
      .registerPath("bsi_systems");
  }
}
mixin(EntityCalls!("BSISystem"));

unittest {
  version(uim_entities) {
    assert(BSISystem);
  
  auto entity = BSISystem;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
	}
}
