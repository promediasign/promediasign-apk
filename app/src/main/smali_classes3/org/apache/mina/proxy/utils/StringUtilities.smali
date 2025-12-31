.class public Lorg/apache/mina/proxy/utils/StringUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    invoke-interface {v0, p0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static copyDirective(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, " = \""

    const-string v1, "\", "

    .line 2
    invoke-static {p1, p2, v0, p0, v1}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static extractDirective(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljavax/security/sasl/SaslException;

    .line 12
    .line 13
    const-string p2, "Peer sent more than one "

    .line 14
    .line 15
    const-string v0, " directive"

    .line 16
    .line 17
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljavax/security/sasl/AuthenticationException;

    .line 15
    .line 16
    const-string p2, "\""

    .line 17
    .line 18
    const-string v0, "\" mandatory directive is missing"

    .line 19
    .line 20
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljavax/security/sasl/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    return-object p0
.end method

.method public static getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Header with key [\""

    .line 29
    .line 30
    const-string v1, "\"] isn\'t single valued !"

    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public static isLws(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parseDirectives([B)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    array-length v9, p0

    const-string v10, " with value: "

    const-string v11, "Unmatched quote found for directive: "

    if-ge v4, v9, :cond_11

    aget-byte v9, p0, v4

    const/16 v12, 0x22

    const/16 v13, 0x2c

    if-eqz v7, :cond_9

    if-ne v9, v13, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-nez v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    goto :goto_1

    :cond_0
    new-instance p0, Ljavax/security/sasl/SaslException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Directive key contains a \',\':"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v10, 0x3d

    if-ne v9, v10, :cond_5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    array-length v7, p0

    if-ge v4, v7, :cond_3

    aget-byte v7, p0, v4

    if-ne v7, v12, :cond_2

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    new-instance p0, Ljavax/security/sasl/SaslException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Valueless directive found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljavax/security/sasl/SaslException;

    const-string v0, "Empty directive key"

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {v9}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    array-length v9, p0

    const-string v11, "\'=\' expected after key: "

    if-ge v4, v9, :cond_7

    aget-byte v9, p0, v4

    if-ne v9, v10, :cond_6

    goto/16 :goto_1

    :cond_6
    new-instance p0, Ljavax/security/sasl/SaslException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljavax/security/sasl/SaslException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_d

    const/16 v13, 0x5c

    if-ne v9, v13, :cond_b

    add-int/lit8 v9, v4, 0x1

    array-length v12, p0

    if-ge v9, v12, :cond_a

    aget-byte v9, p0, v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    :cond_a
    new-instance p0, Ljavax/security/sasl/SaslException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-ne v9, v12, :cond_c

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_3
    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_d
    invoke-static {v9}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v10

    if-nez v10, :cond_10

    if-ne v9, v13, :cond_e

    goto :goto_4

    :cond_e
    if-nez v8, :cond_f

    goto :goto_3

    :cond_f
    new-instance p0, Ljavax/security/sasl/SaslException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expecting comma or linear whitespace after quoted string: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lorg/apache/mina/proxy/utils/StringUtilities;->extractDirective(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v4

    goto/16 :goto_0

    :cond_11
    if-nez v6, :cond_13

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_12

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->extractDirective(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object v0

    :cond_13
    new-instance p0, Ljavax/security/sasl/SaslException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static skipLws([BI)I
    .locals 1

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    invoke-static {v0}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "8859_1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
