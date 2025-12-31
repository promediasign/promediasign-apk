.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cticonset2648type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract getCfvoArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract getCfvoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;
.end method

.method public abstract getPercent()Z
.end method

.method public abstract getReverse()Z
.end method

.method public abstract getShowValue()Z
.end method

.method public abstract insertNewCfvo(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.end method

.method public abstract isSetIconSet()Z
.end method

.method public abstract isSetPercent()Z
.end method

.method public abstract isSetReverse()Z
.end method

.method public abstract isSetShowValue()Z
.end method

.method public abstract removeCfvo(I)V
.end method

.method public abstract setCfvoArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V
.end method

.method public abstract setCfvoArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V
.end method

.method public abstract setIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;)V
.end method

.method public abstract setPercent(Z)V
.end method

.method public abstract setReverse(Z)V
.end method

.method public abstract setShowValue(Z)V
.end method

.method public abstract sizeOfCfvoArray()I
.end method

.method public abstract unsetIconSet()V
.end method

.method public abstract unsetPercent()V
.end method

.method public abstract unsetReverse()V
.end method

.method public abstract unsetShowValue()V
.end method

.method public abstract xgetIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;
.end method

.method public abstract xgetPercent()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetReverse()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowValue()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;)V
.end method

.method public abstract xsetPercent(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetReverse(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowValue(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
