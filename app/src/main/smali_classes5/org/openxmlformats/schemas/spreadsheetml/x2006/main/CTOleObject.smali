.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctoleobjectd866type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getAutoLoad()Z
.end method

.method public abstract getDvAspect()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLink()Ljava/lang/String;
.end method

.method public abstract getOleUpdate()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate$Enum;
.end method

.method public abstract getProgId()Ljava/lang/String;
.end method

.method public abstract getShapeId()J
.end method

.method public abstract isSetAutoLoad()Z
.end method

.method public abstract isSetDvAspect()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLink()Z
.end method

.method public abstract isSetOleUpdate()Z
.end method

.method public abstract isSetProgId()Z
.end method

.method public abstract setAutoLoad(Z)V
.end method

.method public abstract setDvAspect(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setLink(Ljava/lang/String;)V
.end method

.method public abstract setOleUpdate(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate$Enum;)V
.end method

.method public abstract setProgId(Ljava/lang/String;)V
.end method

.method public abstract setShapeId(J)V
.end method

.method public abstract unsetAutoLoad()V
.end method

.method public abstract unsetDvAspect()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLink()V
.end method

.method public abstract unsetOleUpdate()V
.end method

.method public abstract unsetProgId()V
.end method

.method public abstract xgetAutoLoad()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDvAspect()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetOleUpdate()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;
.end method

.method public abstract xgetProgId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShapeId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAutoLoad(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDvAspect(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDvAspect;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetOleUpdate(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOleUpdate;)V
.end method

.method public abstract xsetProgId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShapeId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
