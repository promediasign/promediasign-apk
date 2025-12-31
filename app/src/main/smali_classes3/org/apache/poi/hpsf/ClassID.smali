.class public Lorg/apache/poi/hpsf/ClassID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EQUATION30:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2003:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2007:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2007_XLSB:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2010:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2010_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL2010_ODS:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL95:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL95_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL97:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL97_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL_V3:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL_V3_CHART:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL_V3_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final LENGTH:I = 0x10

.field public static final OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT2007:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT95:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT97:Lorg/apache/poi/hpsf/ClassID;

.field public static final PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

.field public static final TXT_ONLY:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD2007:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD95:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD97:Lorg/apache/poi/hpsf/ClassID;

.field public static final XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;


# instance fields
.field private final bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{0003000C-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{64818D10-4F9B-11CF-86EA-00AA00B929E8}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020841-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{5e941d80-bf96-11cd-b579-08002b30bfeb}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->TXT_ONLY:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00030000-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL_V3:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00030001-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL_V3_CHART:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00030002-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL_V3_MACRO:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020810-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL95:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020811-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL95_CHART:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020820-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL97:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020821-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL97_CHART:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020812-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2003:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020830-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020832-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020833-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2007_XLSB:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00024500-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00024505-0014-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010_CHART:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{EABCECDB-CC1C-4A6F-B4E3-7F888A5ADFC8}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL2010_ODS:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020906-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD97:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020900-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD95:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{F4754C9B-64F5-4B40-8AF4-679732AC0607}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD2007:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{18A06B6B-2F3F-4E2B-A611-52BE631B2D22}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT97:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{EA7BAE70-FB3B-11CD-A903-00AA00510EA3}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT95:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{CF4F55F4-8F87-4D47-80BB-5808164BB3F8}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{DC020317-E6E2-4A62-B9FA-B3EFE16626F4}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT2007_MACRO:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{0002CE02-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EQUATION30:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const-string v1, "[{}-]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/ClassID;->read([BI)[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hpsf/ClassID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    check-cast p1, Lorg/apache/poi/hpsf/ClassID;

    iget-object p1, p1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equalsInverted(Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 7

    iget-object p1, p1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v3, 0x3

    aget-byte v4, v2, v3

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    aget-byte v4, p1, v1

    const/4 v5, 0x2

    aget-byte v6, v2, v5

    if-ne v4, v6, :cond_0

    aget-byte v4, p1, v5

    aget-byte v5, v2, v1

    if-ne v4, v5, :cond_0

    aget-byte v3, p1, v3

    aget-byte v4, v2, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x4

    aget-byte v4, p1, v3

    const/4 v5, 0x5

    aget-byte v6, v2, v5

    if-ne v4, v6, :cond_0

    aget-byte v4, p1, v5

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x6

    aget-byte v4, p1, v3

    const/4 v5, 0x7

    aget-byte v6, v2, v5

    if-ne v4, v6, :cond_0

    aget-byte v4, p1, v5

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0x8

    aget-byte v4, p1, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0x9

    aget-byte v4, p1, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0xa

    aget-byte v4, p1, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0xb

    aget-byte v4, p1, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0xc

    aget-byte v4, p1, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0xd

    aget-byte v4, p1, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0xe

    aget-byte v4, p1, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0xf

    aget-byte p1, p1, v3

    aget-byte v2, v2, v3

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public read([BI)[B
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    aget-byte v1, p1, p2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    add-int/2addr p2, v1

    invoke-static {p1, p2, v0, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object p1
.end method

.method public setBytes([B)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([BI)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    aget-byte v1, v0, v1

    .line 10
    .line 11
    aput-byte v1, p1, p2

    .line 12
    .line 13
    add-int/lit8 v1, p2, 0x1

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    aget-byte v2, v0, v2

    .line 17
    .line 18
    aput-byte v2, p1, v1

    .line 19
    .line 20
    add-int/lit8 v1, p2, 0x2

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aget-byte v2, v0, v2

    .line 24
    .line 25
    aput-byte v2, p1, v1

    .line 26
    .line 27
    add-int/lit8 v1, p2, 0x3

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aget-byte v2, v0, v2

    .line 31
    .line 32
    aput-byte v2, p1, v1

    .line 33
    .line 34
    add-int/lit8 v1, p2, 0x4

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    aget-byte v2, v0, v2

    .line 38
    .line 39
    aput-byte v2, p1, v1

    .line 40
    .line 41
    add-int/lit8 v1, p2, 0x5

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    aget-byte v2, v0, v2

    .line 45
    .line 46
    aput-byte v2, p1, v1

    .line 47
    .line 48
    add-int/lit8 v1, p2, 0x6

    .line 49
    .line 50
    const/4 v2, 0x7

    .line 51
    aget-byte v2, v0, v2

    .line 52
    .line 53
    aput-byte v2, p1, v1

    .line 54
    .line 55
    add-int/lit8 v1, p2, 0x7

    .line 56
    .line 57
    const/4 v2, 0x6

    .line 58
    aget-byte v2, v0, v2

    .line 59
    .line 60
    aput-byte v2, p1, v1

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    add-int/2addr p2, v1

    .line 65
    invoke-static {v0, v1, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    new-instance p2, Ljava/lang/ArrayStoreException;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "Destination byte[] must have room for at least 16 bytes, but has a length of only "

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    array-length p1, p1

    .line 79
    const-string v1, "."

    .line 80
    .line 81
    invoke-static {v1, p1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p2
.end method
