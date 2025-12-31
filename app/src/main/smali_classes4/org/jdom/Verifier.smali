.class public final Lorg/jdom/Verifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Verifier.java,v $ $Revision: 1.57 $ $Date: 2009/07/23 05:54:23 $ $Name:  $"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string p0, "Attribute names cannot contain colons"

    return-object p0

    :cond_1
    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "An Attribute name may not be \"xmlns\"; use the Namespace class to manage namespaces"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkCDATASection(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "]]>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const-string p0, "CDATA cannot internally contain a CDATA ending delimiter (]]>)"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkCharacterData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "A null is not a legal XML value"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    invoke-static {v3}, Lorg/jdom/Verifier;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom/Verifier;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "Illegal Surrogate Pair"

    return-object p0

    :cond_1
    invoke-static {v3, v2}, Lorg/jdom/Verifier;->decodeSurrogatePair(CC)I

    move-result v2

    goto :goto_1

    :cond_2
    const-string p0, "Surrogate Pair Truncated"

    return-object p0

    :cond_3
    :goto_1
    invoke-static {v2}, Lorg/jdom/Verifier;->isXMLCharacter(I)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "0x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " is not a legal XML character"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkCommentData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string p0, "Comments cannot contain double hyphens (--)"

    return-object p0

    :cond_1
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Comment data cannot end with a hyphen."

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkElementName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const-string p0, "Element names cannot contain colons"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Attribute;Lorg/jdom/Element;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/jdom/Attribute;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/jdom/Attribute;

    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Attribute;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/jdom/Element;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/jdom/Element;

    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lorg/jdom/Namespace;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/jdom/Namespace;

    invoke-static {p0, v1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, " with an additional namespace declared by the element"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Attribute;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {v0, v1}, Lorg/jdom/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, " with an attribute namespace prefix on the element"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, " with the element namespace prefix"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "The namespace prefix \""

    const-string p1, "\" collides"

    .line 5
    invoke-static {p0, v0, p1}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom/Verifier;->isXMLDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "Namespace prefixes cannot begin with a number"

    return-object p0

    :cond_1
    const/16 v3, 0x24

    if-ne v2, v3, :cond_2

    const-string p0, "Namespace prefixes cannot begin with a dollar sign ($)"

    return-object p0

    :cond_2
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    const-string p0, "Namespace prefixes cannot begin with a hyphen (-)"

    return-object p0

    :cond_3
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_4

    const-string p0, "Namespace prefixes cannot begin with a period (.)"

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "Namespace prefixes cannot begin with \"xml\" in any combination of case"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/jdom/Verifier;->isXMLNameCharacter(C)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "Namespace prefixes cannot contain the character \""

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_8

    const-string p0, "Namespace prefixes cannot contain colons"

    return-object p0

    :cond_8
    :goto_1
    return-object v0
.end method

.method public static checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Namespace URIs cannot begin with a number"

    return-object p0

    :cond_1
    const/16 v1, 0x24

    if-ne p0, v1, :cond_2

    const-string p0, "Namespace URIs cannot begin with a dollar sign ($)"

    return-object p0

    :cond_2
    const/16 v1, 0x2d

    if-ne p0, v1, :cond_3

    const-string p0, "Namespace URIs cannot begin with a hyphen (-)"

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "?>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const-string p0, "Processing instructions cannot contain the string \"?>\""

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string p0, "Processing instruction targets cannot contain colons"

    return-object p0

    :cond_1
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Processing instructions cannot have a target of \"xml\" in any combination of case. (Note that the \"<?xml ... ?>\" declaration at the beginning of a document is not a processing instruction and should not be added as one; it is written automatically during output, e.g. by XMLOutputter.)"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkPublicID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom/Verifier;->isXMLPublicIDCharacter(C)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, " is not a legal character in public IDs"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const-string p0, "System literals cannot simultaneously contain both single and double quotes."

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static checkURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Percent signs in URIs must be followed by exactly two hexadecimal digits."

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_5

    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Lorg/jdom/Verifier;->isURICharacter(C)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuffer;

    .line 33
    .line 34
    const-string v0, "0x"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, p0}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/16 v0, 0x9

    .line 44
    .line 45
    if-gt v3, v0, :cond_1

    .line 46
    .line 47
    new-instance p0, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    const-string v0, "0x0"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3, p0}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 59
    .line 60
    const-string v1, "URIs cannot contain "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_2
    const/16 v4, 0x25

    .line 74
    .line 75
    if-ne v3, v4, :cond_4

    .line 76
    .line 77
    add-int/lit8 v3, v2, 0x1

    .line 78
    .line 79
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    add-int/lit8 v4, v2, 0x2

    .line 84
    .line 85
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-static {v3}, Lorg/jdom/Verifier;->isHexDigit(C)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    invoke-static {v4}, Lorg/jdom/Verifier;->isHexDigit(C)Z

    .line 96
    .line 97
    .line 98
    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    :catch_0
    :cond_3
    return-object v0

    .line 102
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static checkXMLName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jdom/Verifier;->isXMLNameStartCharacter(C)Z

    move-result v1

    const-string v2, "\""

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v1, "XML names cannot begin with the character \""

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/jdom/Verifier;->isXMLNameCharacter(C)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "XML names cannot contain the character \""

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_2
    const-string p0, "XML names cannot be null or empty"

    return-object p0
.end method

