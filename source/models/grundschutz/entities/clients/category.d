module models.grundschutz.entities.clients.category;

@safe:
import models.grundschutz;

class DBSIClientCategoryEntity : DEntity {
  mixin(EntityThis!("BSIClientCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_clients.categories");
  }
}
mixin(EntityCalls!("BSIClientCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIClientCategoryEntity);
  
    auto entity = BSIClientCategoryEntity;
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
