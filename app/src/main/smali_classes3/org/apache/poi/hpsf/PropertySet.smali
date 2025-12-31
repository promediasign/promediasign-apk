.class public Lorg/apache/poi/hpsf/PropertySet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OS_MACINTOSH:I = 0x1

.field public static final OS_WIN16:I = 0x0

.field public static final OS_WIN32:I = 0x2


# instance fields
.field private byteOrder:I

.field private classID:Lorg/apache/poi/hpsf/ClassID;

.field private format:I

.field private osVersion:I

.field private final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const v0, 0xfffe

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    const v0, 0x20a04

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {p1}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setByteOrder(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setFormat(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setOSVersion(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setClassID(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v2, v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>(Lorg/apache/poi/hpsf/Section;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {p1}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw p1
.end method

.method public static getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    check-cast p0, [B

    array-length v0, p0

    const-string v1, ""

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v0, 0x4e4

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getUInt([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init([BII)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    .line 6
    .line 7
    add-int/lit8 p3, p2, 0x2

    .line 8
    .line 9
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    .line 14
    .line 15
    add-int/lit8 p3, p2, 0x4

    .line 16
    .line 17
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int p3, v0

    .line 22
    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 23
    .line 24
    add-int/lit8 p3, p2, 0x8

    .line 25
    .line 26
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    .line 27
    .line 28
    invoke-direct {v0, p1, p3}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 32
    .line 33
    add-int/lit8 p3, p2, 0x18

    .line 34
    .line 35
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    add-int/lit8 p2, p2, 0x1c

    .line 40
    .line 41
    if-ltz p3, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-ge v0, p3, :cond_0

    .line 45
    .line 46
    new-instance v1, Lorg/apache/poi/hpsf/MutableSection;

    .line 47
    .line 48
    invoke-direct {v1, p1, p2}, Lorg/apache/poi/hpsf/MutableSection;-><init>([BI)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p2, p2, 0x14

    .line 52
    .line 53
    iget-object v2, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance p1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    .line 63
    .line 64
    const-string p2, "Section count "

    .line 65
    .line 66
    const-string v0, " is negative."

    .line 67
    .line 68
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public static isPropertySetStream(Ljava/io/InputStream;)Z
    .locals 2

    .line 1
    const/16 v0, 0x32

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/EmptyFileException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static isPropertySetStream([BII)Z
    .locals 3

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    add-int/lit8 v0, p1, 0x2

    const v1, 0xfffe

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x18

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static varargs matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equalsInverted(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public addSection(Lorg/apache/poi/hpsf/Section;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearSections()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/apache/poi/hpsf/PropertySet;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/hpsf/PropertySet;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v10

    if-ne v1, v2, :cond_2

    invoke-virtual {v3, v4}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v5, v6, :cond_2

    if-ne v7, v8, :cond_2

    if-eq v9, v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public getByteOrder()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return v0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getFirstSection()Lorg/apache/poi/hpsf/Section;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/MissingSectionException;

    const-string v1, "Property set does not contain any sections."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/MissingSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return v0
.end method

.method public getOSVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyBooleanValue(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Section;->getPropertyBooleanValue(I)Z

    move-result p1

    return p1
.end method

.method public getPropertyIntValue(I)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getPropertyIntValue(J)I

    move-result p1

    return p1
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSingleSection()Lorg/apache/poi/hpsf/Section;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/apache/poi/hpsf/Section;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/NoSingleSectionException;

    .line 19
    .line 20
    const-string v2, "Property set contains "

    .line 21
    .line 22
    const-string v3, " sections."

    .line 23
    .line 24
    invoke-static {v0, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/NoSingleSectionException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FIXME: Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDocumentSummaryInformation()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSummaryInformation()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    new-array v3, v1, [Lorg/apache/poi/hpsf/ClassID;

    sget-object v4, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public remove1stProperty(J)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    return-void
.end method

.method public set1stProperty(JI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    return-void
.end method

.method public set1stProperty(JLjava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public set1stProperty(JZ)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(IZ)V

    return-void
.end method

.method public set1stProperty(J[B)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setByteOrder(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return-void
.end method

.method public setClassID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return-void
.end method

.method public setOSVersion(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[byteOrder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", classID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", OSVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sectionCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sections: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/Section;->toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasNull()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->wasNull()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1c

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1, v3}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V

    int-to-long v3, v0

    invoke-static {v3, v4, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;->getReason()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/UnsupportedEncodingException;

    if-eqz v1, :cond_0

    new-instance p1, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {p1, v0}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/hpsf/NoFormatIDException;

    invoke-direct {p1}, Lorg/apache/poi/hpsf/NoFormatIDException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hpsf/Section;->write(Ljava/io/OutputStream;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method
