.class public Lorg/jdom/Attribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CDATA_TYPE:I = 0x1

.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Attribute.java,v $ $Revision: 1.56 $ $Date: 2007/11/10 05:28:58 $ $Name:  $"

.field public static final ENTITIES_TYPE:I = 0x6

.field public static final ENTITY_TYPE:I = 0x5

.field public static final ENUMERATED_TYPE:I = 0xa

.field public static final IDREFS_TYPE:I = 0x4

.field public static final IDREF_TYPE:I = 0x3

.field public static final ID_TYPE:I = 0x2

.field public static final NMTOKENS_TYPE:I = 0x8

.field public static final NMTOKEN_TYPE:I = 0x7

.field public static final NOTATION_TYPE:I = 0x9

.field public static final UNDECLARED_TYPE:I


# instance fields
.field protected name:Ljava/lang/String;

.field protected transient namespace:Lorg/jdom/Namespace;

.field protected parent:Lorg/jdom/Element;

.field protected type:I

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/Attribute;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/Attribute;->type:I

    invoke-virtual {p0, p1}, Lorg/jdom/Attribute;->setName(Ljava/lang/String;)Lorg/jdom/Attribute;

    invoke-virtual {p0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    invoke-virtual {p0, p3}, Lorg/jdom/Attribute;->setAttributeType(I)Lorg/jdom/Attribute;

    invoke-virtual {p0, p4}, Lorg/jdom/Attribute;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Attribute;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    iput-object v0, v1, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    return-object v1
.end method

.method public detach()Lorg/jdom/Attribute;
    .locals 3

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jdom/Element;->removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAttributeType()I
    .locals 1

    iget v0, p0, Lorg/jdom/Attribute;->type:I

    return v0
.end method

.method public getBooleanValue()Z
    .locals 3

    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "boolean"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jdom/Content;->getDocument()Lorg/jdom/Document;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_0
    const-string v1, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_1
    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "double"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getFloatValue()F
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "float"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getIntValue()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "int"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getLongValue()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "long"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom/Namespace;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom/Element;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAttributeType(I)Lorg/jdom/Attribute;
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/jdom/Attribute;->type:I

    return-object p0

    :cond_0
    new-instance v0, Lorg/jdom/IllegalDataException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attribute"

    const-string v2, "Illegal attribute type"

    invoke-direct {v0, p1, v1, v2}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    :cond_0
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-eq p1, v0, :cond_2

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/jdom/IllegalNameException;

    const-string v0, "attribute namespace"

    const-string v2, "An attribute namespace without a prefix can only be the NO_NAMESPACE namespace"

    invoke-direct {p1, v1, v0, v2}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object p0
.end method

.method public setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;
    .locals 0

    iput-object p1, p0, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[Attribute: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, "=\""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "\"]"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
