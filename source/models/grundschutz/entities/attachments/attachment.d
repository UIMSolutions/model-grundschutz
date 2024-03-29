module models.grundschutz.entities.attachments.attachment;

@safe:
import models.grundschutz;

class DBSIAttachmentEntity : DEntity {
  mixin(EntityThis!("BSIAttachmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        GrundschutzProjectIdAttribute
      ])
      .addValues([
        "fileName": StringAttribute, //
        "mimeType": StringAttribute, //
				"size": LongAttribute, //
      ])
			.registerPath("grundschutz_attachments");
  }

}
mixin(EntityCalls!("BSIAttachmentEntity"));

version(test_library) {
  unittest {
    assert(BSIAttachmentEntity);
  
  	auto entity = BSIAttachmentEntity;
	}
}

/* 

import java.io.Serializable;
import java.util.Date;

import sernet.hui.common.connect.Entity;
import sernet.hui.common.connect.EntityType;

/**
 * File-Data is loaded and saved by {@link AttachmentFile}.
 * /
@SuppressWarnings("serial")
public class Attachment extends Addition implements Serializable, Comparable<Attachment> {

	public static final String PROP_NAME = "attachment_name"; //$NON-NLS-1$
	
	public static final String PROP_TEXT = "attachment_text"; //$NON-NLS-1$


	
	public static final String TYPE_ID = "attachment"; //$NON-NLS-1$
	
	private static final String[] DOCUMENT_MIME_TYPES = new String[] {"doc","odt","docx","dot"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
	
	private static final String[] PDF_MIME_TYPES = new String[] {"pdf"}; //$NON-NLS-1$
	
	private static final String[] IMAGE_MIME_TYPES = new String[] {"gif","jpg","jpeg","png","tif","tiff","bmp","svg","psd"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$ //$NON-NLS-6$ //$NON-NLS-7$ //$NON-NLS-8$ //$NON-NLS-9$
	
	private static final String[] SPREADSHEET_MIME_TYPES = new String[] {"xls","ods","xlsx","csv"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
	
	private static final String[] PRESENTATION_MIME_TYPES = new String[] {"ppt","odp","pptx"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
	
	private static final String[] HTML_MIME_TYPES = new String[] {"htm","html","php"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
	
	private static final String[] XML_MIME_TYPES = new String[] {"xml","xsd"}; //$NON-NLS-1$ //$NON-NLS-2$
	
	private static final String[] AUDIO_MIME_TYPES = new String[] {"mp3","mp2","mp4","ogg","wav","fla","wma"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$ //$NON-NLS-6$ //$NON-NLS-7$
	
	private static final String[] VIDEO_MIME_TYPES = new String[] {"xvid","divx","ogv","flv","avi","vob","mpeg"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$ //$NON-NLS-6$ //$NON-NLS-7$
	
	private static final String[] ARCHIVE_MIME_TYPES = new String[] {"zip","rar","tar","gz","gzip","arj","bz2","bz"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$ //$NON-NLS-6$
	
	private static final String[] TEXT_MIME_TYPES = new String[] {"txt","log","readme"}; //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
	
	private transient EntityType subEntityType;
	
	private String filePath;
	
	public Attachment() {
		super();
		setEntity(new Entity(TYPE_ID));
	}

	public String getTitel() {
		if(getEntity()!=null && getEntity().getProperties(PROP_NAME)!=null && getEntity().getProperties(PROP_NAME).getProperty(0)!=null) {
			return getEntity().getProperties(PROP_NAME).getProperty(0).getPropertyValue();
		} else {
			return null;
		}
	}
	
	public void setTitel(String titel) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), titel);
	}
	
	
	public String getText() {
		if(getEntity()!=null && getEntity().getProperties(PROP_TEXT)!=null && getEntity().getProperties(PROP_TEXT).getProperty(0)!=null) {
			return getEntity().getProperties(PROP_TEXT).getProperty(0).getPropertyValue();
		} else {
			return null;
		}
	}
	
	public void setText(String text) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_TEXT), text);
	}
	
	public String getFileName() {
		if(getEntity()!=null && getEntity().getProperties(PROP_FILE_NAME)!=null && getEntity().getProperties(PROP_FILE_NAME).getProperty(0)!=null) {
			return getEntity().getProperties(PROP_FILE_NAME).getProperty(0).getPropertyValue();
		} else {
			return null;
		}
	}
	
	public void setFileName(String fileName) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_FILE_NAME), fileName);
	}
	
	public String getMimeType() {
		if(getEntity()!=null && getEntity().getProperties(PROP_MIME_TYPE)!=null && getEntity().getProperties(PROP_MIME_TYPE).getProperty(0)!=null) {
			return getEntity().getProperties(PROP_MIME_TYPE).getProperty(0).getPropertyValue();
		} else {
			return null;
		}
	}
	
	public void setMimeType(String mimeType) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_MIME_TYPE), mimeType);
	}
	
	
	public String getVersion() {
		if(getEntity()!=null && getEntity().getProperties(PROP_VERSION)!=null && getEntity().getProperties(PROP_VERSION).getProperty(0)!=null) {
			return getEntity().getProperties(PROP_VERSION).getProperty(0).getPropertyValue();
		} else {
			return null;
		}
	}
	
	public void setVersion(String version) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_VERSION), version);
	}
	
	public String getFileSize(){
	    if(getEntity()!=null && getEntity().getProperties(PROP_SIZE)!=null && getEntity().getProperties(PROP_SIZE).getProperty(0) != null){
	        return getEntity().getProperties(PROP_SIZE).getProperty(0).getPropertyValue();
	    } else {
	        return null;
	    }
	}
	
	public void setFileSize(String size){
	    getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_SIZE), size);
	}
	
	public Date getDate() {
		if (getEntity().getProperties(PROP_DATE).getProperty(0) == null){
			return null;
		}
		String dateString = getEntity().getProperties(PROP_DATE).getProperty(0).getPropertyValue();

		if (dateString == null || dateString.length() == 0){
			return null;
		}
		return new Date(Long.parseLong(dateString));
	}
	
	public void setDate(Date date) {
		if(date!=null) {
			getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_DATE), String.valueOf(date.getTime()));
		}
	}
	public EntityType getEntityType() {
		if (subEntityType == null){
			subEntityType = getTypeFactory().getEntityType(getTypeId());
		}
		return subEntityType;
	}

	@Override
	public String getTypeId() {
		return TYPE_ID;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
		if(filePath!=null) {
			File file = new File(filePath);
			String name = file.getName();
			if(name!=null) {
				setFileName(file.getName());
				if(name.lastIndexOf('.')!=-1) {
					setMimeType(name.substring(name.lastIndexOf('.')+1).toLowerCase());
				}
			}
		}
	}

    @Override
	public int hashCode() {
		if(getDbId()!=null) {
			return super.hashCode();
		}
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((filePath == null) ? 0 : filePath.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if(getDbId()!=null && obj!=null && (obj instanceof Addition) && ((Addition)obj).getDbId()!=null) {
			return super.equals(obj);
		}
		if (this == obj){
			return true;
		}
		// FIXME ak this will not work when comparing proxies: 
		if (!super.equals(obj) || (getClass() != obj.getClass())){
			return false;
		}
		Attachment other = (Attachment) obj;
		if (filePath == null && other.filePath != null){
		    return false;
		} else if (filePath != null && !filePath.equals(other.filePath)){
			return false;
		}
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Comparable#compareTo(java.lang.Object)
	 * /
	@Override
	public int compareTo(Attachment o) {
	    int result = 1; // this is greater
	    if(o!=null && o.getTitel()!=null) {
	        if(this.getTitel()!=null) {
	            result = this.getTitel().compareTo(o.getTitel());
	        } else {
	            result = 0;
	        }
	    }
	    return result;
	}


    public static String[] getDocumentMimeTypes() {
        return (DOCUMENT_MIME_TYPES != null) ? DOCUMENT_MIME_TYPES.clone() : null;
    }

    public static String[] getPdfMimeTypes() {
        return (PDF_MIME_TYPES != null)  ? PDF_MIME_TYPES.clone() : null;
    }

    public static String[] getImageMimeTypes() {
        return (IMAGE_MIME_TYPES != null) ? IMAGE_MIME_TYPES.clone() : null;
    }

    public static String[] getSpreadsheetMimeTypes() {
        return (SPREADSHEET_MIME_TYPES != null) ? SPREADSHEET_MIME_TYPES.clone() : null;
    }

    public static String[] getPresentationMimeTypes() {
        return (PRESENTATION_MIME_TYPES != null) ? PRESENTATION_MIME_TYPES.clone() : null;
    }

    public static String[] getHtmlMimeTypes() {
        return (HTML_MIME_TYPES != null) ? HTML_MIME_TYPES.clone() : null;
    }

    public static String[] getXmlMimeTypes() {
        return (XML_MIME_TYPES != null) ? XML_MIME_TYPES.clone() : null;
    }

    public static String[] getAudioMimeTypes() {
        return (AUDIO_MIME_TYPES != null) ? AUDIO_MIME_TYPES.clone() :  null;
    }

    public static String[] getVideoMimeTypes() {
        return (VIDEO_MIME_TYPES != null) ? VIDEO_MIME_TYPES.clone() : null;
    }

    public static String[] getArchiveMimeTypes() {
        return (ARCHIVE_MIME_TYPES != null) ? ARCHIVE_MIME_TYPES.clone() : null;
    }

    public static String[] getTextMimeTypes() {
        return (TEXT_MIME_TYPES != null) ? TEXT_MIME_TYPES.clone() : null;
    }
}

*/
