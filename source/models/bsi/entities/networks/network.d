module models.bsi.networks.network;

@safe:
import models.bsi;

static this() {
  createEntities[DBSINetwork.namespace] = (Json json) => BSINetwork(json); 
  createEntities["bsiNetwork"] = (Json json) => BSINetwork(json); 
}
// 
class DBSINetwork : DOOPEntity {
  mixin(EntityThis!("OPTRetailCDXDataStoreChannel"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
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

  override string entityClass() { return "bsiNetwork"; }
  override string entityClasses() { return "bsiNetworks"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto BSINetwork() { return new DBSINetwork; } 
auto BSINetwork(Json json) { return new DBSINetwork(json); } 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(BSINetwork);
  
  auto entity = BSINetwork;
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
import sernet.verinice.model.common.CnATreeElement;

public class NetzKomponente extends CnATreeElement 
	implements IBSIStrukturElement {
	
    private static final long serialVersionUID = 20160127143045L;

    // ID must correspond to entity definition in XML description
	public static final String TYPE_ID = "netzkomponente"; //$NON-NLS-1$
    public static final String TYPE_ID_HIBERNATE = "netz-komponente"; //$NON-NLS-1$
    
	public static final String PROP_NAME = "netzkomponente_name"; //$NON-NLS-1$
	public static final String PROP_KUERZEL = "netzkomponente_kuerzel"; //$NON-NLS-1$
	public static final String PROP_TAG			= "netzkomponente_tag"; //$NON-NLS-1$
	public static final String PROP_ERLAEUTERUNG = "netzkomponente_erlaeuterung"; //$NON-NLS-1$
    public static final String PROP_KRITIKALITAET = "netzkomponente_kritikalitaet"; //$NON-NLS-1$
    public static final String PROP_KRITIKALITAET_OPTION_0 = "netzkomponente_kritikalitaet_0"; //$NON-NLS-1$
    public static final String PROP_KRITIKALITAET_OPTION_1 = "netzkomponente_kritikalitaet_1"; //$NON-NLS-1$
    public static final String PROP_KRITIKALITAET_OPTION_2 = "netzkomponente_kritikalitaet_2"; //$NON-NLS-1$
    public static final String PROP_KRITIKALITAET_OPTION_3 = "netzkomponente_kritikalitaet_3"; //$NON-NLS-1$
    public static final String PROP_KRITIKALITAET_OPTION_4 = "netzkomponente_kritikalitaet_4"; //$NON-NLS-1$
    public static final String PROP_KRITIKALITAET_OPTION_5 = "netzkomponente_kritikalitaet_5"; //$NON-NLS-1$

    public static final String PROP_ESA_ENTSCHEIDUNG_DURCH = "nkkomponente_ergaenzendeanalyse_entscheidung_durch"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_AM = "nkkomponente_ergaenzendeanalyse_entscheidung_am"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_BIS = "nkkomponente_ergaenzendeanalyse_entscheidung_bis"; //$NON-NLS-1$
	
	
	public String getKuerzel() {
		return getEntity().getSimpleValue(PROP_KUERZEL);
	}

	/**
	 * Create new BSIElement.
	 * @param parent
	 * /
	public NetzKomponente(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	public int getSchicht() {
		return 4;
	}
	
	public Collection<? extends String> getTags() {
		return TagHelper.getTags(getEntity().getSimpleValue(PROP_TAG));
	}
	

	@Override
	public String getTypeId() {
		return TYPE_ID;
	}
	
	@Override
	public boolean canContain(Object obj) {
		return CnaStructureHelper.canContain(obj);
	}
	
	public void setErlaeuterung(String name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ERLAEUTERUNG), name);
	}
	
	public void setKuerzel(String name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_KUERZEL), name);
	}

	public void setAnzahl(int anzahl) {
		// do nothing
	}



}

*/