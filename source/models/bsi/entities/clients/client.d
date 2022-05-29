module models.grundschutz.entities.clients.client;

@safe:
import models.grundschutz;

class DBSIClientEntity : DOOPEntity {
  mixin(EntityThis!("BSIClientEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
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
      ])
      .registerPath("bsi_clients");
  }
}
mixin(EntityCalls!("BSIClientEntity"));

version(test_library) {
  unittest {
    assert(BSIClientCategoryEntity);
  
  auto entity = BSIClientEntity;
	}
}

/* 
import java.util.Collection;

import org.apache.log4j.Logger;

import sernet.hui.common.connect.Entity;
import sernet.hui.common.connect.PropertyType;
import sernet.verinice.interfaces.IReevaluator;
import sernet.verinice.model.common.CnATreeElement;
import sernet.verinice.model.common.ILinkChangeListener;
import sernet.verinice.model.ds.Datenverarbeitung;
import sernet.verinice.model.ds.IDatenschutzElement;
import sernet.verinice.model.ds.Personengruppen;
import sernet.verinice.model.ds.StellungnahmeDSB;
import sernet.verinice.model.ds.VerantwortlicheStelle;
import sernet.verinice.model.ds.Verarbeitungsangaben;

@SuppressWarnings("serial")
public class Anwendung extends CnATreeElement 
	implements IBSIStrukturElement {
	
    private static final Logger log = Logger.getLogger(Anwendung.class);
    
    private static final int SCHICHT = 5;

	private final IReevaluator schutzbedarfProvider 
		= new ProtectionRequirementsAdapter(this);
	
	private final ILinkChangeListener linkChangeListener
		= new MaximumProtectionRequirementsListener(this);

	// ID must correspond to entity definition in XML description
	public static final String TYPE_ID = "anwendung"; //$NON-NLS-1$

	public static final String PROP_NAME = "anwendung_name"; //$NON-NLS-1$

	public static final String PROP_KUERZEL = "anwendung_kuerzel"; //$NON-NLS-1$

	public static final String PROP_PERSBEZ 		= "anwendung_persbez"; //$NON-NLS-1$
	public static final String PROP_PERSBEZ_JA 		= "anwendung_persbez_1"; //$NON-NLS-1$
	public static final String PROP_PERSBEZ_NEIN 	= "anwendung_persbez_2"; //$NON-NLS-1$
	@Deprecated
	public static final String PROP_BENUTZER_OLD = "anwendung_benutzer"; //$NON-NLS-1$
	@Deprecated
	public static final String PROP_EIGENTUEMER_OLD = "anwendung_eigentümer"; //$NON-NLS-1$

	public static final String PROP_TAG			= "anwendung_tag"; //$NON-NLS-1$

	public static final String PROP_ERLAEUTERUNG = "anwendung_erlaeuterung"; //$NON-NLS-1$

	public static final String PROP_PROZESSBEZUG				= "anwendung_prozessbezug"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_UNTERSTUETZEND = "anwendung_prozessbezug_1"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_WICHTIG 		= "anwendung_prozessbezug_2"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_WESENTLICH 	= "anwendung_prozessbezug_3"; //$NON-NLS-1$
	public static final String PROP_PROZESSBEZUG_HOCHGRADIG 	= "anwendung_prozessbezug_4"; //$NON-NLS-1$


	private static final String PROP_VERARBEITETE_INFORMATIONEN = "anwendung_prozess_informationen"; //$NON-NLS-1$

	private static final String PROP_PROZESSBESCHREIBUNG = "anwendung_prozess"; //$NON-NLS-1$

	private static final String PROP_DRINGLICHKEIT_BEGRUENDUNG = "anwendung_prozessbezug_begruendung"; //$NON-NLS-1$
	
	public static final String PROP_VERTRAULICHKEIT = "anwendung_vertraulichkeit"; //$NON-NLS-1$
	public static final String PROP_VERTRAULICHKEIT_NORMAL = "anwendung_vertraulichkeit_normal"; //$NON-NLS-1$
    public static final String PROP_VERTRAULICHKEIT_HOCH = "anwendung_vertraulichkeit_hoch"; //$NON-NLS-1$
    public static final String PPROP_VERTRAULICHKEIT_SEHR_HOCH = "anwendung_vertraulichkeit_sehrhoch"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT = "anwendung_verfuegbarkeit"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT_NORMAL = "anwendung_verfuegbarkeit_normal"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT_HOCH = "anwendung_verfuegbarkeit_hoch"; //$NON-NLS-1$
    public static final String PROP_VERFUEGBARKEIT_SEHR_HOCH = "anwendung_verfuegbarkeit_sehrhoch"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET = "anwendung_integritaet"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET_NORMAL = "anwendung_integritaet_normal"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET_HOCH = "anwendung_integritaet_hoch"; //$NON-NLS-1$
    public static final String PROP_INTEGRITAET_SEHR_HOCH = "anwendung_integritaet_sehrhoch"; //$NON-NLS-1$
    
    public static final String PROP_ESA_ENTSCHEIDUNG_DURCH = "anwendung_ergaenzendeanalyse_entscheidung_durch"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_AM = "anwendung_ergaenzendeanalyse_entscheidung_am"; //$NON-NLS-1$
    public static final String PROP_ESA_ENTSCHEIDUNG_BIS = "anwendung_ergaenzendeanalyse_entscheidung_bis"; //$NON-NLS-1$


	@Override
    public int getSchicht() {
		return SCHICHT;
	}

	@Override
    public String getKuerzel() {
		return getEntity().getSimpleValue(PROP_KUERZEL);
	}

	/**
	 * Create new BSIElement.
	 * 
	 * @param parent
	 * /
	public Anwendung(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }

	protected Anwendung() {

	}
	
	

	@Override
	public String getTitle() {
		return getEntity().getProperties(PROP_NAME).getProperty(0)
				.getPropertyValue();
	}
	
	@Override
    public void setTitel(String name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

	

	public void setErlaeuterung(String name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ERLAEUTERUNG), name);
	}
	
	public void setKuerzel(String name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_KUERZEL), name);
	}
	
	public void setPersonenbezogen(boolean perso) {
		PropertyType type = getEntityType().getPropertyType(PROP_PERSBEZ);
		getEntity().setSimpleValue(type, perso ? PROP_PERSBEZ_JA : PROP_PERSBEZ_NEIN);
	}
	
	

	@Override
	public String getTypeId() {
		return TYPE_ID;
	}

	@Override
	public boolean canContain(Object obj) {
		if (obj instanceof IDatenschutzElement){
			return true;
		}
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

	@Override
    public Collection<? extends String> getTags() {
		return TagHelper.getTags(getEntity().getSimpleValue(PROP_TAG));
	}

	public void setAnzahl(int anzahl) {
		// do nothing
	}

	public void setVerarbeiteteInformationen(String value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_VERARBEITETE_INFORMATIONEN), value);
	}

	public void setProzessBeschreibung(String value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_PROZESSBESCHREIBUNG), value);
	}

	public void setProzessWichtigkeitBegruendung(String value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_DRINGLICHKEIT_BEGRUENDUNG), value);
	}

	public void setProzessWichtigkeit(String value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_PROZESSBEZUG), value);
	}

}
*/
