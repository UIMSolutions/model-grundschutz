module models.bsi.systems.category;

@safe:
import models.bsi;

static this() {
  createEntities[DBSISystemCategory.namespace] = (Json json) => BSISystemCategory(json); 
  createEntities["bsiSystemCategory"] = (Json json) => BSISystemCategory(json); 
}
// 
class DBSISystemCategory : DOOPEntity {
  this() { super();
    this.attributes([
      "projectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the project with which this entity is associated."}}`,
/*       "annotationId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the note."}}`,
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
    ]);
  }

  override string entityClass() { return "bsiSystemCategory"; }
  override string entityClasses() { return "bsiSystemCategories"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto BSISystemCategory() { return new DBSISystemCategory; } 
auto BSISystemCategory(Json json) { return new DBSISystemCategory(json); } 

unittest {
  version(uim_entities) {
    assert(BSISystemCategory);
  
  auto entity = BSISystemCategory;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}

/*



import sernet.verinice.model.common.CnATreeElement;


@SuppressWarnings("serial")
public class AnwendungenKategorie extends CnATreeElement
	implements IBSIStrukturKategorie {
	public static final String TYPE_ID = "anwendungenkategorie"; //$NON-NLS-1$
    public static final String TYPE_ID_HIBERNATE = "anwendungen-kategorie"; //$NON-NLS-1$
	
	public AnwendungenKategorie(CnATreeElement parent) {
		super(parent);
	}
	
	protected AnwendungenKategorie() {
		
	}
	
	@Override
	public String getTitle() {
        return getTypeFactory().getMessage(TYPE_ID);
	}
	
	@Override
	public String getTypeId() {
		return TYPE_ID;
	}
	
	@Override
	public boolean canContain(Object obj) {
		if (obj instanceof Anwendung){
			return true;
		}
		return false;
	}
	
	
}

*/