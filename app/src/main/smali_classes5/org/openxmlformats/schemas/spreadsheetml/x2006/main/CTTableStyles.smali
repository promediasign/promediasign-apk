.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttablestyles872ftype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewTableStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract getCount()J
.end method

.method public abstract getDefaultPivotStyle()Ljava/lang/String;
.end method

.method public abstract getDefaultTableStyle()Ljava/lang/String;
.end method

.method public abstract getTableStyleArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract getTableStyleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract getTableStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTableStyle(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetDefaultPivotStyle()Z
.end method

.method public abstract isSetDefaultTableStyle()Z
.end method

.method public abstract removeTableStyle(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setDefaultPivotStyle(Ljava/lang/String;)V
.end method

.method public abstract setDefaultTableStyle(Ljava/lang/String;)V
.end method

.method public abstract setTableStyleArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;)V
.end method

.method public abstract setTableStyleArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;)V
.end method

.method public abstract sizeOfTableStyleArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetDefaultPivotStyle()V
.end method

.method public abstract unsetDefaultTableStyle()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDefaultPivotStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDefaultTableStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDefaultPivotStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDefaultTableStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method
