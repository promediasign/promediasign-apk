.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnonvisualconnectorproperties6f8etype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewCxnSpLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectorLocking;
.end method

.method public abstract addNewEndCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewStCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract getCxnSpLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectorLocking;
.end method

.method public abstract getEndCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getStCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;
.end method

.method public abstract isSetCxnSpLocks()Z
.end method

.method public abstract isSetEndCxn()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetStCxn()Z
.end method

.method public abstract setCxnSpLocks(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectorLocking;)V
.end method

.method public abstract setEndCxn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setStCxn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnection;)V
.end method

.method public abstract unsetCxnSpLocks()V
.end method

.method public abstract unsetEndCxn()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetStCxn()V
.end method