.method public static decodeSurrogatePair(CC)I
    .locals 3

    const v0, 0xd800

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    invoke-static {p0, v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->b(IIII)I

    move-result p0

    const v0, 0xdc00

    sub-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static isHexDigit(C)Z
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isHighSurrogate(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLowSurrogate(C)Z
    .locals 1

    const v0, 0xdc00

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isURICharacter(C)Z
    .locals 2

    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_5

    return v1

    :cond_5
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_7

    return v1

    :cond_7
    const/16 v0, 0x40

    if-ne p0, v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x26

    if-ne p0, v0, :cond_9

    return v1

    :cond_9
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_b

    return v1

    :cond_b
    const/16 v0, 0x24

    if-ne p0, v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_d

    return v1

    :cond_d
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e

    return v1

    :cond_e
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_f

    return v1

    :cond_f
    const/16 v0, 0x21

    if-ne p0, v0, :cond_10

    return v1

    :cond_10
    const/16 v0, 0x7e

    if-ne p0, v0, :cond_11

    return v1

    :cond_11
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    return v1

    :cond_12
    const/16 v0, 0x27

    if-ne p0, v0, :cond_13

    return v1

    :cond_13
    const/16 v0, 0x28

    if-ne p0, v0, :cond_14

    return v1

    :cond_14
    const/16 v0, 0x29

    if-ne p0, v0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isXMLCharacter(I)Z
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x9

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x20

    const/4 v2, 0x0

    if-ge p0, v0, :cond_3

    return v2

    :cond_3
    const v0, 0xd7ff

    if-gt p0, v0, :cond_4

    return v1

    :cond_4
    const v0, 0xe000

    if-ge p0, v0, :cond_5

    return v2

    :cond_5
    const v0, 0xfffd

    if-gt p0, v0, :cond_6

    return v1

    :cond_6
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_7

    return v2

    :cond_7
    const v0, 0x10ffff

    if-gt p0, v0, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method public static isXMLCombiningChar(C)Z
    .locals 3

    const/16 v0, 0x300

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x345

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x360

    if-ge p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x361

    if-gt p0, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x483

    if-ge p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x486

    if-gt p0, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0x591

    if-ge p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x5a1

    if-gt p0, v0, :cond_7

    return v2

    :cond_7
    const/16 v0, 0x5a3

    if-ge p0, v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x5b9

    if-gt p0, v0, :cond_9

    return v2

    :cond_9
    const/16 v0, 0x5bb

    if-ge p0, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x5bd

    if-gt p0, v0, :cond_b

    return v2

    :cond_b
    const/16 v0, 0x5bf

    if-ne p0, v0, :cond_c

    return v2

    :cond_c
    const/16 v0, 0x5c1

    if-ge p0, v0, :cond_d

    return v1

    :cond_d
    const/16 v0, 0x5c2

    if-gt p0, v0, :cond_e

    return v2

    :cond_e
    const/16 v0, 0x5c4

    if-ne p0, v0, :cond_f

    return v2

    :cond_f
    const/16 v0, 0x64b

    if-ge p0, v0, :cond_10

    return v1

    :cond_10
    const/16 v0, 0x652

    if-gt p0, v0, :cond_11

    return v2

    :cond_11
    const/16 v0, 0x670

    if-ne p0, v0, :cond_12

    return v2

    :cond_12
    const/16 v0, 0x6d6

    if-ge p0, v0, :cond_13

    return v1

    :cond_13
    const/16 v0, 0x6dc

    if-gt p0, v0, :cond_14

    return v2

    :cond_14
    const/16 v0, 0x6dd

    if-ge p0, v0, :cond_15

    return v1

    :cond_15
    const/16 v0, 0x6df

    if-gt p0, v0, :cond_16

    return v2

    :cond_16
    const/16 v0, 0x6e0

    if-ge p0, v0, :cond_17

    return v1

    :cond_17
    const/16 v0, 0x6e4

    if-gt p0, v0, :cond_18

    return v2

    :cond_18
    const/16 v0, 0x6e7

    if-ge p0, v0, :cond_19

    return v1

    :cond_19
    const/16 v0, 0x6e8

    if-gt p0, v0, :cond_1a

    return v2

    :cond_1a
    const/16 v0, 0x6ea

    if-ge p0, v0, :cond_1b

    return v1

    :cond_1b
    const/16 v0, 0x6ed

    if-gt p0, v0, :cond_1c

    return v2

    :cond_1c
    const/16 v0, 0x901

    if-ge p0, v0, :cond_1d

    return v1

    :cond_1d
    const/16 v0, 0x903

    if-gt p0, v0, :cond_1e

    return v2

    :cond_1e
    const/16 v0, 0x93c

    if-ne p0, v0, :cond_1f

    return v2

    :cond_1f
    const/16 v0, 0x93e

    if-ge p0, v0, :cond_20

    return v1

    :cond_20
    const/16 v0, 0x94c

    if-gt p0, v0, :cond_21

    return v2

    :cond_21
    const/16 v0, 0x94d

    if-ne p0, v0, :cond_22

    return v2

    :cond_22
    const/16 v0, 0x951

    if-ge p0, v0, :cond_23

    return v1

    :cond_23
    const/16 v0, 0x954

    if-gt p0, v0, :cond_24

    return v2

    :cond_24
    const/16 v0, 0x962

    if-ge p0, v0, :cond_25

    return v1

    :cond_25
    const/16 v0, 0x963

    if-gt p0, v0, :cond_26

    return v2

    :cond_26
    const/16 v0, 0x981

    if-ge p0, v0, :cond_27

    return v1

    :cond_27
    const/16 v0, 0x983

    if-gt p0, v0, :cond_28

    return v2

    :cond_28
    const/16 v0, 0x9bc

    if-ne p0, v0, :cond_29

    return v2

    :cond_29
    const/16 v0, 0x9be

    if-ne p0, v0, :cond_2a

    return v2

    :cond_2a
    const/16 v0, 0x9bf

    if-ne p0, v0, :cond_2b

    return v2

    :cond_2b
    const/16 v0, 0x9c0

    if-ge p0, v0, :cond_2c

    return v1

    :cond_2c
    const/16 v0, 0x9c4

    if-gt p0, v0, :cond_2d

    return v2

    :cond_2d
    const/16 v0, 0x9c7

    if-ge p0, v0, :cond_2e

    return v1

    :cond_2e
    const/16 v0, 0x9c8

    if-gt p0, v0, :cond_2f

    return v2

    :cond_2f
    const/16 v0, 0x9cb

    if-ge p0, v0, :cond_30

    return v1

    :cond_30
    const/16 v0, 0x9cd

    if-gt p0, v0, :cond_31

    return v2

    :cond_31
    const/16 v0, 0x9d7

    if-ne p0, v0, :cond_32

    return v2

    :cond_32
    const/16 v0, 0x9e2

    if-ge p0, v0, :cond_33

    return v1

    :cond_33
    const/16 v0, 0x9e3

    if-gt p0, v0, :cond_34

    return v2

    :cond_34
    const/16 v0, 0xa02

    if-ne p0, v0, :cond_35

    return v2

    :cond_35
    const/16 v0, 0xa3c

    if-ne p0, v0, :cond_36

    return v2

    :cond_36
    const/16 v0, 0xa3e

    if-ne p0, v0, :cond_37

    return v2

    :cond_37
    const/16 v0, 0xa3f

    if-ne p0, v0, :cond_38

    return v2

    :cond_38
    const/16 v0, 0xa40

    if-ge p0, v0, :cond_39

    return v1

    :cond_39
    const/16 v0, 0xa42

    if-gt p0, v0, :cond_3a

    return v2

    :cond_3a
    const/16 v0, 0xa47

    if-ge p0, v0, :cond_3b

    return v1

    :cond_3b
    const/16 v0, 0xa48

    if-gt p0, v0, :cond_3c

    return v2

    :cond_3c
    const/16 v0, 0xa4b

    if-ge p0, v0, :cond_3d

    return v1

    :cond_3d
    const/16 v0, 0xa4d

    if-gt p0, v0, :cond_3e

    return v2

    :cond_3e
    const/16 v0, 0xa70

    if-ge p0, v0, :cond_3f

    return v1

    :cond_3f
    const/16 v0, 0xa71

    if-gt p0, v0, :cond_40

    return v2

    :cond_40
    const/16 v0, 0xa81

    if-ge p0, v0, :cond_41

    return v1

    :cond_41
    const/16 v0, 0xa83

    if-gt p0, v0, :cond_42

    return v2

    :cond_42
    const/16 v0, 0xabc

    if-ne p0, v0, :cond_43

    return v2

    :cond_43
    const/16 v0, 0xabe

    if-ge p0, v0, :cond_44

    return v1

    :cond_44
    const/16 v0, 0xac5

    if-gt p0, v0, :cond_45

    return v2

    :cond_45
    const/16 v0, 0xac7

    if-ge p0, v0, :cond_46

    return v1

    :cond_46
    const/16 v0, 0xac9

    if-gt p0, v0, :cond_47

    return v2

    :cond_47
    const/16 v0, 0xacb

    if-ge p0, v0, :cond_48

    return v1

    :cond_48
    const/16 v0, 0xacd

    if-gt p0, v0, :cond_49

    return v2

    :cond_49
    const/16 v0, 0xb01

    if-ge p0, v0, :cond_4a

    return v1

    :cond_4a
    const/16 v0, 0xb03

    if-gt p0, v0, :cond_4b

    return v2

    :cond_4b
    const/16 v0, 0xb3c

    if-ne p0, v0, :cond_4c

    return v2

    :cond_4c
    const/16 v0, 0xb3e

    if-ge p0, v0, :cond_4d

    return v1

    :cond_4d
    const/16 v0, 0xb43

    if-gt p0, v0, :cond_4e

    return v2

    :cond_4e
    const/16 v0, 0xb47

    if-ge p0, v0, :cond_4f

    return v1

    :cond_4f
    const/16 v0, 0xb48

    if-gt p0, v0, :cond_50

    return v2

    :cond_50
    const/16 v0, 0xb4b

    if-ge p0, v0, :cond_51

    return v1

    :cond_51
    const/16 v0, 0xb4d

    if-gt p0, v0, :cond_52

    return v2

    :cond_52
    const/16 v0, 0xb56

    if-ge p0, v0, :cond_53

    return v1

    :cond_53
    const/16 v0, 0xb57

    if-gt p0, v0, :cond_54

    return v2

    :cond_54
    const/16 v0, 0xb82

    if-ge p0, v0, :cond_55

    return v1

    :cond_55
    const/16 v0, 0xb83

    if-gt p0, v0, :cond_56

    return v2

    :cond_56
    const/16 v0, 0xbbe

    if-ge p0, v0, :cond_57

    return v1

    :cond_57
    const/16 v0, 0xbc2

    if-gt p0, v0, :cond_58

    return v2

    :cond_58
    const/16 v0, 0xbc6

    if-ge p0, v0, :cond_59

    return v1

    :cond_59
    const/16 v0, 0xbc8

    if-gt p0, v0, :cond_5a

    return v2

    :cond_5a
    const/16 v0, 0xbca

    if-ge p0, v0, :cond_5b

    return v1

    :cond_5b
    const/16 v0, 0xbcd

    if-gt p0, v0, :cond_5c

    return v2

    :cond_5c
    const/16 v0, 0xbd7

    if-ne p0, v0, :cond_5d

    return v2

    :cond_5d
    const/16 v0, 0xc01

    if-ge p0, v0, :cond_5e

    return v1

    :cond_5e
    const/16 v0, 0xc03

    if-gt p0, v0, :cond_5f

    return v2

    :cond_5f
    const/16 v0, 0xc3e

    if-ge p0, v0, :cond_60

    return v1

    :cond_60
    const/16 v0, 0xc44

    if-gt p0, v0, :cond_61

    return v2

    :cond_61
    const/16 v0, 0xc46

    if-ge p0, v0, :cond_62

    return v1

    :cond_62
    const/16 v0, 0xc48

    if-gt p0, v0, :cond_63

    return v2

    :cond_63
    const/16 v0, 0xc4a

    if-ge p0, v0, :cond_64

    return v1

    :cond_64
    const/16 v0, 0xc4d

    if-gt p0, v0, :cond_65

    return v2

    :cond_65
    const/16 v0, 0xc55

    if-ge p0, v0, :cond_66

    return v1

    :cond_66
    const/16 v0, 0xc56

    if-gt p0, v0, :cond_67

    return v2

    :cond_67
    const/16 v0, 0xc82

    if-ge p0, v0, :cond_68

    return v1

    :cond_68
    const/16 v0, 0xc83

    if-gt p0, v0, :cond_69

    return v2

    :cond_69
    const/16 v0, 0xcbe

    if-ge p0, v0, :cond_6a

    return v1

    :cond_6a
    const/16 v0, 0xcc4

    if-gt p0, v0, :cond_6b

    return v2

    :cond_6b
    const/16 v0, 0xcc6

    if-ge p0, v0, :cond_6c

    return v1

    :cond_6c
    const/16 v0, 0xcc8

    if-gt p0, v0, :cond_6d

    return v2

    :cond_6d
    const/16 v0, 0xcca

    if-ge p0, v0, :cond_6e

    return v1

    :cond_6e
    const/16 v0, 0xccd

    if-gt p0, v0, :cond_6f

    return v2

    :cond_6f
    const/16 v0, 0xcd5

    if-ge p0, v0, :cond_70

    return v1

    :cond_70
    const/16 v0, 0xcd6

    if-gt p0, v0, :cond_71

    return v2

    :cond_71
    const/16 v0, 0xd02

    if-ge p0, v0, :cond_72

    return v1

    :cond_72
    const/16 v0, 0xd03

    if-gt p0, v0, :cond_73

    return v2

    :cond_73
    const/16 v0, 0xd3e

    if-ge p0, v0, :cond_74

    return v1

    :cond_74
    const/16 v0, 0xd43

    if-gt p0, v0, :cond_75

    return v2

    :cond_75
    const/16 v0, 0xd46

    if-ge p0, v0, :cond_76

    return v1

    :cond_76
    const/16 v0, 0xd48

    if-gt p0, v0, :cond_77

    return v2

    :cond_77
    const/16 v0, 0xd4a

    if-ge p0, v0, :cond_78

    return v1

    :cond_78
    const/16 v0, 0xd4d

    if-gt p0, v0, :cond_79

    return v2

    :cond_79
    const/16 v0, 0xd57

    if-ne p0, v0, :cond_7a

    return v2

    :cond_7a
    const/16 v0, 0xe31

    if-ne p0, v0, :cond_7b

    return v2

    :cond_7b
    const/16 v0, 0xe34

    if-ge p0, v0, :cond_7c

    return v1

    :cond_7c
    const/16 v0, 0xe3a

    if-gt p0, v0, :cond_7d

    return v2

    :cond_7d
    const/16 v0, 0xe47

    if-ge p0, v0, :cond_7e

    return v1

    :cond_7e
    const/16 v0, 0xe4e

    if-gt p0, v0, :cond_7f

    return v2

    :cond_7f
    const/16 v0, 0xeb1

    if-ne p0, v0, :cond_80

    return v2

    :cond_80
    const/16 v0, 0xeb4

    if-ge p0, v0, :cond_81

    return v1

    :cond_81
    const/16 v0, 0xeb9

    if-gt p0, v0, :cond_82

    return v2

    :cond_82
    const/16 v0, 0xebb

    if-ge p0, v0, :cond_83

    return v1

    :cond_83
    const/16 v0, 0xebc

    if-gt p0, v0, :cond_84

    return v2

    :cond_84
    const/16 v0, 0xec8

    if-ge p0, v0, :cond_85

    return v1

    :cond_85
    const/16 v0, 0xecd

    if-gt p0, v0, :cond_86

    return v2

    :cond_86
    const/16 v0, 0xf18

    if-ge p0, v0, :cond_87

    return v1

    :cond_87
    const/16 v0, 0xf19

    if-gt p0, v0, :cond_88

    return v2

    :cond_88
    const/16 v0, 0xf35

    if-ne p0, v0, :cond_89

    return v2

    :cond_89
    const/16 v0, 0xf37

    if-ne p0, v0, :cond_8a

    return v2

    :cond_8a
    const/16 v0, 0xf39

    if-ne p0, v0, :cond_8b

    return v2

    :cond_8b
    const/16 v0, 0xf3e

    if-ne p0, v0, :cond_8c

    return v2

    :cond_8c
    const/16 v0, 0xf3f

    if-ne p0, v0, :cond_8d

    return v2

    :cond_8d
    const/16 v0, 0xf71

    if-ge p0, v0, :cond_8e

    return v1

    :cond_8e
    const/16 v0, 0xf84

    if-gt p0, v0, :cond_8f

    return v2

    :cond_8f
    const/16 v0, 0xf86

    if-ge p0, v0, :cond_90

    return v1

    :cond_90
    const/16 v0, 0xf8b

    if-gt p0, v0, :cond_91

    return v2

    :cond_91
    const/16 v0, 0xf90

    if-ge p0, v0, :cond_92

    return v1

    :cond_92
    const/16 v0, 0xf95

    if-gt p0, v0, :cond_93

    return v2

    :cond_93
    const/16 v0, 0xf97

    if-ne p0, v0, :cond_94

    return v2

    :cond_94
    const/16 v0, 0xf99

    if-ge p0, v0, :cond_95

    return v1

    :cond_95
    const/16 v0, 0xfad

    if-gt p0, v0, :cond_96

    return v2

    :cond_96
    const/16 v0, 0xfb1

    if-ge p0, v0, :cond_97

    return v1

    :cond_97
    const/16 v0, 0xfb7

    if-gt p0, v0, :cond_98

    return v2

    :cond_98
    const/16 v0, 0xfb9

    if-ne p0, v0, :cond_99

    return v2

    :cond_99
    const/16 v0, 0x20d0

    if-ge p0, v0, :cond_9a

    return v1

    :cond_9a
    const/16 v0, 0x20dc

    if-gt p0, v0, :cond_9b

    return v2

    :cond_9b
    const/16 v0, 0x20e1

    if-ne p0, v0, :cond_9c

    return v2

    :cond_9c
    const/16 v0, 0x302a

    if-ge p0, v0, :cond_9d

    return v1

    :cond_9d
    const/16 v0, 0x302f

    if-gt p0, v0, :cond_9e

    return v2

    :cond_9e
    const/16 v0, 0x3099

    if-ne p0, v0, :cond_9f

    return v2

    :cond_9f
    const/16 v0, 0x309a

    if-ne p0, v0, :cond_a0

    return v2

    :cond_a0
    return v1
.end method

.method public static isXMLDigit(C)Z
    .locals 3

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x39

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x660

    if-ge p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x669

    if-gt p0, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x6f0

    if-ge p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x6f9

    if-gt p0, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0x966

    if-ge p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x96f

    if-gt p0, v0, :cond_7

    return v2

    :cond_7
    const/16 v0, 0x9e6

    if-ge p0, v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x9ef

    if-gt p0, v0, :cond_9

    return v2

    :cond_9
    const/16 v0, 0xa66

    if-ge p0, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0xa6f

    if-gt p0, v0, :cond_b

    return v2

    :cond_b
    const/16 v0, 0xae6

    if-ge p0, v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0xaef

    if-gt p0, v0, :cond_d

    return v2

    :cond_d
    const/16 v0, 0xb66

    if-ge p0, v0, :cond_e

    return v1

    :cond_e
    const/16 v0, 0xb6f

    if-gt p0, v0, :cond_f

    return v2

    :cond_f
    const/16 v0, 0xbe7

    if-ge p0, v0, :cond_10

    return v1

    :cond_10
    const/16 v0, 0xbef

    if-gt p0, v0, :cond_11

    return v2

    :cond_11
    const/16 v0, 0xc66

    if-ge p0, v0, :cond_12

    return v1

    :cond_12
    const/16 v0, 0xc6f

    if-gt p0, v0, :cond_13

    return v2

    :cond_13
    const/16 v0, 0xce6

    if-ge p0, v0, :cond_14

    return v1

    :cond_14
    const/16 v0, 0xcef

    if-gt p0, v0, :cond_15

    return v2

    :cond_15
    const/16 v0, 0xd66

    if-ge p0, v0, :cond_16

    return v1

    :cond_16
    const/16 v0, 0xd6f

    if-gt p0, v0, :cond_17

    return v2

    :cond_17
    const/16 v0, 0xe50

    if-ge p0, v0, :cond_18

    return v1

    :cond_18
    const/16 v0, 0xe59

    if-gt p0, v0, :cond_19

    return v2

    :cond_19
    const/16 v0, 0xed0

    if-ge p0, v0, :cond_1a

    return v1

    :cond_1a
    const/16 v0, 0xed9

    if-gt p0, v0, :cond_1b

    return v2

    :cond_1b
    const/16 v0, 0xf20

    if-ge p0, v0, :cond_1c

    return v1

    :cond_1c
    const/16 v0, 0xf29

    if-gt p0, v0, :cond_1d

    return v2

    :cond_1d
    return v1
.end method

.method public static isXMLExtender(C)Z
    .locals 3

    const/16 v0, 0xb6

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xb7

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x2d0

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x2d1

    if-ne p0, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x387

    if-ne p0, v0, :cond_4

    return v2

    :cond_4
    const/16 v0, 0x640

    if-ne p0, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xe46

    if-ne p0, v0, :cond_6

    return v2

    :cond_6
    const/16 v0, 0xec6

    if-ne p0, v0, :cond_7

    return v2

    :cond_7
    const/16 v0, 0x3005

    if-ne p0, v0, :cond_8

    return v2

    :cond_8
    const/16 v0, 0x3031

    if-ge p0, v0, :cond_9

    return v1

    :cond_9
    const/16 v0, 0x3035

    if-gt p0, v0, :cond_a

    return v2

    :cond_a
    const/16 v0, 0x309d

    if-ge p0, v0, :cond_b

    return v1

    :cond_b
    const/16 v0, 0x309e

    if-gt p0, v0, :cond_c

    return v2

    :cond_c
    const/16 v0, 0x30fc

    if-ge p0, v0, :cond_d

    return v1

    :cond_d
    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_e

    return v2

    :cond_e
    return v1
.end method

.method public static isXMLLetter(C)Z
    .locals 3

    const/16 v0, 0x41

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x5a

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x61

    if-ge p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0xc0

    if-ge p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0xd6

    if-gt p0, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd8

    if-ge p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0xf6

    if-gt p0, v0, :cond_7

    return v2

    :cond_7
    const/16 v0, 0xf8

    if-ge p0, v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0xff

    if-gt p0, v0, :cond_9

    return v2

    :cond_9
    const/16 v0, 0x100

    if-ge p0, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x131

    if-gt p0, v0, :cond_b

    return v2

    :cond_b
    const/16 v0, 0x134

    if-ge p0, v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0x13e

    if-gt p0, v0, :cond_d

    return v2

    :cond_d
    const/16 v0, 0x141

    if-ge p0, v0, :cond_e

    return v1

    :cond_e
    const/16 v0, 0x148

    if-gt p0, v0, :cond_f

    return v2

    :cond_f
    const/16 v0, 0x14a

    if-ge p0, v0, :cond_10

    return v1

    :cond_10
    const/16 v0, 0x17e

    if-gt p0, v0, :cond_11

    return v2

    :cond_11
    const/16 v0, 0x180

    if-ge p0, v0, :cond_12

    return v1

    :cond_12
    const/16 v0, 0x1c3

    if-gt p0, v0, :cond_13

    return v2

    :cond_13
    const/16 v0, 0x1cd

    if-ge p0, v0, :cond_14

    return v1

    :cond_14
    const/16 v0, 0x1f0

    if-gt p0, v0, :cond_15

    return v2

    :cond_15
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_16

    return v1

    :cond_16
    const/16 v0, 0x1f5

    if-gt p0, v0, :cond_17

    return v2

    :cond_17
    const/16 v0, 0x1fa

    if-ge p0, v0, :cond_18

    return v1

    :cond_18
    const/16 v0, 0x217

    if-gt p0, v0, :cond_19

    return v2

    :cond_19
    const/16 v0, 0x250

    if-ge p0, v0, :cond_1a

    return v1

    :cond_1a
    const/16 v0, 0x2a8

    if-gt p0, v0, :cond_1b

    return v2

    :cond_1b
    const/16 v0, 0x2bb

    if-ge p0, v0, :cond_1c

    return v1

    :cond_1c
    const/16 v0, 0x2c1

    if-gt p0, v0, :cond_1d

    return v2

    :cond_1d
    const/16 v0, 0x386

    if-ne p0, v0, :cond_1e

    return v2

    :cond_1e
    const/16 v0, 0x388

    if-ge p0, v0, :cond_1f

    return v1

    :cond_1f
    const/16 v0, 0x38a

    if-gt p0, v0, :cond_20

    return v2

    :cond_20
    const/16 v0, 0x38c

    if-ne p0, v0, :cond_21

    return v2

    :cond_21
    const/16 v0, 0x38e

    if-ge p0, v0, :cond_22

    return v1

    :cond_22
    const/16 v0, 0x3a1

    if-gt p0, v0, :cond_23

    return v2

    :cond_23
    const/16 v0, 0x3a3

    if-ge p0, v0, :cond_24

    return v1

    :cond_24
    const/16 v0, 0x3ce

    if-gt p0, v0, :cond_25

    return v2

    :cond_25
    const/16 v0, 0x3d0

    if-ge p0, v0, :cond_26

    return v1

    :cond_26
    const/16 v0, 0x3d6

    if-gt p0, v0, :cond_27

    return v2

    :cond_27
    const/16 v0, 0x3da

    if-ne p0, v0, :cond_28

    return v2

    :cond_28
    const/16 v0, 0x3dc

    if-ne p0, v0, :cond_29

    return v2

    :cond_29
    const/16 v0, 0x3de

    if-ne p0, v0, :cond_2a

    return v2

    :cond_2a
    const/16 v0, 0x3e0

    if-ne p0, v0, :cond_2b

    return v2

    :cond_2b
    const/16 v0, 0x3e2

    if-ge p0, v0, :cond_2c

    return v1

    :cond_2c
    const/16 v0, 0x3f3

    if-gt p0, v0, :cond_2d

    return v2

    :cond_2d
    const/16 v0, 0x401

    if-ge p0, v0, :cond_2e

    return v1

    :cond_2e
    const/16 v0, 0x40c

    if-gt p0, v0, :cond_2f

    return v2

    :cond_2f
    const/16 v0, 0x40e

    if-ge p0, v0, :cond_30

    return v1

    :cond_30
    const/16 v0, 0x44f

    if-gt p0, v0, :cond_31

    return v2

    :cond_31
    const/16 v0, 0x451

    if-ge p0, v0, :cond_32

    return v1

    :cond_32
    const/16 v0, 0x45c

    if-gt p0, v0, :cond_33

    return v2

    :cond_33
    const/16 v0, 0x45e

    if-ge p0, v0, :cond_34

    return v1

    :cond_34
    const/16 v0, 0x481

    if-gt p0, v0, :cond_35

    return v2

    :cond_35
    const/16 v0, 0x490

    if-ge p0, v0, :cond_36

    return v1

    :cond_36
    const/16 v0, 0x4c4

    if-gt p0, v0, :cond_37

    return v2

    :cond_37
    const/16 v0, 0x4c7

    if-ge p0, v0, :cond_38

    return v1

    :cond_38
    const/16 v0, 0x4c8

    if-gt p0, v0, :cond_39

    return v2

    :cond_39
    const/16 v0, 0x4cb

    if-ge p0, v0, :cond_3a

    return v1

    :cond_3a
    const/16 v0, 0x4cc

    if-gt p0, v0, :cond_3b

    return v2

    :cond_3b
    const/16 v0, 0x4d0

    if-ge p0, v0, :cond_3c

    return v1

    :cond_3c
    const/16 v0, 0x4eb

    if-gt p0, v0, :cond_3d

    return v2

    :cond_3d
    const/16 v0, 0x4ee

    if-ge p0, v0, :cond_3e

    return v1

    :cond_3e
    const/16 v0, 0x4f5

    if-gt p0, v0, :cond_3f

    return v2

    :cond_3f
    const/16 v0, 0x4f8

    if-ge p0, v0, :cond_40

    return v1

    :cond_40
    const/16 v0, 0x4f9

    if-gt p0, v0, :cond_41

    return v2

    :cond_41
    const/16 v0, 0x531

    if-ge p0, v0, :cond_42

    return v1

    :cond_42
    const/16 v0, 0x556

    if-gt p0, v0, :cond_43

    return v2

    :cond_43
    const/16 v0, 0x559

    if-ne p0, v0, :cond_44

    return v2

    :cond_44
    const/16 v0, 0x561

    if-ge p0, v0, :cond_45

    return v1

    :cond_45
    const/16 v0, 0x586

    if-gt p0, v0, :cond_46

    return v2

    :cond_46
    const/16 v0, 0x5d0

    if-ge p0, v0, :cond_47

    return v1

    :cond_47
    const/16 v0, 0x5ea

    if-gt p0, v0, :cond_48

    return v2

    :cond_48
    const/16 v0, 0x5f0

    if-ge p0, v0, :cond_49

    return v1

    :cond_49
    const/16 v0, 0x5f2

    if-gt p0, v0, :cond_4a

    return v2

    :cond_4a
    const/16 v0, 0x621

    if-ge p0, v0, :cond_4b

    return v1

    :cond_4b
    const/16 v0, 0x63a

    if-gt p0, v0, :cond_4c

    return v2

    :cond_4c
    const/16 v0, 0x641

    if-ge p0, v0, :cond_4d

    return v1

    :cond_4d
    const/16 v0, 0x64a

    if-gt p0, v0, :cond_4e

    return v2

    :cond_4e
    const/16 v0, 0x671

    if-ge p0, v0, :cond_4f

    return v1

    :cond_4f
    const/16 v0, 0x6b7

    if-gt p0, v0, :cond_50

    return v2

    :cond_50
    const/16 v0, 0x6ba

    if-ge p0, v0, :cond_51

    return v1

    :cond_51
    const/16 v0, 0x6be

    if-gt p0, v0, :cond_52

    return v2

    :cond_52
    const/16 v0, 0x6c0

    if-ge p0, v0, :cond_53

    return v1

    :cond_53
    const/16 v0, 0x6ce

    if-gt p0, v0, :cond_54

    return v2

    :cond_54
    const/16 v0, 0x6d0

    if-ge p0, v0, :cond_55

    return v1

    :cond_55
    const/16 v0, 0x6d3

    if-gt p0, v0, :cond_56

    return v2

    :cond_56
    const/16 v0, 0x6d5

    if-ne p0, v0, :cond_57

    return v2

    :cond_57
    const/16 v0, 0x6e5

    if-ge p0, v0, :cond_58

    return v1

    :cond_58
    const/16 v0, 0x6e6

    if-gt p0, v0, :cond_59

    return v2

    :cond_59
    const/16 v0, 0x905

    if-ge p0, v0, :cond_5a

    return v1

    :cond_5a
    const/16 v0, 0x939

    if-gt p0, v0, :cond_5b

    return v2

    :cond_5b
    const/16 v0, 0x93d

    if-ne p0, v0, :cond_5c

    return v2

    :cond_5c
    const/16 v0, 0x958

    if-ge p0, v0, :cond_5d

    return v1

    :cond_5d
    const/16 v0, 0x961

    if-gt p0, v0, :cond_5e

    return v2

    :cond_5e
    const/16 v0, 0x985

    if-ge p0, v0, :cond_5f

    return v1

    :cond_5f
    const/16 v0, 0x98c

    if-gt p0, v0, :cond_60

    return v2

    :cond_60
    const/16 v0, 0x98f

    if-ge p0, v0, :cond_61

    return v1

    :cond_61
    const/16 v0, 0x990

    if-gt p0, v0, :cond_62

    return v2

    :cond_62
    const/16 v0, 0x993

    if-ge p0, v0, :cond_63

    return v1

    :cond_63
    const/16 v0, 0x9a8

    if-gt p0, v0, :cond_64

    return v2

    :cond_64
    const/16 v0, 0x9aa

    if-ge p0, v0, :cond_65

    return v1

    :cond_65
    const/16 v0, 0x9b0

    if-gt p0, v0, :cond_66

    return v2

    :cond_66
    const/16 v0, 0x9b2

    if-ne p0, v0, :cond_67

    return v2

    :cond_67
    const/16 v0, 0x9b6

    if-ge p0, v0, :cond_68

    return v1

    :cond_68
    const/16 v0, 0x9b9

    if-gt p0, v0, :cond_69

    return v2

    :cond_69
    const/16 v0, 0x9dc

    if-ge p0, v0, :cond_6a

    return v1

    :cond_6a
    const/16 v0, 0x9dd

    if-gt p0, v0, :cond_6b

    return v2

    :cond_6b
    const/16 v0, 0x9df

    if-ge p0, v0, :cond_6c

    return v1

    :cond_6c
    const/16 v0, 0x9e1

    if-gt p0, v0, :cond_6d

    return v2

    :cond_6d
    const/16 v0, 0x9f0

    if-ge p0, v0, :cond_6e

    return v1

    :cond_6e
    const/16 v0, 0x9f1

    if-gt p0, v0, :cond_6f

    return v2

    :cond_6f
    const/16 v0, 0xa05

    if-ge p0, v0, :cond_70

    return v1

    :cond_70
    const/16 v0, 0xa0a

    if-gt p0, v0, :cond_71

    return v2

    :cond_71
    const/16 v0, 0xa0f

    if-ge p0, v0, :cond_72

    return v1

    :cond_72
    const/16 v0, 0xa10

    if-gt p0, v0, :cond_73

    return v2

    :cond_73
    const/16 v0, 0xa13

    if-ge p0, v0, :cond_74

    return v1

    :cond_74
    const/16 v0, 0xa28

    if-gt p0, v0, :cond_75

    return v2

    :cond_75
    const/16 v0, 0xa2a

    if-ge p0, v0, :cond_76

    return v1

    :cond_76
    const/16 v0, 0xa30

    if-gt p0, v0, :cond_77

    return v2

    :cond_77
    const/16 v0, 0xa32

    if-ge p0, v0, :cond_78

    return v1

    :cond_78
    const/16 v0, 0xa33

    if-gt p0, v0, :cond_79

    return v2

    :cond_79
    const/16 v0, 0xa35

    if-ge p0, v0, :cond_7a

    return v1

    :cond_7a
    const/16 v0, 0xa36

    if-gt p0, v0, :cond_7b

    return v2

    :cond_7b
    const/16 v0, 0xa38

    if-ge p0, v0, :cond_7c

    return v1

    :cond_7c
    const/16 v0, 0xa39

    if-gt p0, v0, :cond_7d

    return v2

    :cond_7d
    const/16 v0, 0xa59

    if-ge p0, v0, :cond_7e

    return v1

    :cond_7e
    const/16 v0, 0xa5c

    if-gt p0, v0, :cond_7f

    return v2

    :cond_7f
    const/16 v0, 0xa5e

    if-ne p0, v0, :cond_80

    return v2

    :cond_80
    const/16 v0, 0xa72

    if-ge p0, v0, :cond_81

    return v1

    :cond_81
    const/16 v0, 0xa74

    if-gt p0, v0, :cond_82

    return v2

    :cond_82
    const/16 v0, 0xa85

    if-ge p0, v0, :cond_83

    return v1

    :cond_83
    const/16 v0, 0xa8b

    if-gt p0, v0, :cond_84

    return v2

    :cond_84
    const/16 v0, 0xa8d

    if-ne p0, v0, :cond_85

    return v2

    :cond_85
    const/16 v0, 0xa8f

    if-ge p0, v0, :cond_86

    return v1

    :cond_86
    const/16 v0, 0xa91

    if-gt p0, v0, :cond_87

    return v2

    :cond_87
    const/16 v0, 0xa93

    if-ge p0, v0, :cond_88

    return v1

    :cond_88
    const/16 v0, 0xaa8

    if-gt p0, v0, :cond_89

    return v2

    :cond_89
    const/16 v0, 0xaaa

    if-ge p0, v0, :cond_8a

    return v1

    :cond_8a
    const/16 v0, 0xab0

    if-gt p0, v0, :cond_8b

    return v2

    :cond_8b
    const/16 v0, 0xab2

    if-ge p0, v0, :cond_8c

    return v1

    :cond_8c
    const/16 v0, 0xab3

    if-gt p0, v0, :cond_8d

    return v2

    :cond_8d
    const/16 v0, 0xab5

    if-ge p0, v0, :cond_8e

    return v1

    :cond_8e
    const/16 v0, 0xab9

    if-gt p0, v0, :cond_8f

    return v2

    :cond_8f
    const/16 v0, 0xabd

    if-ne p0, v0, :cond_90

    return v2

    :cond_90
    const/16 v0, 0xae0

    if-ne p0, v0, :cond_91

    return v2

    :cond_91
    const/16 v0, 0xb05

    if-ge p0, v0, :cond_92

    return v1

    :cond_92
    const/16 v0, 0xb0c

    if-gt p0, v0, :cond_93

    return v2

    :cond_93
    const/16 v0, 0xb0f

    if-ge p0, v0, :cond_94

    return v1

    :cond_94
    const/16 v0, 0xb10

    if-gt p0, v0, :cond_95

    return v2

    :cond_95
    const/16 v0, 0xb13

    if-ge p0, v0, :cond_96

    return v1

    :cond_96
    const/16 v0, 0xb28

    if-gt p0, v0, :cond_97

    return v2

    :cond_97
    const/16 v0, 0xb2a

    if-ge p0, v0, :cond_98

    return v1

    :cond_98
    const/16 v0, 0xb30

    if-gt p0, v0, :cond_99

    return v2

    :cond_99
    const/16 v0, 0xb32

    if-ge p0, v0, :cond_9a

    return v1

    :cond_9a
    const/16 v0, 0xb33

    if-gt p0, v0, :cond_9b

    return v2

    :cond_9b
    const/16 v0, 0xb36

    if-ge p0, v0, :cond_9c

    return v1

    :cond_9c
    const/16 v0, 0xb39

    if-gt p0, v0, :cond_9d

    return v2

    :cond_9d
    const/16 v0, 0xb3d

    if-ne p0, v0, :cond_9e

    return v2

    :cond_9e
    const/16 v0, 0xb5c

    if-ge p0, v0, :cond_9f

    return v1

    :cond_9f
    const/16 v0, 0xb5d

    if-gt p0, v0, :cond_a0

    return v2

    :cond_a0
    const/16 v0, 0xb5f

    if-ge p0, v0, :cond_a1

    return v1

    :cond_a1
    const/16 v0, 0xb61

    if-gt p0, v0, :cond_a2

    return v2

    :cond_a2
    const/16 v0, 0xb85

    if-ge p0, v0, :cond_a3

    return v1

    :cond_a3
    const/16 v0, 0xb8a

    if-gt p0, v0, :cond_a4

    return v2

    :cond_a4
    const/16 v0, 0xb8e

    if-ge p0, v0, :cond_a5

    return v1

    :cond_a5
    const/16 v0, 0xb90

    if-gt p0, v0, :cond_a6

    return v2

    :cond_a6
    const/16 v0, 0xb92

    if-ge p0, v0, :cond_a7

    return v1

    :cond_a7
    const/16 v0, 0xb95

    if-gt p0, v0, :cond_a8

    return v2

    :cond_a8
    const/16 v0, 0xb99

    if-ge p0, v0, :cond_a9

    return v1

    :cond_a9
    const/16 v0, 0xb9a

    if-gt p0, v0, :cond_aa

    return v2

    :cond_aa
    const/16 v0, 0xb9c

    if-ne p0, v0, :cond_ab

    return v2

    :cond_ab
    const/16 v0, 0xb9e

    if-ge p0, v0, :cond_ac

    return v1

    :cond_ac
    const/16 v0, 0xb9f

    if-gt p0, v0, :cond_ad

    return v2

    :cond_ad
    const/16 v0, 0xba3

    if-ge p0, v0, :cond_ae

    return v1

    :cond_ae
    const/16 v0, 0xba4

    if-gt p0, v0, :cond_af

    return v2

    :cond_af
    const/16 v0, 0xba8

    if-ge p0, v0, :cond_b0

    return v1

    :cond_b0
    const/16 v0, 0xbaa

    if-gt p0, v0, :cond_b1

    return v2

    :cond_b1
    const/16 v0, 0xbae

    if-ge p0, v0, :cond_b2

    return v1

    :cond_b2
    const/16 v0, 0xbb5

    if-gt p0, v0, :cond_b3

    return v2

    :cond_b3
    const/16 v0, 0xbb7

    if-ge p0, v0, :cond_b4

    return v1

    :cond_b4
    const/16 v0, 0xbb9

    if-gt p0, v0, :cond_b5

    return v2

    :cond_b5
    const/16 v0, 0xc05

    if-ge p0, v0, :cond_b6

    return v1

    :cond_b6
    const/16 v0, 0xc0c

    if-gt p0, v0, :cond_b7

    return v2

    :cond_b7
    const/16 v0, 0xc0e

    if-ge p0, v0, :cond_b8

    return v1

    :cond_b8
    const/16 v0, 0xc10

    if-gt p0, v0, :cond_b9

    return v2

    :cond_b9
    const/16 v0, 0xc12

    if-ge p0, v0, :cond_ba

    return v1

    :cond_ba
    const/16 v0, 0xc28

    if-gt p0, v0, :cond_bb

    return v2

    :cond_bb
    const/16 v0, 0xc2a

    if-ge p0, v0, :cond_bc

    return v1

    :cond_bc
    const/16 v0, 0xc33

    if-gt p0, v0, :cond_bd

    return v2

    :cond_bd
    const/16 v0, 0xc35

    if-ge p0, v0, :cond_be

    return v1

    :cond_be
    const/16 v0, 0xc39

    if-gt p0, v0, :cond_bf

    return v2

    :cond_bf
    const/16 v0, 0xc60

    if-ge p0, v0, :cond_c0

    return v1

    :cond_c0
    const/16 v0, 0xc61

    if-gt p0, v0, :cond_c1

    return v2

    :cond_c1
    const/16 v0, 0xc85

    if-ge p0, v0, :cond_c2

    return v1

    :cond_c2
    const/16 v0, 0xc8c

    if-gt p0, v0, :cond_c3

    return v2

    :cond_c3
    const/16 v0, 0xc8e

    if-ge p0, v0, :cond_c4

    return v1

    :cond_c4
    const/16 v0, 0xc90

    if-gt p0, v0, :cond_c5

    return v2

    :cond_c5
    const/16 v0, 0xc92

    if-ge p0, v0, :cond_c6

    return v1

    :cond_c6
    const/16 v0, 0xca8

    if-gt p0, v0, :cond_c7

    return v2

    :cond_c7
    const/16 v0, 0xcaa

    if-ge p0, v0, :cond_c8

    return v1

    :cond_c8
    const/16 v0, 0xcb3

    if-gt p0, v0, :cond_c9

    return v2

    :cond_c9
    const/16 v0, 0xcb5

    if-ge p0, v0, :cond_ca

    return v1

    :cond_ca
    const/16 v0, 0xcb9

    if-gt p0, v0, :cond_cb

    return v2

    :cond_cb
    const/16 v0, 0xcde

    if-ne p0, v0, :cond_cc

    return v2

    :cond_cc
    const/16 v0, 0xce0

    if-ge p0, v0, :cond_cd

    return v1

    :cond_cd
    const/16 v0, 0xce1

    if-gt p0, v0, :cond_ce

    return v2

    :cond_ce
    const/16 v0, 0xd05

    if-ge p0, v0, :cond_cf

    return v1

    :cond_cf
    const/16 v0, 0xd0c

    if-gt p0, v0, :cond_d0

    return v2

    :cond_d0
    const/16 v0, 0xd0e

    if-ge p0, v0, :cond_d1

    return v1

    :cond_d1
    const/16 v0, 0xd10

    if-gt p0, v0, :cond_d2

    return v2

    :cond_d2
    const/16 v0, 0xd12

    if-ge p0, v0, :cond_d3

    return v1

    :cond_d3
    const/16 v0, 0xd28

    if-gt p0, v0, :cond_d4

    return v2

    :cond_d4
    const/16 v0, 0xd2a

    if-ge p0, v0, :cond_d5

    return v1

    :cond_d5
    const/16 v0, 0xd39

    if-gt p0, v0, :cond_d6

    return v2

    :cond_d6
    const/16 v0, 0xd60

    if-ge p0, v0, :cond_d7

    return v1

    :cond_d7
    const/16 v0, 0xd61

    if-gt p0, v0, :cond_d8

    return v2

    :cond_d8
    const/16 v0, 0xe01

    if-ge p0, v0, :cond_d9

    return v1

    :cond_d9
    const/16 v0, 0xe2e

    if-gt p0, v0, :cond_da

    return v2

    :cond_da
    const/16 v0, 0xe30

    if-ne p0, v0, :cond_db

    return v2

    :cond_db
    const/16 v0, 0xe32

    if-ge p0, v0, :cond_dc

    return v1

    :cond_dc
    const/16 v0, 0xe33

    if-gt p0, v0, :cond_dd

    return v2

    :cond_dd
    const/16 v0, 0xe40

    if-ge p0, v0, :cond_de

    return v1

    :cond_de
    const/16 v0, 0xe45

    if-gt p0, v0, :cond_df

    return v2

    :cond_df
    const/16 v0, 0xe81

    if-ge p0, v0, :cond_e0

    return v1

    :cond_e0
    const/16 v0, 0xe82

    if-gt p0, v0, :cond_e1

    return v2

    :cond_e1
    const/16 v0, 0xe84

    if-ne p0, v0, :cond_e2

    return v2

    :cond_e2
    const/16 v0, 0xe87

    if-ge p0, v0, :cond_e3

    return v1

    :cond_e3
    const/16 v0, 0xe88

    if-gt p0, v0, :cond_e4

    return v2

    :cond_e4
    const/16 v0, 0xe8a

    if-ne p0, v0, :cond_e5

    return v2

    :cond_e5
    const/16 v0, 0xe8d

    if-ne p0, v0, :cond_e6

    return v2

    :cond_e6
    const/16 v0, 0xe94

    if-ge p0, v0, :cond_e7

    return v1

    :cond_e7
    const/16 v0, 0xe97

    if-gt p0, v0, :cond_e8

    return v2

    :cond_e8
    const/16 v0, 0xe99

    if-ge p0, v0, :cond_e9

    return v1

    :cond_e9
    const/16 v0, 0xe9f

    if-gt p0, v0, :cond_ea

    return v2

    :cond_ea
    const/16 v0, 0xea1

    if-ge p0, v0, :cond_eb

    return v1

    :cond_eb
    const/16 v0, 0xea3

    if-gt p0, v0, :cond_ec

    return v2

    :cond_ec
    const/16 v0, 0xea5

    if-ne p0, v0, :cond_ed

    return v2

    :cond_ed
    const/16 v0, 0xea7

    if-ne p0, v0, :cond_ee

    return v2

    :cond_ee
    const/16 v0, 0xeaa

    if-ge p0, v0, :cond_ef

    return v1

    :cond_ef
    const/16 v0, 0xeab

    if-gt p0, v0, :cond_f0

    return v2

    :cond_f0
    const/16 v0, 0xead

    if-ge p0, v0, :cond_f1

    return v1

    :cond_f1
    const/16 v0, 0xeae

    if-gt p0, v0, :cond_f2

    return v2

    :cond_f2
    const/16 v0, 0xeb0

    if-ne p0, v0, :cond_f3

    return v2

    :cond_f3
    const/16 v0, 0xeb2

    if-ge p0, v0, :cond_f4

    return v1

    :cond_f4
    const/16 v0, 0xeb3

    if-gt p0, v0, :cond_f5

    return v2

    :cond_f5
    const/16 v0, 0xebd

    if-ne p0, v0, :cond_f6

    return v2

    :cond_f6
    const/16 v0, 0xec0

    if-ge p0, v0, :cond_f7

    return v1

    :cond_f7
    const/16 v0, 0xec4

    if-gt p0, v0, :cond_f8

    return v2

    :cond_f8
    const/16 v0, 0xf40

    if-ge p0, v0, :cond_f9

    return v1

    :cond_f9
    const/16 v0, 0xf47

    if-gt p0, v0, :cond_fa

    return v2

    :cond_fa
    const/16 v0, 0xf49

    if-ge p0, v0, :cond_fb

    return v1

    :cond_fb
    const/16 v0, 0xf69

    if-gt p0, v0, :cond_fc

    return v2

    :cond_fc
    const/16 v0, 0x10a0

    if-ge p0, v0, :cond_fd

    return v1

    :cond_fd
    const/16 v0, 0x10c5

    if-gt p0, v0, :cond_fe

    return v2

    :cond_fe
    const/16 v0, 0x10d0

    if-ge p0, v0, :cond_ff

    return v1

    :cond_ff
    const/16 v0, 0x10f6

    if-gt p0, v0, :cond_100

    return v2

    :cond_100
    const/16 v0, 0x1100

    if-ne p0, v0, :cond_101

    return v2

    :cond_101
    const/16 v0, 0x1102

    if-ge p0, v0, :cond_102

    return v1

    :cond_102
    const/16 v0, 0x1103

    if-gt p0, v0, :cond_103

    return v2

    :cond_103
    const/16 v0, 0x1105

    if-ge p0, v0, :cond_104

    return v1

    :cond_104
    const/16 v0, 0x1107

    if-gt p0, v0, :cond_105

    return v2

    :cond_105
    const/16 v0, 0x1109

    if-ne p0, v0, :cond_106

    return v2

    :cond_106
    const/16 v0, 0x110b

    if-ge p0, v0, :cond_107

    return v1

    :cond_107
    const/16 v0, 0x110c

    if-gt p0, v0, :cond_108

    return v2

    :cond_108
    const/16 v0, 0x110e

    if-ge p0, v0, :cond_109

    return v1

    :cond_109
    const/16 v0, 0x1112

    if-gt p0, v0, :cond_10a

    return v2

    :cond_10a
    const/16 v0, 0x113c

    if-ne p0, v0, :cond_10b

    return v2

    :cond_10b
    const/16 v0, 0x113e

    if-ne p0, v0, :cond_10c

    return v2

    :cond_10c
    const/16 v0, 0x1140

    if-ne p0, v0, :cond_10d

    return v2

    :cond_10d
    const/16 v0, 0x114c

    if-ne p0, v0, :cond_10e

    return v2

    :cond_10e
    const/16 v0, 0x114e

    if-ne p0, v0, :cond_10f

    return v2

    :cond_10f
    const/16 v0, 0x1150

    if-ne p0, v0, :cond_110

    return v2

    :cond_110
    const/16 v0, 0x1154

    if-ge p0, v0, :cond_111

    return v1

    :cond_111
    const/16 v0, 0x1155

    if-gt p0, v0, :cond_112

    return v2

    :cond_112
    const/16 v0, 0x1159

    if-ne p0, v0, :cond_113

    return v2

    :cond_113
    const/16 v0, 0x115f

    if-ge p0, v0, :cond_114

    return v1

    :cond_114
    const/16 v0, 0x1161

    if-gt p0, v0, :cond_115

    return v2

    :cond_115
    const/16 v0, 0x1163

    if-ne p0, v0, :cond_116

    return v2

    :cond_116
    const/16 v0, 0x1165

    if-ne p0, v0, :cond_117

    return v2

    :cond_117
    const/16 v0, 0x1167

    if-ne p0, v0, :cond_118

    return v2

    :cond_118
    const/16 v0, 0x1169

    if-ne p0, v0, :cond_119

    return v2

    :cond_119
    const/16 v0, 0x116d

    if-ge p0, v0, :cond_11a

    return v1

    :cond_11a
    const/16 v0, 0x116e

    if-gt p0, v0, :cond_11b

    return v2

    :cond_11b
    const/16 v0, 0x1172

    if-ge p0, v0, :cond_11c

    return v1

    :cond_11c
    const/16 v0, 0x1173

    if-gt p0, v0, :cond_11d

    return v2

    :cond_11d
    const/16 v0, 0x1175

    if-ne p0, v0, :cond_11e

    return v2

    :cond_11e
    const/16 v0, 0x119e

    if-ne p0, v0, :cond_11f

    return v2

    :cond_11f
    const/16 v0, 0x11a8

    if-ne p0, v0, :cond_120

    return v2

    :cond_120
    const/16 v0, 0x11ab

    if-ne p0, v0, :cond_121

    return v2

    :cond_121
    const/16 v0, 0x11ae

    if-ge p0, v0, :cond_122

    return v1

    :cond_122
    const/16 v0, 0x11af

    if-gt p0, v0, :cond_123

    return v2

    :cond_123
    const/16 v0, 0x11b7

    if-ge p0, v0, :cond_124

    return v1

    :cond_124
    const/16 v0, 0x11b8

    if-gt p0, v0, :cond_125

    return v2

    :cond_125
    const/16 v0, 0x11ba

    if-ne p0, v0, :cond_126

    return v2

    :cond_126
    const/16 v0, 0x11bc

    if-ge p0, v0, :cond_127

    return v1

    :cond_127
    const/16 v0, 0x11c2

    if-gt p0, v0, :cond_128

    return v2

    :cond_128
    const/16 v0, 0x11eb

    if-ne p0, v0, :cond_129

    return v2

    :cond_129
    const/16 v0, 0x11f0

    if-ne p0, v0, :cond_12a

    return v2

    :cond_12a
    const/16 v0, 0x11f9

    if-ne p0, v0, :cond_12b

    return v2

    :cond_12b
    const/16 v0, 0x1e00

    if-ge p0, v0, :cond_12c

    return v1

    :cond_12c
    const/16 v0, 0x1e9b

    if-gt p0, v0, :cond_12d

    return v2

    :cond_12d
    const/16 v0, 0x1ea0

    if-ge p0, v0, :cond_12e

    return v1

    :cond_12e
    const/16 v0, 0x1ef9

    if-gt p0, v0, :cond_12f

    return v2

    :cond_12f
    const/16 v0, 0x1f00

    if-ge p0, v0, :cond_130

    return v1

    :cond_130
    const/16 v0, 0x1f15

    if-gt p0, v0, :cond_131

    return v2

    :cond_131
    const/16 v0, 0x1f18

    if-ge p0, v0, :cond_132

    return v1

    :cond_132
    const/16 v0, 0x1f1d

    if-gt p0, v0, :cond_133

    return v2

    :cond_133
    const/16 v0, 0x1f20

    if-ge p0, v0, :cond_134

    return v1

    :cond_134
    const/16 v0, 0x1f45

    if-gt p0, v0, :cond_135

    return v2

    :cond_135
    const/16 v0, 0x1f48

    if-ge p0, v0, :cond_136

    return v1

    :cond_136
    const/16 v0, 0x1f4d

    if-gt p0, v0, :cond_137

    return v2

    :cond_137
    const/16 v0, 0x1f50

    if-ge p0, v0, :cond_138

    return v1

    :cond_138
    const/16 v0, 0x1f57

    if-gt p0, v0, :cond_139

    return v2

    :cond_139
    const/16 v0, 0x1f59

    if-ne p0, v0, :cond_13a

    return v2

    :cond_13a
    const/16 v0, 0x1f5b

    if-ne p0, v0, :cond_13b

    return v2

    :cond_13b
    const/16 v0, 0x1f5d

    if-ne p0, v0, :cond_13c

    return v2

    :cond_13c
    const/16 v0, 0x1f5f

    if-ge p0, v0, :cond_13d

    return v1

    :cond_13d
    const/16 v0, 0x1f7d

    if-gt p0, v0, :cond_13e

    return v2

    :cond_13e
    const/16 v0, 0x1f80

    if-ge p0, v0, :cond_13f

    return v1

    :cond_13f
    const/16 v0, 0x1fb4

    if-gt p0, v0, :cond_140

    return v2

    :cond_140
    const/16 v0, 0x1fb6

    if-ge p0, v0, :cond_141

    return v1

    :cond_141
    const/16 v0, 0x1fbc

    if-gt p0, v0, :cond_142

    return v2

    :cond_142
    const/16 v0, 0x1fbe

    if-ne p0, v0, :cond_143

    return v2

    :cond_143
    const/16 v0, 0x1fc2

    if-ge p0, v0, :cond_144

    return v1

    :cond_144
    const/16 v0, 0x1fc4

    if-gt p0, v0, :cond_145

    return v2

    :cond_145
    const/16 v0, 0x1fc6

    if-ge p0, v0, :cond_146

    return v1

    :cond_146
    const/16 v0, 0x1fcc

    if-gt p0, v0, :cond_147

    return v2

    :cond_147
    const/16 v0, 0x1fd0

    if-ge p0, v0, :cond_148

    return v1

    :cond_148
    const/16 v0, 0x1fd3

    if-gt p0, v0, :cond_149

    return v2

    :cond_149
    const/16 v0, 0x1fd6

    if-ge p0, v0, :cond_14a

    return v1

    :cond_14a
    const/16 v0, 0x1fdb

    if-gt p0, v0, :cond_14b

    return v2

    :cond_14b
    const/16 v0, 0x1fe0

    if-ge p0, v0, :cond_14c

    return v1

    :cond_14c
    const/16 v0, 0x1fec

    if-gt p0, v0, :cond_14d

    return v2

    :cond_14d
    const/16 v0, 0x1ff2

    if-ge p0, v0, :cond_14e

    return v1

    :cond_14e
    const/16 v0, 0x1ff4

    if-gt p0, v0, :cond_14f

    return v2

    :cond_14f
    const/16 v0, 0x1ff6

    if-ge p0, v0, :cond_150

    return v1

    :cond_150
    const/16 v0, 0x1ffc

    if-gt p0, v0, :cond_151

    return v2

    :cond_151
    const/16 v0, 0x2126

    if-ne p0, v0, :cond_152

    return v2

    :cond_152
    const/16 v0, 0x212a

    if-ge p0, v0, :cond_153

    return v1

    :cond_153
    const/16 v0, 0x212b

    if-gt p0, v0, :cond_154

    return v2

    :cond_154
    const/16 v0, 0x212e

    if-ne p0, v0, :cond_155

    return v2

    :cond_155
    const/16 v0, 0x2180

    if-ge p0, v0, :cond_156

    return v1

    :cond_156
    const/16 v0, 0x2182

    if-gt p0, v0, :cond_157

    return v2

    :cond_157
    const/16 v0, 0x3007

    if-ne p0, v0, :cond_158

    return v2

    :cond_158
    const/16 v0, 0x3021

    if-ge p0, v0, :cond_159

    return v1

    :cond_159
    const/16 v0, 0x3029

    if-gt p0, v0, :cond_15a

    return v2

    :cond_15a
    const/16 v0, 0x3041

    if-ge p0, v0, :cond_15b

    return v1

    :cond_15b
    const/16 v0, 0x3094

    if-gt p0, v0, :cond_15c

    return v2

    :cond_15c
    const/16 v0, 0x30a1

    if-ge p0, v0, :cond_15d

    return v1

    :cond_15d
    const/16 v0, 0x30fa

    if-gt p0, v0, :cond_15e

    return v2

    :cond_15e
    const/16 v0, 0x3105

    if-ge p0, v0, :cond_15f

    return v1

    :cond_15f
    const/16 v0, 0x312c

    if-gt p0, v0, :cond_160

    return v2

    :cond_160
    const/16 v0, 0x4e00

    if-ge p0, v0, :cond_161

    return v1

    :cond_161
    const v0, 0x9fa5

    if-gt p0, v0, :cond_162

    return v2

    :cond_162
    const v0, 0xac00

    if-ge p0, v0, :cond_163

    return v1

    :cond_163
    const v0, 0xd7a3

    if-gt p0, v0, :cond_164

    return v2

    :cond_164
    return v1
.end method

.method public static isXMLLetterOrDigit(C)Z
    .locals 1

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isXMLNameCharacter(C)Z
    .locals 1

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLCombiningChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLExtender(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isXMLNameStartCharacter(C)Z
    .locals 1

    invoke-static {p0}, Lorg/jdom/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isXMLPublicIDCharacter(C)Z
    .locals 2

    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3f

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x27

    if-lt p0, v0, :cond_2

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x20

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x21

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_5

    return v1

    :cond_5
    const/16 v0, 0x23

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x24

    if-ne p0, v0, :cond_7

    return v1

    :cond_7
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x25

    if-ne p0, v0, :cond_9

    return v1

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0xd

    if-ne p0, v0, :cond_b

    return v1

    :cond_b
    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isXMLWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
