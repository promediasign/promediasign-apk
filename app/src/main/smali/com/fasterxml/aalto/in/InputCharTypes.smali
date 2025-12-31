.class public abstract Lcom/fasterxml/aalto/in/InputCharTypes;
.super Lcom/fasterxml/aalto/util/XmlCharTypes;
.source "SourceFile"


# static fields
.field private static sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

.field private static sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

.field private static final sUtf8CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/fasterxml/aalto/util/XmlCharTypes;

    invoke-direct {v0}, Lcom/fasterxml/aalto/util/XmlCharTypes;-><init>()V

    sput-object v0, Lcom/fasterxml/aalto/in/InputCharTypes;->sUtf8CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v2, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget-object v3, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    iget-object v4, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    iget-object v0, v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInUtf8Chars([I[I[I[I[I)V

    return-void
.end method

.method public static fillInIllegalAsciiRange([I)V
    .locals 2

    const/16 v0, 0x80

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static fillInMultiByteNameRange([I)V
    .locals 3

    const/16 v0, 0x80

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_3

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static fillInMultiByteTextRange([I)V
    .locals 3

    const/16 v0, 0x80

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_3

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static fillInUtf8Chars([I[I[I[I[I)V
    .locals 0

    invoke-static {p0}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitTextRange([I)V

    invoke-static {p0}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInMultiByteTextRange([I)V

    invoke-static {p1}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitAttrRange([I)V

    invoke-static {p1}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInMultiByteTextRange([I)V

    invoke-static {p2}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitNameRange([I)V

    invoke-static {p2}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInMultiByteNameRange([I)V

    invoke-static {p3}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitDtdRange([I)V

    invoke-static {p3}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInMultiByteTextRange([I)V

    const/16 p0, 0x5d

    const/16 p1, 0xb

    aput p1, p4, p0

    const/16 p2, 0x3e

    const/16 p3, 0x11

    aput p3, p4, p2

    invoke-static {p4}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitTextRange([I)V

    invoke-static {p4}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInMultiByteTextRange([I)V

    const/16 p2, 0x26

    const/4 p3, 0x0

    aput p3, p4, p2

    const/16 p2, 0x3c

    aput p3, p4, p2

    aput p1, p4, p0

    const/16 p0, 0x3f

    const/16 p1, 0xc

    aput p1, p4, p0

    const/16 p0, 0x2d

    const/16 p1, 0xd

    aput p1, p4, p0

    return-void
.end method

.method public static final declared-synchronized getAsciiCharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;
    .locals 6

    const-class v0, Lcom/fasterxml/aalto/in/InputCharTypes;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fasterxml/aalto/util/XmlCharTypes;

    invoke-direct {v1}, Lcom/fasterxml/aalto/util/XmlCharTypes;-><init>()V

    sput-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v2, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v3, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget-object v4, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    iget-object v5, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInLatin1Chars([I[I[I[I[I)V

    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInIllegalAsciiRange([I)V

    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInIllegalAsciiRange([I)V

    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInIllegalAsciiRange([I)V

    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInIllegalAsciiRange([I)V

    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v1}, Lcom/fasterxml/aalto/in/InputCharTypes;->fillInIllegalAsciiRange([I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sAsciiCharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized getLatin1CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;
    .locals 6

    const-class v0, Lcom/fasterxml/aalto/in/InputCharTypes;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fasterxml/aalto/util/XmlCharTypes;

    invoke-direct {v1}, Lcom/fasterxml/aalto/util/XmlCharTypes;-><init>()V

    sput-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    iget-object v2, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    iget-object v3, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    iget-object v4, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    iget-object v5, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    iget-object v1, v1, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInLatin1Chars([I[I[I[I[I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/fasterxml/aalto/in/InputCharTypes;->sLatin1CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static final getUtf8CharTypes()Lcom/fasterxml/aalto/util/XmlCharTypes;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/in/InputCharTypes;->sUtf8CharTypes:Lcom/fasterxml/aalto/util/XmlCharTypes;

    return-object v0
.end method
