.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cthyperlink0c85type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getDisplay()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getTooltip()Ljava/lang/String;
.end method

.method public abstract isSetDisplay()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLocation()Z
.end method

.method public abstract isSetTooltip()Z
.end method

.method public abstract setDisplay(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setLocation(Ljava/lang/String;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setTooltip(Ljava/lang/String;)V
.end method

.method public abstract unsetDisplay()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLocation()V
.end method

.method public abstract unsetTooltip()V
.end method

.method public abstract xgetDisplay()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetTooltip()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xsetDisplay(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetLocation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetTooltip(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method
