.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttextfield187etype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract getT()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isSetPPr()Z
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
.end method

.method public abstract setT(Ljava/lang/String;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract unsetPPr()V
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGuid;
.end method

.method public abstract xgetT()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGuid;)V
.end method

.method public abstract xsetT(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlString;)V
.end method
