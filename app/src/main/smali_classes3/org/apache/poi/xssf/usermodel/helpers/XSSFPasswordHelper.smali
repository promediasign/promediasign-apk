.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
    since = "3.15 beta 3"
.end annotation


# direct methods
.method private static getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 13
    .line 14
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    :goto_0
    new-instance p0, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public static setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    const-string v1, "spinCount"

    const-string v2, "saltValue"

    const-string v3, "hashValue"

    const-string v4, "algorithmName"

    const-string v5, "password"

    if-nez p1, :cond_0

    invoke-static {p3, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    invoke-static {p3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    invoke-static {p3, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    invoke-static {p3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    invoke-static {p3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->removeAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result p1

    invoke-static {p3, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "%04X"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v5

    const v6, 0x186a0

    invoke-static {p1, p2, v5, v6, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p1

    invoke-static {p3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iget-object p2, p2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-interface {p0, v0, p2}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-static {p3, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    invoke-static {p1}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-static {v5}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const-string p2, "100000"

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method public static validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    const-string v1, "password"

    invoke-static {p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "algorithmName"

    invoke-static {p2, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashValue"

    invoke-static {p2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "saltValue"

    invoke-static {p2, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "spinCount"

    invoke-static {p2, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    if-eqz v1, :cond_2

    const/16 p0, 0x10

    invoke-static {v1, p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromString(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-static {v4}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, v1, v2, p2, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method
