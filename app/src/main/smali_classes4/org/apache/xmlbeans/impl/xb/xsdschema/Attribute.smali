.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Factory;,
        Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$Attribute:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.Attribute"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$Attribute:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "attribute83a9type"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
.end method

.method public abstract getDefault()Ljava/lang/String;
.end method

.method public abstract getFixed()Ljava/lang/String;
.end method

.method public abstract getForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRef()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
.end method

.method public abstract getType()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getUse()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;
.end method

.method public abstract isSetDefault()Z
.end method

.method public abstract isSetFixed()Z
.end method

.method public abstract isSetForm()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetRef()Z
.end method

.method public abstract isSetSimpleType()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetUse()Z
.end method

.method public abstract setDefault(Ljava/lang/String;)V
.end method

.method public abstract setFixed(Ljava/lang/String;)V
.end method

.method public abstract setForm(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setRef(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract setSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;)V
.end method

.method public abstract setType(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract setUse(Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;)V
.end method

.method public abstract unsetDefault()V
.end method

.method public abstract unsetFixed()V
.end method

.method public abstract unsetForm()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetRef()V
.end method

.method public abstract unsetSimpleType()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetUse()V
.end method

.method public abstract xgetDefault()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFixed()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlNCName;
.end method

.method public abstract xgetRef()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xgetUse()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;
.end method

.method public abstract xsetDefault(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFixed(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetForm(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlNCName;)V
.end method

.method public abstract xsetRef(Lorg/apache/xmlbeans/XmlQName;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlQName;)V
.end method

.method public abstract xsetUse(Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;)V
.end method
