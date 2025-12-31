.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcolfields9ab8type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
.end method

.method public abstract getCount()J
.end method

.method public abstract getFieldArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
.end method

.method public abstract getFieldArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
.end method

.method public abstract getFieldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewField(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeField(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;)V
.end method

.method public abstract setFieldArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;)V
.end method

.method public abstract sizeOfFieldArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
