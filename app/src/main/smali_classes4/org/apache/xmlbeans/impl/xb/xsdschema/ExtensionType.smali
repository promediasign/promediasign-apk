.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$ExtensionType:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.ExtensionType"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$ExtensionType:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "extensiontypeed4ctype"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 22
    .line 23
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewAll()Lorg/apache/xmlbeans/impl/xb/xsdschema/All;
.end method

.method public abstract addNewAnyAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
.end method

.method public abstract addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract addNewAttributeGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract addNewChoice()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract addNewGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;
.end method

.method public abstract addNewSequence()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract getAll()Lorg/apache/xmlbeans/impl/xb/xsdschema/All;
.end method

.method public abstract getAnyAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
.end method

.method public abstract getAttributeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract getAttributeGroupArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract getBase()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getChoice()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract getGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;
.end method

.method public abstract getSequence()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
.end method

.method public abstract insertNewAttribute(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.end method

.method public abstract insertNewAttributeGroup(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
.end method

.method public abstract isSetAll()Z
.end method

.method public abstract isSetAnyAttribute()Z
.end method

.method public abstract isSetChoice()Z
.end method

.method public abstract isSetGroup()Z
.end method

.method public abstract isSetSequence()Z
.end method

.method public abstract removeAttribute(I)V
.end method

.method public abstract removeAttributeGroup(I)V
.end method

.method public abstract setAll(Lorg/apache/xmlbeans/impl/xb/xsdschema/All;)V
.end method

.method public abstract setAnyAttribute(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;)V
.end method

.method public abstract setAttributeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;)V
.end method

.method public abstract setAttributeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;)V
.end method

.method public abstract setAttributeGroupArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;)V
.end method

.method public abstract setAttributeGroupArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;)V
.end method

.method public abstract setBase(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract setChoice(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;)V
.end method

.method public abstract setGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;)V
.end method

.method public abstract setSequence(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;)V
.end method

.method public abstract sizeOfAttributeArray()I
.end method

.method public abstract sizeOfAttributeGroupArray()I
.end method

.method public abstract unsetAll()V
.end method

.method public abstract unsetAnyAttribute()V
.end method

.method public abstract unsetChoice()V
.end method

.method public abstract unsetGroup()V
.end method

.method public abstract unsetSequence()V
.end method

.method public abstract xgetBase()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xsetBase(Lorg/apache/xmlbeans/XmlQName;)V
.end method
