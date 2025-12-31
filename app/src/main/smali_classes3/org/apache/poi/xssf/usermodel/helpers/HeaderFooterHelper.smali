.class public Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HeaderFooterEntity_Date:Ljava/lang/String; = "&D"

.field public static final HeaderFooterEntity_File:Ljava/lang/String; = "&F"

.field public static final HeaderFooterEntity_Time:Ljava/lang/String; = "&T"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :goto_0
    const-string v2, "&L"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x2

    if-le v2, v5, :cond_4

    const-string v6, "&C"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v6, v5, :cond_4

    const-string v7, "&R"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v5, :cond_4

    const/4 v5, -0x1

    if-gt v2, v5, :cond_1

    if-gt v6, v5, :cond_1

    if-le v7, v5, :cond_4

    :cond_1
    if-le v7, v6, :cond_2

    if-le v7, v2, :cond_2

    add-int/lit8 v2, v7, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-le v6, v7, :cond_3

    if-le v6, v2, :cond_3

    add-int/lit8 v2, v6, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private joinParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "&C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    const-string p2, "&L"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "&R"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private joinParts([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCenterSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getLeftSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getRightSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    return-object p1
.end method

.method public setCenterSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setLeftSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setRightSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p2, p1, v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->joinParts([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
