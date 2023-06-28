module models.grundschutz.entities.buildings.category;

@safe:
import models.grundschutz;

class DBSIBuildingCategoryEntity : DEntity {
  mixin(EntityThis!("BSIBuildingCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_buildings.categories");
  }
}
mixin(EntityCalls!("BSIBuildingCategoryEntity"));

version(test_library) {
  unittest {
    assert(BSIBuildingCategoryEntity);
  
    auto entity = BSIBuildingCategory;
  }
}

/*

import sernet.verinice.model.common.CnATreeElement;

public class GebaeudeKategorie extends CnATreeElement implements IBSIStrukturKategorie {

    private static final long serialVersionUID = 1L;
    public static final String TYPE_ID = "gebaeudekategorie"; //$NON-NLS-1$
    public static final String TYPE_ID_HIBERNATE = "gebaeude-kategorie"; //$NON-NLS-1$
	
	public GebaeudeKategorie(CnATreeElement parent) {
		super(parent);	
	}

	@Override
	public String getTypeId() {
		return TYPE_ID;
	}
	
	@Override
	public boolean canContain(Object obj) {
		if (obj instanceof Gebaeude){
			return true;
		}
		return false;
	}
	
}
*/
