.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctsst44f3type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewSi()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract getCount()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getSiArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract getSiArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract getSiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUniqueCount()J
.end method

.method public abstract insertNewSi(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetUniqueCount()Z
.end method

.method public abstract removeSi(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setSiArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V
.end method

.method public abstract setSiArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V
.end method

.method public abstract setUniqueCount(J)V
.end method

.method public abstract sizeOfSiArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetUniqueCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUniqueCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUniqueCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
