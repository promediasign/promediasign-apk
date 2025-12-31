.class public abstract Lorg/apache/poi/hssf/usermodel/HeaderFooter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/HeaderFooter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static date()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endBold()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endDoubleUnderline()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endUnderline()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static file()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static font(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "&\""

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    const-string v2, "\""

    .line 6
    .line 7
    invoke-static {v0, p0, v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static fontSize(S)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "&"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static numPages()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static page()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private splitParts()[Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->getRawText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x26

    if-eq v4, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x43

    const/4 v7, 0x2

    const-string v8, "&R"

    const-string v9, "&L"

    if-eq v5, v6, :cond_7

    const/16 v6, 0x4c

    const-string v10, "&C"

    if-eq v5, v6, :cond_4

    const/16 v6, 0x52

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_3
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_6
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_8
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_9
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_a
    move-object v0, v2

    :goto_2
    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startBold()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startDoubleUnderline()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startUnderline()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->values()[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ltz v5, :cond_1

    .line 30
    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    add-int/2addr v7, v5

    .line 48
    invoke-static {p0, v7, v6}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "\\&\\d+"

    .line 57
    .line 58
    const-string v1, ""

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v0, "\\&\".*?,.*?\""

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :cond_3
    :goto_2
    return-object p0
.end method

.method public static tab()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static time()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateHeaderFooterText([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_0

    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->setHeaderFooterText(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "&C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&R"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private updatePart(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    aput-object p2, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updateHeaderFooterText([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCenter()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLeft()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public abstract getRawText()Ljava/lang/String;
.end method

.method public final getRight()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setCenter(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    return-void
.end method

.method public abstract setHeaderFooterText(Ljava/lang/String;)V
.end method

.method public final setLeft(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    return-void
.end method

.method public final setRight(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    return-void
.end method
