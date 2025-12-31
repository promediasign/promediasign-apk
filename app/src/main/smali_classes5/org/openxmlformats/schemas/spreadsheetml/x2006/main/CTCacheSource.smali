.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcachesource00dctype"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewConsolidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConsolidation;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;
.end method

.method public abstract getConnectionId()J
.end method

.method public abstract getConsolidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConsolidation;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;
.end method

.method public abstract getWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;
.end method

.method public abstract isSetConnectionId()Z
.end method

.method public abstract isSetConsolidation()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetWorksheetSource()Z
.end method

.method public abstract setConnectionId(J)V
.end method

.method public abstract setConsolidation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConsolidation;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;)V
.end method

.method public abstract setWorksheetSource(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
.end method

.method public abstract unsetConnectionId()V
.end method

.method public abstract unsetConsolidation()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetWorksheetSource()V
.end method

.method public abstract xgetConnectionId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;
.end method

.method public abstract xsetConnectionId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;)V
.end method
