module models.grundschutz.entities.documents.linkroot;

@safe:
import models.grundschutz;

class DBSIDocumentLinkRootEntity : DEntity {
  mixin(EntityThis!("BSIDocumentLinkRootEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_documents.linkroots");
  }
}
mixin(EntityCalls!("BSIDocumentLinkRootEntity"));

version(test_library) {
  unittest {
    assert(BSIDocumentLinkRootEntity);
  
    auto entity = BSIDocumentLinkRootEntity;
  }
}

/* 
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class DocumentLinkRoot implements Serializable {

	private Set<DocumentLink> children = new HashSet<DocumentLink>();
	
	public void addChild(DocumentLink link) {
		this.children.add(link);
	}
	
	public DocumentLink[] getChildren() {
		return (DocumentLink[]) children.toArray(new DocumentLink[children.size()]);
	}

	public DocumentLink getDocumentLink(String name, String href) {
		for (DocumentLink link : children) {
			if (link.getName().equals(name)
					&& link.getHref().equals(href)){
				return link;
			}
		}
		return null;
	}
	
	public void removeChild(DocumentLink link){
	    if(this.children.contains(link)){
	        this.children.remove(link);
	    }
	}
*/
