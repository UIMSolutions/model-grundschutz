module models.grundschutz.entities.documents.link;

@safe:
import models.grundschutz;

class DBSIDocumentLinkEntity : DOOPEntity {
  mixin(EntityThis!("BSIDocumentLinkEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_documentlink");
  }
}
mixin(EntityCalls!("BSIDocumentLinkEntity"));

version(test_library) {
  unittest {
    assert(BSIDocumentLink);
  
    auto entity = BSIDocumentLink;
  }
}
