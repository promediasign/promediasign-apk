.class Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/StscTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedefinitionHolder"
.end annotation


# instance fields
.field private agRedefinitions:Ljava/util/Map;

.field private ctRedefinitions:Ljava/util/Map;

.field private mgRedefinitions:Ljava/util/Map;

.field private schemaLocation:Ljava/lang/String;

.field private schemaRedefined:Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

.field private stRedefinitions:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaLocation:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaRedefined:Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    if-eqz p2, :cond_c

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getSchemaLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getSchemaLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaLocation:Ljava/lang/String;

    :cond_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getComplexTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    const/16 v5, 0x31

    const-string v6, "Duplicate type redefinition: "

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v6, v0, v2

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v5, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getSimpleTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_6

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v5, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v0, v2

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_9

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v5, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v0, v2

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    move-result-object p2

    :goto_6
    array-length v0, p2

    if-ge v1, v0, :cond_c

    aget-object v0, p2, v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v5, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaRedefined:Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaLocation:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public complainAboutMissingDefinitions()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/16 v3, 0x3c

    .line 53
    .line 54
    const-string v4, " not found in "

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/String;

    .line 63
    .line 64
    const-string v5, "Redefined simple type "

    .line 65
    .line 66
    invoke-static {v5, v2, v4}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaLocation:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    .line 80
    .line 81
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    .line 86
    .line 87
    invoke-virtual {v0, v4, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/String;

    .line 112
    .line 113
    const-string v5, "Redefined complex type "

    .line 114
    .line 115
    invoke-static {v5, v2, v4}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaLocation:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    .line 135
    .line 136
    invoke-virtual {v0, v5, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_3

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Ljava/lang/String;

    .line 161
    .line 162
    const-string v5, "Redefined attribute group "

    .line 163
    .line 164
    invoke-static {v5, v2, v4}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaLocation:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    .line 178
    .line 179
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    .line 184
    .line 185
    invoke-virtual {v0, v5, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_4

    .line 204
    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v2, Ljava/lang/String;

    .line 210
    .line 211
    const-string v5, "Redefined model group "

    .line 212
    .line 213
    invoke-static {v5, v2, v4}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->schemaLocation:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    .line 227
    .line 228
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    .line 233
    .line 234
    invoke-virtual {v0, v5, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_4
    return-void
.end method

.method public redefineAttributeGroup(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->agRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public redefineComplexType(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->ctRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public redefineModelGroup(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->mgRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public redefineSimpleType(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscTranslator$RedefinitionHolder;->stRedefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
