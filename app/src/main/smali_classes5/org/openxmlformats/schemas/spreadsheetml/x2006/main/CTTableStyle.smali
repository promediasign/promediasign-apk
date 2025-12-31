.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttablestylea24ctype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewTableStyleElement()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
.end method

.method public abstract getCount()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPivot()Z
.end method

.method public abstract getTable()Z
.end method

.method public abstract getTableStyleElementArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
.end method

.method public abstract getTableStyleElementArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
.end method

.method public abstract getTableStyleElementList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTableStyleElement(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetPivot()Z
.end method

.method public abstract isSetTable()Z
.end method

.method public abstract removeTableStyleElement(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPivot(Z)V
.end method

.method public abstract setTable(Z)V
.end method

.method public abstract setTableStyleElementArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)V
.end method

.method public abstract setTableStyleElementArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;)V
.end method

.method public abstract sizeOfTableStyleElementArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetPivot()V
.end method

.method public abstract unsetTable()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPivot()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTable()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPivot(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTable(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
