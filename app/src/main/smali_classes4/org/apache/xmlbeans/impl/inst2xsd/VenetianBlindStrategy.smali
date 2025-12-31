.class public Lorg/apache/xmlbeans/impl/inst2xsd/VenetianBlindStrategy;
.super Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/inst2xsd/XsdGenStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;-><init>()V

    return-void
.end method

.method private compatibleTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public checkIfReferenceToGlobalTypeIsNeeded(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isGlobal()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isComplexType()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    new-instance v3, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 24
    .line 25
    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Ljava/lang/StringBuffer;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    const-string v6, "Type"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    const-string v6, ""

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-static {v2, v6}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-direct {v3, v4, v5}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getGlobalType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v3, :cond_2

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setGlobal(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->addGlobalType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-direct {p0, v3, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/VenetianBlindStrategy;->compatibleTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, v3, v0, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    :goto_2
    return-void
.end method
