module models.grundschutz.entities.applications.category;

@safe:
import models.grundschutz;

class DBSIApplicationCategoryEntity : DEntity {
  mixin(EntityThis!("BSIApplicationCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectId": UUIDAttribute, 
    ]);
  }
}
mixin(EntityCalls!("BSIApplicationCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIApplicationCategoryEntity);
  
  auto entity = BSIApplicationCategoryEntity;
}}

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
