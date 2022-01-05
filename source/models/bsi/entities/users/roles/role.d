module models.bsi.users.role;

@safe:
import models.bsi;

static this() {
  createEntities[DBSIRole.namespace] = (Json json) => BSIRole(json); 
  createEntities["bsiRole"] = (Json json) => BSIRole(json); 
}
// 
  class DBSIRole : DOOPEntity {
  this() { super();
    this.attributes([
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

  override string entityClass() { return "bsiRole"; }
  override string entityClasses() { return "bsiRoles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto BSIRole() { return new DBSIRole; } 
auto BSIRole(Json json) { return new DBSIRole(json); } 

unittest {
  version(uim_entities) {
    assert(BSIRole);
  
  auto entity = BSIRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}

/* 
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import sernet.gs.service.StringUtil;
import sernet.hui.common.connect.Entity;
import sernet.hui.common.connect.HUITypeFactory;
import sernet.hui.common.connect.IRole;
import sernet.hui.common.connect.Property;
import sernet.hui.common.connect.PropertyList;
import sernet.hui.common.connect.PropertyType;
import sernet.hui.common.multiselectionlist.IMLPropertyOption;
import sernet.snutils.TagHelper;
import sernet.verinice.model.common.CnATreeElement;
import sernet.verinice.model.common.configuration.Configuration;

public class Role extends CnATreeElement implements IBSIStrukturElement, IRole {

    private static final long serialVersionUID = -4658214027652209720L;

    public static final String PROP_TAG = "person_tag"; //$NON-NLS-1$
    public static final String P_ANREDE = "person_anrede"; //$NON-NLS-1$
    public static final String P_NAME = "nachname"; //$NON-NLS-1$
    public static final String P_VORNAME = "vorname"; //$NON-NLS-1$
    public static final String PROP_KUERZEL = "person_kuerzel"; //$NON-NLS-1$
    public static final String P_ROLLEN = "person_rollen"; //$NON-NLS-1$
    public static final String P_EMAIL = "person_email"; //$NON-NLS-1$
    public static final String P_PHONE = "person_telefon"; //$NON-NLS-1$
    public static final String P_ORGEINHEIT = "person_orgeinheit"; //$NON-NLS-1$

    // ID must correspond to entity definition in entity type XML description:
    public static final String TYPE_ID = "person"; //$NON-NLS-1$
    public static final String PROP_ERLAEUTERUNG = "person_erlaeuterung"; //$NON-NLS-1$
    public static final String PROP_ANZAHL = "person_anzahl"; //$NON-NLS-1$

    private Set<Configuration> configurations = new HashSet<>(1);

    protected Role() {
    }

    public Set<Configuration> getConfigurations() {
        return configurations;
    }

    public void setConfigurations(Set<Configuration> configurations) {
        this.configurations = configurations;
    }

    public Role(CnATreeElement parent) {
        super(parent);
        setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized name via HUITypeFactory from message bundle
        getEntity().setSimpleValue(getEntityType().getPropertyType(P_NAME),
                getTypeFactory().getMessage(TYPE_ID));
    }

    @Override
    public String getKuerzel() {
        return getEntity().getPropertyValue(PROP_KUERZEL);
    }

    @Override
    public Collection<? extends String> getTags() {
        return TagHelper.getTags(getEntity().getPropertyValue(PROP_TAG));
    }

    @Override
    public int getSchicht() {
        return 0;
    }

    @Override
    public void setTitel(String name) {
        // empty, otherwise title get scrambled while copying, bug 264
    }

    @Override
    public String getTitle() {
        if (getEntity() == null) {
            return ""; //$NON-NLS-1$
        }
        return getTitel(getEntity());
    }

    public static String getTitel(Entity entity) {
        if (entity == null) {
            return ""; //$NON-NLS-1$
        }
        StringBuilder sb = new StringBuilder();
        sb.append(entity.getPropertyValue(P_VORNAME));
        if (sb.length() > 0) {
            sb.append(" "); //$NON-NLS-1$
        }
        sb.append(entity.getPropertyValue(P_NAME));

        String rollen = getRollen(entity);
        if (rollen.length() > 0) {
            sb.append(" [" + rollen + "]"); //$NON-NLS-1$ //$NON-NLS-2$
        }
        return sb.toString();
    }

    public String getFullName() {
        if (getEntity() == null) {
            return ""; //$NON-NLS-1$
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getEntity().getPropertyValue(P_VORNAME));
        if (sb.length() > 0) {
            sb.append(" "); //$NON-NLS-1$
        }
        sb.append(getEntity().getPropertyValue(P_NAME));

        return sb.toString();
    }

    public String getNachname() {
        return getEntity().getPropertyValue(P_NAME);
    }

    public String getAnrede() {
        return getEntity().getPropertyValue(P_ANREDE);
    }

    private String getRollen() {
        if (getEntity() == null) {
            return ""; //$NON-NLS-1$
        }
        return getRollen(getEntity());
    }

    private static String getRollen(Entity entity) {
        if (entity == null) {
            return ""; //$NON-NLS-1$
        }
        StringBuilder sb = new StringBuilder();
        PropertyList propertyList = entity.getProperties(P_ROLLEN);
        PropertyType type = HUITypeFactory.getInstance().getPropertyType(TYPE_ID, P_ROLLEN);
        List<Property> properties = propertyList.getProperties();

        if (properties == null)
            return ""; //$NON-NLS-1$

        for (Iterator<Property> iter = properties.iterator(); iter.hasNext();) {
            Property prop = iter.next();
            String rolle = type.getOption(prop.getPropertyValue()).getName();
            sb.append(rolle);
            if (iter.hasNext()) {
                sb.append(", "); //$NON-NLS-1$
            }
        }
        return sb.toString();
    }

    @Override
    public String getTypeId() {
        return TYPE_ID;
    }

    @Override
    public void addChild(CnATreeElement child) {
        // Role doesn't have children
    }

    public void setErlaeuterung(String name) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ERLAEUTERUNG), name);
    }

    public String getErlaeuterung() {
        return getEntity().getPropertyValue(PROP_ERLAEUTERUNG);
    }

    public void setKuerzel(String name) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_KUERZEL), name);
    }

    public boolean hasRole(Property role) {
        String value = role.getPropertyValue();
        if (value != null) {
            value = value.replaceAll("\u00A0", "");
            if (getRollen().indexOf(value) > -1) {
                return true;
            }
        }

        return false;
    }

    public boolean addRole(String name) {
        PropertyType propertyType = getEntityType().getPropertyType(P_ROLLEN);
        ArrayList<IMLPropertyOption> options = (ArrayList<IMLPropertyOption>) propertyType
                .getOptions();
        for (IMLPropertyOption option : options) {
            if (option.getName().equals(name)) {
                getEntity().createNewProperty(propertyType, option.getId());
                return true;
            }
        }
        return false;
    }

    public void setAnzahl(int anzahl) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ANZAHL),
                Integer.toString(anzahl));
    }

    @Override
    public String toString() {
        return "Role [getFullName()=" + getFullName() + ", getKuerzel()=" + getKuerzel()
                + ", getId()=" + getId() + "]";
    }

    @Override
    public String getFirstName() {
        return getEntity().getRawPropertyValue(P_VORNAME);
    }

    @Override
    public String getLastName() {
        return getEntity().getRawPropertyValue(P_NAME);
    }

    @Override
    public String getSalutation() {
        return StringUtil.replaceEmptyStringByNull(getEntity().getPropertyValue(P_ANREDE));
    }

    @Override
    public String getEMailAddress() {
        return getEntity().getRawPropertyValue(P_EMAIL);
    }
}

*/