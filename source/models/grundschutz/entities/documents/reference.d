module models.grundschutz.entities.documents.reference;

@safe:
import models.grundschutz;


class DBSIDocumentReferenceEntity : DEntity {
  mixin(EntityThis!("BSIDocumentReferenceEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_documentreference");
  }
}
mixin(EntityCalls!("BSIDocumentReferenceEntity"));

version(test_library) {
  unittest {
    assert(BSIDocumentReferenceEntity);
  
    auto entity = BSIDocumentReferenceEntity;
  }
}

/* 
import java.io.Serializable;

import sernet.verinice.model.common.CnATreeElement;

public class DocumentReference implements Serializable {

	private CnATreeElement cnatreeelement;
	private DocumentLink parent;

	public DocumentReference(CnATreeElement element) {
		cnatreeelement = element;
	}

	public CnATreeElement getCnaTreeElement() {
		return this.cnatreeelement;
	}
	
	public void setParent(DocumentLink parent) {
		this.parent = parent;
	}

	public DocumentLink getParent() {
		return parent;
	}
}
*/
