.class public abstract Lcom/fasterxml/aalto/out/OutputCharTypes;
.super Lcom/fasterxml/aalto/util/XmlCharTypes;
.source "SourceFile"


# static fields
.field private static sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

.field private static sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

.field private static final sUtf8CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/fasterxml/aalto/util/XmlCharTypes;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/util/XmlCharTypes;-><init>(I)V

    sput-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sUtf8CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v2, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget-object v3, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    iget-object v4, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    iget-object v5, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInLatin1Chars([I[I[I[I[I)V

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForUtf8([I)V

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForUtf8([I)V

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForUtf8([I)V

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForUtf8([I)V

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyUtf8Names([I)V

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForAttrWrite([I)V

    return-void
.end method

.method public static final getAsciiCharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;
    .locals 5

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/util/XmlCharTypes;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/util/XmlCharTypes;-><init>(I)V

    sput-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v2, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget-object v3, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    iget-object v4, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInLatin1Chars([I[I[I[I[I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForAscii([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForAscii([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForAscii([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForAscii([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyAsciiNames([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForAttrWrite([I)V

    :cond_0
    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    return-object v0
.end method

.method public static final getLatin1CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;
    .locals 5

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/util/XmlCharTypes;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/util/XmlCharTypes;-><init>(I)V

    sput-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v2, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget-object v3, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    iget-object v4, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInLatin1Chars([I[I[I[I[I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForLatin1([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForLatin1([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForLatin1([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForLatin1([I)V

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    invoke-static {v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyForAttrWrite([I)V

    :cond_0
    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    return-object v0
.end method

.method public static final getUtf8CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/out/OutputCharTypes;->sUtf8CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    return-object v0
.end method

.method private static modifyAsciiNames([I)V
    .locals 4

    invoke-static {p0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->modifyLatin1Names([I)V

    array-length v0, p0

    const/16 v1, 0x80

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p0, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x4

    aput v2, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static modifyForAscii([I)V
    .locals 1

    const/16 v0, 0x7f

    invoke-static {p0, v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->requireQuotingAfter([II)V

    return-void
.end method

.method private static modifyForAttrWrite([I)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x4

    aput v1, p0, v0

    return-void
.end method

.method private static modifyForLatin1([I)V
    .locals 2

    const/16 v0, 0x7f

    :goto_0
    const/16 v1, 0x9f

    if-gt v0, v1, :cond_0

    const/4 v1, 0x4

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/fasterxml/aalto/out/OutputCharTypes;->requireQuotingAfter([II)V

    return-void
.end method

.method private static modifyForUtf8([I)V
    .locals 3

    array-length v0, p0

    const/16 v1, 0x80

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x5

    aput v2, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static modifyLatin1Names([I)V
    .locals 4

    array-length v0, p0

    const/16 v1, 0x100

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p0, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x4

    aput v2, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static modifyUtf8Names([I)V
    .locals 3

    array-length v0, p0

    const/16 v1, 0x80

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {v1}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameStartChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    aput v2, p0, v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/fasterxml/aalto/util/XmlChars;->is10NameChar(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    aput v2, p0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aput v2, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static requireQuotingAfter([II)V
    .locals 2

    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    :goto_0
    if-ge p1, v0, :cond_1

    aget v1, p0, p1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    aput v1, p0, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
