.class public Lcom/fasterxml/aalto/util/XmlCharTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PUBID_CHARS:[I


# instance fields
.field public final ATTR_CHARS:[I

.field public final DTD_CHARS:[I

.field public final NAME_CHARS:[I

.field public final OTHER_CHARS:[I

.field public final TEXT_CHARS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->PUBID_CHARS:[I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x19

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/fasterxml/aalto/util/XmlCharTypes;->PUBID_CHARS:[I

    add-int/lit8 v3, v0, 0x41

    aput v1, v2, v3

    add-int/lit8 v3, v0, 0x61

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_1
    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    sget-object v2, Lcom/fasterxml/aalto/util/XmlCharTypes;->PUBID_CHARS:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/fasterxml/aalto/util/XmlCharTypes;->PUBID_CHARS:[I

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v2, 0x2d

    aput v1, v0, v2

    const/16 v2, 0x27

    aput v1, v0, v2

    const/16 v2, 0x28

    aput v1, v0, v2

    const/16 v2, 0x29

    aput v1, v0, v2

    const/16 v2, 0x2b

    aput v1, v0, v2

    const/16 v2, 0x2c

    aput v1, v0, v2

    const/16 v2, 0x2e

    aput v1, v0, v2

    const/16 v2, 0x2f

    aput v1, v0, v2

    const/16 v2, 0x3a

    aput v1, v0, v2

    const/16 v2, 0x3d

    aput v1, v0, v2

    const/16 v2, 0x3f

    aput v1, v0, v2

    const/16 v2, 0x3b

    aput v1, v0, v2

    const/16 v2, 0x21

    aput v1, v0, v2

    const/16 v2, 0x2a

    aput v1, v0, v2

    const/16 v2, 0x23

    aput v1, v0, v2

    const/16 v2, 0x40

    aput v1, v0, v2

    const/16 v2, 0x24

    aput v1, v0, v2

    const/16 v2, 0x5f

    aput v1, v0, v2

    const/16 v2, 0x25

    aput v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/util/XmlCharTypes;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/fasterxml/aalto/util/XmlCharTypes;->TEXT_CHARS:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/fasterxml/aalto/util/XmlCharTypes;->ATTR_CHARS:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/fasterxml/aalto/util/XmlCharTypes;->NAME_CHARS:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/fasterxml/aalto/util/XmlCharTypes;->DTD_CHARS:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/fasterxml/aalto/util/XmlCharTypes;->OTHER_CHARS:[I

    return-void
.end method

.method public static fillIn8BitAttrRange([I)V
    .locals 2

    invoke-static {p0}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInCommonTextRange([I)V

    const/16 v0, 0x8

    const/16 v1, 0x9

    aput v0, p0, v1

    const/16 v0, 0x3c

    aput v1, p0, v0

    const/16 v0, 0x26

    const/16 v1, 0xa

    aput v1, p0, v0

    const/16 v0, 0x27

    const/16 v1, 0xe

    aput v1, p0, v0

    const/16 v0, 0x22

    aput v1, p0, v0

    return-void
.end method

.method public static fillIn8BitDtdRange([I)V
    .locals 2

    invoke-static {p0}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInCommonTextRange([I)V

    const/16 v0, 0x27

    const/16 v1, 0x8

    aput v1, p0, v0

    const/16 v0, 0x22

    aput v1, p0, v0

    const/16 v0, 0x3c

    const/16 v1, 0x9

    aput v1, p0, v0

    const/16 v0, 0x3e

    const/16 v1, 0xa

    aput v1, p0, v0

    const/16 v0, 0x5d

    const/16 v1, 0xb

    aput v1, p0, v0

    const/16 v0, 0x25

    const/16 v1, 0xc

    aput v1, p0, v0

    return-void
.end method

.method public static fillIn8BitNameRange([I)V
    .locals 3

    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    const/4 v2, 0x3

    if-gt v0, v1, :cond_0

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x5f

    aput v2, p0, v0

    const/16 v0, 0x3a

    const/4 v1, 0x1

    aput v1, p0, v0

    const/16 v0, 0x2d

    const/4 v1, 0x2

    aput v1, p0, v0

    const/16 v0, 0x2e

    aput v1, p0, v0

    const/16 v0, 0x30

    :goto_2
    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static fillIn8BitTextRange([I)V
    .locals 2

    invoke-static {p0}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillInCommonTextRange([I)V

    const/16 v0, 0x3c

    const/16 v1, 0x9

    aput v1, p0, v0

    const/16 v0, 0x26

    const/16 v1, 0xa

    aput v1, p0, v0

    const/16 v0, 0x5d

    const/16 v1, 0xb

    aput v1, p0, v0

    return-void
.end method

.method private static fillInCommonTextRange([I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    const/4 v2, 0x2

    aput v2, p0, v1

    const/16 v1, 0xa

    const/4 v2, 0x3

    aput v2, p0, v1

    const/16 v1, 0x9

    aput v0, p0, v1

    return-void
.end method

.method public static fillInLatin1Chars([I[I[I[I[I)V
    .locals 0

    invoke-static {p0}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitTextRange([I)V

    invoke-static {p1}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitAttrRange([I)V

    invoke-static {p2}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitNameRange([I)V

    const/16 p0, 0xc0

    :goto_0
    const/16 p1, 0xff

    if-gt p0, p1, :cond_1

    const/16 p1, 0xd7

    if-eq p0, p1, :cond_0

    const/16 p1, 0xf7

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    aput p1, p2, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0xb7

    const/4 p1, 0x2

    aput p1, p2, p0

    invoke-static {p3}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitDtdRange([I)V

    invoke-static {p4}, Lcom/fasterxml/aalto/util/XmlCharTypes;->fillIn8BitTextRange([I)V

    const/16 p0, 0x26

    const/4 p1, 0x0

    aput p1, p4, p0

    const/16 p0, 0x3c

    aput p1, p4, p0

    const/16 p0, 0x5d

    const/16 p1, 0xb

    aput p1, p4, p0

    const/16 p0, 0x3f

    const/16 p1, 0xc

    aput p1, p4, p0

    const/16 p0, 0x2d

    const/16 p1, 0xd

    aput p1, p4, p0

    return-void
.end method
