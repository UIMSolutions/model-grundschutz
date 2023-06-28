module models.grundschutz.entities.documents.document;

@safe:
import models.grundschutz;

class DBSIDocumentEntity : DEntity {
  mixin(EntityThis!("BSIDocumentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_documents");
  }
}
mixin(EntityCalls!("BSIDocumentEntity"));

version(test_library) {
  unittest {
    assert(BSIDocumentEntity);
  
  auto entity = BSIDocumentEntity;
  }
}
