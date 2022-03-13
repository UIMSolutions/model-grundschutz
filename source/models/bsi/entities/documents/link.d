module models.bsi.documents.link;

@safe:
import models.bsi;

static this() {
  createEntities[DBSIDocumentLink.namespace] = (Json json) => BSIDocumentLink(json); 
  createEntities["bsiDocumentLink"] = (Json json) => BSIDocumentLink(json); 
}
// 
class DBSIDocumentLink : DOOPEntity {
  mixin(OOPEntityThis!("BSIDocumentLink"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "projectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the project with which this entity is associated."}}`,
  /*       "annotationId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the note."}}`,
        "objectTypeCode":`{"datatype":"Integer", "descriptions":{"en":"Type of entity with which the note is associated."}}`,
        "objectTypeCode_display":`{"datatype":"String", "descriptions":{"en":""}}`,
        "owningUserId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the user who owns the note."}}`,
        "objectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the object with which the note is associated."}}`,
        "objectIdTypeCode":`{"datatype":"Integer", "descriptions":{"en":"The name of the entity linked by objectId"}}`,
        "owningBusinessUnit":`{"datatype":"String", "descriptions":{"en":"Unique identifier of the business unit that owns the note."}}`,
        "subject":`{"datatype":"String", "descriptions":{"en":"Subject associated with the note."}}`,
        "isDocumentLink":`{"datatype":"String", "descriptions":{"en":"Specifies whether the note is an attachment."}}`,
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
      .registerPath("bsi_documentlink");
  }
}
mixin(OOPEntityCalls!("BSIDocumentLink"));

unittest {
  version(uim_entities) {
    assert(BSIDocumentLink);
  
  auto entity = BSIDocumentLink;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
