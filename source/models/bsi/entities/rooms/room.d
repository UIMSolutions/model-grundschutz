module models.bsi.rooms.room;

@safe:
import models.bsi;

static this() {
  createEntities[DBSIRoom.namespace] = (Json json) => BSIRoom(json); 
  createEntities["bsiRoom"] = (Json json) => BSIRoom(json); 
}
// 
  class DBSIRoom : DOOPEntity {
  this() { super();
    this.attributes([
      "projectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the project with which this entity is associated."}}`,
      "categoryId":`{"datatype":"UUID", "descriptions":{"en":""}}`,
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

  override string entityClass() { return "bsiRoom"; }
  override string entityClasses() { return "bsiRooms"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto BSIRoom() { return new DBSIRoom; } 
auto BSIRoom(Json json) { return new DBSIRoom(json); } 

unittest {
  version(uim_entities) {
    assert(BSIRoom);
  
  auto entity = BSIRoom;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}

/* 
import java.util.Collection;

import sernet.hui.common.connect.Entity;
import sernet.verinice.interfaces.IReevaluator;
import sernet.verinice.model.common.CnATreeElement;
import sernet.verinice.model.common.ILinkChangeListener;

public class Raum extends CnATreeElement 
	implements IBSIStrukturElement {
	
	// ID must correspond to entity definition in XML description
	
	public static final String TYPE_ID = "raum"; //$NON-NLS-1$
	public static final String PROP_NAME = "raum_name"; //$NON-NLS-1$
	public static final String PROP_KUERZEL = "raum_kuerzel"; //$NON-NLS-1$
	public static final String PROP_TAG			= "raum_tag"; //$NON-NLS-1$
	public static final String PROP_ERLAEUTERUNG = "raum_erlaeuterung"; //$NON-NLS-1$
	private static final String PROP_ANZAHL = "raum_anzahl"; //$NON-NLS-1$
	
	public static final String PROP_VERTRAULICHKEIT = "raum_vertraulichkeit"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT = "raum_verfuegbarkeit"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET = "raum_integritaet"; //$NON-NLS-1$
    
    public static final String PROP_ESA_ENTSCHEIDUNG_DURCH = "raum_ergaenzendeanalyse_entscheidung_durch"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_AM = "raum_ergaenzendeanalyse_entscheidung_am"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_BIS = "raum_ergaenzendeanalyse_entscheidung_bis"; //$NON-NLS-1$

	private  IReevaluator schutzbedarfProvider 
	= new ProtectionRequirementsAdapter(this);


	private  ILinkChangeListener linkChangeListener
	= new MaximumProtectionRequirementsListener(this);

	/**
	 * Create new BSIElement.
	 * /
	public Raum(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	@Override
    public String getKuerzel() {
		return getEntity().getSimpleValue(PROP_KUERZEL);
	}
	@Override
    public Collection<? extends String> getTags() {
		return TagHelper.getTags(getEntity().getSimpleValue(PROP_TAG));
	}
	
	@Override
    public int getSchicht() {
		return 2;
	}
	
	@Override
	public String getTypeId() {
		return TYPE_ID;
	}
	
	@Override
	public boolean canContain(Object obj) {
		return CnaStructureHelper.canContain(obj);
	}
	
	@Override
	public ILinkChangeListener getLinkChangeListener() {
		return linkChangeListener;
	}

	@Override
	public IReevaluator getProtectionRequirementsProvider() {
		return schutzbedarfProvider;
	}

	public void setErlaeuterung(String name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ERLAEUTERUNG), name);
	}
	
	public void setKuerzel(String name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_KUERZEL), name);
	}

	public void setAnzahl(int anzahl) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ANZAHL), Integer.toString(anzahl));
	}
}

*/