.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpagefields1db1type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewPageField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;
.end method

.method public abstract getCount()J
.end method

.method public abstract getPageFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;
.end method

.method public abstract getPageFieldArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;
.end method

.method public abstract getPageFieldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPageField(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removePageField(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setPageFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;)V
.end method

.method public abstract setPageFieldArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;)V
.end method

.method public abstract sizeOfPageFieldArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
