.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctexternalbookc89dtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;
.end method

.method public abstract addNewSheetDataSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetDataSet;
.end method

.method public abstract addNewSheetNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;
.end method

.method public abstract getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSheetDataSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetDataSet;
.end method

.method public abstract getSheetNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;
.end method

.method public abstract isSetDefinedNames()Z
.end method

.method public abstract isSetSheetDataSet()Z
.end method

.method public abstract isSetSheetNames()Z
.end method

.method public abstract setDefinedNames(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setSheetDataSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetDataSet;)V
.end method

.method public abstract setSheetNames(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;)V
.end method

.method public abstract unsetDefinedNames()V
.end method

.method public abstract unsetSheetDataSet()V
.end method

.method public abstract unsetSheetNames()V
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method
