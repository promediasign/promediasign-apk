.class public Lorg/apache/poi/hpsf/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CODEPAGE:I = 0x4e4

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private id:J

.field private type:J

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/Property;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Property;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    iput-wide p3, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iput-object p5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    long-to-int p2, p1

    int-to-long p1, p2

    :try_start_0
    invoke-static {p3, p4, p1, p2, p5}, Lorg/apache/poi/hpsf/VariantSupport;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;IJI)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/VariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string p2, "Dictionary not allowed here"

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(J[BJII)V
    .locals 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    long-to-int p1, p4

    invoke-static {p3, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p4

    iput-wide p4, p0, Lorg/apache/poi/hpsf/Property;->type:J

    add-int/lit8 v1, p1, 0x4

    long-to-int p1, p4

    int-to-long v3, p1

    move-object v0, p3

    move v2, p6

    move v5, p7

    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/hpsf/VariantSupport;->read([BIIJI)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/VariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string p2, "Dictionary not allowed here"

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 6

    .line 5
    iget-wide v1, p1, Lorg/apache/poi/hpsf/Property;->id:J

    iget-wide v3, p1, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v5, p1, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    return-void
.end method

.method private decodeValueFromID()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    long-to-int v2, v1

    const/high16 v1, -0x80000000

    if-eq v2, v1, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/LocaleUtil;->getLocaleFromLCID(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v1, Lorg/apache/poi/hpsf/Property;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t decode id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVariantName()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "dictionary"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Variant;->getVariantName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private typesAreEqual(JJ)Z
    .locals 5

    cmp-long v0, p1, p3

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1f

    const-wide/16 v2, 0x1e

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    cmp-long v4, p3, v0

    if-eqz v4, :cond_2

    :cond_0
    cmp-long v4, p3, v2

    if-nez v4, :cond_1

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static unpaddedLength([B)I
    .locals 2

    array-length v0, p0

    :goto_0
    if-lez v0, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lorg/apache/poi/hpsf/Property;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/poi/hpsf/Property;->id:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/poi/hpsf/Property;->typesAreEqual(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_9

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    instance-of v3, p1, [B

    if-eqz v3, :cond_8

    check-cast p1, [B

    check-cast v0, [B

    invoke-static {p1}, Lorg/apache/poi/hpsf/Property;->unpaddedLength([B)I

    move-result v3

    invoke-static {v0}, Lorg/apache/poi/hpsf/Property;->unpaddedLength([B)I

    move-result v4

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-byte v5, p1, v4

    aget-byte v6, v0, v4

    if-eq v5, v6, :cond_6

    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_1
    return v1
.end method

.method public getID()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->id:J

    return-wide v0
.end method

.method public getSize(I)I
    .locals 6

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Variant;->getVariantLength(J)I

    move-result v0

    if-gez v0, :cond_4

    iget-wide v1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, -0x2

    if-eq v0, v3, :cond_3

    const-wide/16 v3, 0x1e

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x1f

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v2, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x8

    and-int/lit8 v0, p1, 0x3

    rsub-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    return p1

    :catch_0
    new-instance p1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v2, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return v0
.end method

.method public getType()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->id:J

    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_0
    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public setID(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    return-void
.end method

.method public setType(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x4e4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Property;->toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Property[id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v6, v1, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getFallbackProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    iget-wide v6, v1, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v6, ")"

    const-string v7, " ("

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v5, v7, v0, v6}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_2
    const-string v0, ", type: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->getVariantName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") , value: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    const-string v9, "\n"

    if-eqz v8, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move/from16 v0, p1

    :try_start_0
    invoke-virtual {v1, v6, v0}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    sget-object v0, Lorg/apache/poi/hpsf/Property;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "can\'t serialize string"

    aput-object v8, v3, v4

    aput-object v7, v3, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_a

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-wide/16 v3, -0x8

    invoke-static {v0, v3, v4, v2}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    instance-of v8, v0, [B

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, [B

    array-length v2, v0

    if-lez v2, :cond_a

    invoke-static {v0, v10, v11, v4}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    instance-of v8, v0, Ljava/util/Date;

    if-eqz v8, :cond_7

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v6

    invoke-static {v0}, Lorg/apache/poi/hpsf/Filetime;->isUndefined(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v0, "<undefined>"

    goto/16 :goto_3

    :cond_5
    const/16 v8, 0x20

    ushr-long v8, v6, v8

    cmp-long v12, v8, v10

    if-nez v12, :cond_6

    const-wide/16 v8, 0x64

    mul-long v6, v6, v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    sub-long/2addr v6, v12

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    sub-long/2addr v6, v14

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v4

    aput-object v9, v7, v2

    aput-object v10, v7, v3

    const/4 v2, 0x3

    aput-object v6, v7, v2

    const-string v2, "%02d:%02d:%02d.%03d"

    invoke-static {v0, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    sget-object v2, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverter;->printDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-wide v2, v1, Lorg/apache/poi/hpsf/Property;->type:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_9

    const-wide/16 v8, 0x1

    cmp-long v4, v2, v8

    if-eqz v4, :cond_9

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hpsf/Property;->decodeValueFromID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4
    invoke-static {v5, v7, v0, v6}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 5
    :cond_9
    :goto_2
    const-string v0, "null"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_4
    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;I)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/16 v2, 0x4b0

    if-eq p2, v2, :cond_1

    if-lez p2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    const/16 v2, 0x4e4

    :goto_0
    invoke-static {v2}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x1f

    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p2}, Lorg/apache/poi/hpsf/VariantSupport;->write(Ljava/io/OutputStream;JLjava/lang/Object;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method
