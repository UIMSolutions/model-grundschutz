module models.bsi.entities.clients.category;

@safe:
import models.bsi;

class DBSIClientCategory : DOOPEntity {
  mixin(EntityThis!("BSIClientCategory"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
      "projectId": UUIDAttribute, // {"en":"Unique identifier of the project with which this entity is associated."}}`,
/*       "annotationId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the note."}}`,
      "objectTypeCode":`{"datatype":"Integer", "descriptions":{"en":"Type of entity with which the note is associated."}}`,
      "objectTypeCode_display":`{"datatype":"String", "descriptions":{"en":""}}`,
      "owningUserId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the user who owns the note."}}`,
      "objectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the object with which the note is associated."}}`,
      "objectIdTypeCode":`{"datatype":"Integer", "descriptions":{"en":"The name of the entity linked by objectId"}}`,
      "owningBusinessUnit":`{"datatype":"String", "descriptions":{"en":"Unique identifier of the business unit that owns the note."}}`,
      "subject":`{"datatype":"String", "descriptions":{"en":"Subject associated with the note."}}`,
      "isDocument":`{"datatype":"String", "descriptions":{"en":"Specifies whether the note is an client."}}`,
      "noteText":`{"datatype":"String", "descriptions":{"en":"Text of the note."}}`,
      "mimeType":`{"datatype":"String", "descriptions":{"en":"MIME type of the note's client."}}`,
      "langId":`{"datatype":"UUID", "descriptions":{"en":"Language identifier for the note."}}`,
      "documentBody":`{"datatype":"String", "descriptions":{"en":"Contents of the note's client."}}`,
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
}
auto BSIClientCategory() { return new DBSIClientCategory; } 
auto BSIClientCategory(Json json) { return new DBSIClientCategory(json); } 

version(test_library) {
  unittest {
    assert(BSIClientCategory);
  
  auto entity = BSIClientCategory;
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
