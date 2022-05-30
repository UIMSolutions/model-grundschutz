module models.grundschutz.entities.networks.network;

@safe:
import models.grundschutz;

class DBSINetworkEntity : DOOPEntity {
  mixin(EntityThis!("BSINetworkEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .addValues([
        "categoryId": UUIDAttribute,
      ]);
  }
}
mixin(EntityCalls!("BSINetworkEntity"));


version(test_library) {
  unittest {
    assert(BSINetworkEntity);
  
  auto entity = BSINetworkEntity;

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
