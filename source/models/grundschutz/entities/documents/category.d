module models.grundschutz.entities.documents.category;

@safe:
import models.grundschutz;

class DBSIDocumentCategory : DEntity {
  mixin(EntityThis!("BSIDocumentCategory"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_documentcategories");
  }
}
mixin(EntityCalls!("BSIDocumentCategory"));

version(test_library) {
  unittest {
    assert(BSIDocumentCategory);
  
  auto entity = BSIDocumentCategory;
  }
}

/*
import sernet.verinice.model.common.CnATreeElement;

public class DocumentCategoryenKategorie extends CnATreeElement implements IBSIStrukturKategorie {
	
    private static final long serialVersionUID = 1L;
    public static final String TYPE_ID = "personkategorie"; //$NON-NLS-1$
	public static final String TYPE_ID_HIBERNATE = "personen-kategorie"; //$NON-NLS-1$

	public DocumentCategoryenKategorie(CnATreeElement model) {
		super(model);
	}
	
	protected DocumentCategoryenKategorie() {
		
	}
	
	public String getTypeId() {
		return TYPE_ID;
	}
	
	public boolean canContain(Object obj) {
		if (obj instanceof DocumentCategory){
		 return true;
		}
		return false;
	}
}
*/
