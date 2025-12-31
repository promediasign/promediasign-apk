.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpivotcacherecords5be1type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheRecords;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;
.end method

.method public abstract getCount()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;
.end method

.method public abstract getRArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;
.end method

.method public abstract getRList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewR(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeR(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setRArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;)V
.end method

.method public abstract setRArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRecord;)V
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
