module models.bsi.attachments.file;

@safe:
import models.bsi;

static this() {
  createEntities[DBSIAttachmentFile.namespace] = (Json json) => BSIAttachmentFile(json); 
  createEntities["bsiAttachmentFile"] = (Json json) => BSIAttachmentFile(json); 
}// 
class DBSIAttachmentFile : DOOPEntity {
  this() { super();
    this.addValues([
      "projectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the project with which this entity is associated."}}`,
/*       "annotationId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the note."}}`,
      "objectTypeCode":`{"datatype":"Integer", "descriptions":{"en":"Type of entity with which the note is associated."}}`,
      "objectTypeCode_display":`{"datatype":"String", "descriptions":{"en":""}}`,
      "owningUserId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the user who owns the note."}}`,
      "objectId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the object with which the note is associated."}}`,
      "objectIdTypeCode":`{"datatype":"Integer", "descriptions":{"en":"The name of the entity linked by objectId"}}`,
      "owningBusinessUnit":`{"datatype":"String", "descriptions":{"en":"Unique identifier of the business unit that owns the note."}}`,
      "subject":`{"datatype":"String", "descriptions":{"en":"Subject associated with the note."}}`,
      "isDocument":`{"datatype":"String", "descriptions":{"en":"Specifies whether the note is an attachment."}}`,
      "noteText":`{"datatype":"String", "descriptions":{"en":"Text of the note."}}`,
      "mimeType":`{"datatype":"String", "descriptions":{"en":"MIME type of the note's attachment."}}`,
      "langId":`{"datatype":"UUID", "descriptions":{"en":"Language identifier for the note."}}`,
      "documentBody":`{"datatype":"String", "descriptions":{"en":"Contents of the note's attachment."}}`,
      "fileSize":`{"datatype":"String", "descriptions":{"en":"File size of the note."}}`,
      "fileName":`{"datatype":"String", "descriptions":{"en":"File name of the note."}}`,
      "ownerId":`{"datatype":"UUID", "descriptions":{"en":"Owner Id"}}`,
      "ownerIdType":`{"datatype":"String", "descriptions":{"en":"The type of owner, either User or Team."}}`,
      "stepId":`{"datatype":"UUID", "descriptions":{"en":"workflow step id associated with the note."}}`,
      "overriddenCreatedOn":`{"datatype":"DateTime", "descriptions":{"en":"Date and time that the record was migrated."}}`,
      "importSequenceNumber":`{"datatype":"String", "descriptions":{"en":"Unique identifier of the data import or data migration that created this record."}}`,
      "createdOnBehalfBy":`{"datatype":"UserId", "descriptions":{"en":"Unique identifier of the delegate user who created the annotation."}}`,
      "modifiedOnBehalfBy":`{"datatype":"UserId", "descriptions":{"en":"Unique identifier of the delegate user who last modified the annotation."}}`,
      "owningTeamId":`{"datatype":"UUID", "descriptions":{"en":"Unique identifier of the team who owns the note."}}`, */
    ]);
  }

  override string entityClass() { return "bsiAttachmentFile"; }
  override string entityClasses() { return "bsiAttachmentFiles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto BSIAttachmentFile() { return new DBSIAttachmentFile; } 
auto BSIAttachmentFile(Json json) { return new DBSIAttachmentFile(json); } 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(BSIAttachmentFile);
  
  auto entity = BSIAttachmentFile;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}

/*

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.text.DecimalFormat;

import org.apache.commons.io.FileUtils;

import sernet.hui.common.connect.ITypedElement;

/**
 * File meta-data is loaded and saved by {@link Attachment}.
 * 
 * /
@SuppressWarnings("serial")
public class AttachmentFile implements Serializable, ITypedElement {

	private Integer dbId;
	

	private byte[] fileData;


    public static final String TYPE_ID = "attachmentfile";
	
	public AttachmentFile() {
		super();
	}
	
	public Integer getDbId() {
		return dbId;
	}

	public void setDbId(Integer dbId) {
		this.dbId = dbId;
	}
	
	
	public byte[] getFileData() {
		return (fileData != null) ? fileData.clone() : null;
	}

	public void setFileData(byte[] fileData) {
		this.fileData = (fileData != null) ? fileData.clone() : null;
	}
	

	public void writeFileData(String path) throws IOException {
		FileOutputStream fos = new FileOutputStream(path);
		fos.write(getFileData());
		fos.close(); 
	}
	
	public void readFileData(String path) throws IOException {
		if(getFileData()==null && path!=null) {
			File file = new File(path);
			setFileData(FileUtils.readFileToByteArray(file));
		}
	}

    /* (non-Javadoc)
     * @see sernet.hui.common.connect.ITypedElement#getTypeId()
     * /
    @Override
    public String getTypeId() {
        return TYPE_ID;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((dbId == null) ? 0 : dbId.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj){
            return true;
        }
        if (obj == null){
            return false;
        }
        if (getClass() != obj.getClass()){
            return false;
        }
        AttachmentFile other = (AttachmentFile) obj;
        if (dbId == null) {
            if (other.dbId != null){
                return false;
            }
        } else if (!dbId.equals(other.dbId)){
            return false;
        }
        return true;
    }
    
    public static double convertByteToMB(long byteSize) {
        return ((double)byteSize) / ((double)(1024*1024));
    }
    
    public static String formatByteToMB(long byteSize) {
        StringBuilder sb = new StringBuilder();
        sb.append(new DecimalFormat("#,##0.#").format(convertByteToMB(byteSize)));
        return sb.append(" MB").toString();
    }
	
}


*/