.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctlocationc23etype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getColPageCount()J
.end method

.method public abstract getFirstDataCol()J
.end method

.method public abstract getFirstDataRow()J
.end method

.method public abstract getFirstHeaderRow()J
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getRowPageCount()J
.end method

.method public abstract isSetColPageCount()Z
.end method

.method public abstract isSetRowPageCount()Z
.end method

.method public abstract setColPageCount(J)V
.end method

.method public abstract setFirstDataCol(J)V
.end method

.method public abstract setFirstDataRow(J)V
.end method

.method public abstract setFirstHeaderRow(J)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setRowPageCount(J)V
.end method

.method public abstract unsetColPageCount()V
.end method

.method public abstract unsetRowPageCount()V
.end method

.method public abstract xgetColPageCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFirstDataCol()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFirstDataRow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFirstHeaderRow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetRowPageCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetColPageCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFirstDataCol(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFirstDataRow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFirstHeaderRow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetRowPageCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
