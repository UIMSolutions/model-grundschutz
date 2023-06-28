module models.grundschutz.entities.networks.network;

@safe:
import models.grundschutz;

class DBSINetworkEntity : DEntity {
  mixin(EntityThis!("BSINetworkEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .addValues([
        "categoryId": UUIDAttribute,
"tag": StringAttribute,
"amount": IntegerAttribute,
"needsSupplementaryAnalysis": BooleanAttribute,
"supplementaryAnalysisUserId": BooleanAttribute
"criticality": StringAttribute, // netzkomponente_kritikalitaet 0..5
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


import sernet.hui.common.connect.Entity;
import sernet.verinice.model.common.CnATreeElement;

public class NetzKomponente extends CnATreeElement 
	implements IBSIStrukturElement {
	
    private static final long serialVersionUID = 20160127143045L

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
*/
