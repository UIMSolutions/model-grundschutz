module models.grundschutz.entities.attachments.file;

@safe:
import models.grundschutz;

class DBSIAttachmentFileEntity : DEntity {
  mixin(EntityThis!("BSIAttachmentFileEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .registerPath("grundschutz_attachments.files");
  }
}
mixin(EntityCalls!("BSIAttachmentFileEntity"));

version(test_library) {
  unittest {

    assert(BSIAttachmentFileEntity);
    auto entity = BSIAttachmentFileEntity;
  }
}

/*
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
