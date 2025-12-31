.class public Ludt/packets/NegativeAcknowledgement;
.super Ludt/packets/ControlPacket;
.source "SourceFile"


# instance fields
.field lossInfo:Ljava/io/ByteArrayOutputStream;

.field lostSequenceNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ludt/packets/ControlPacket;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ludt/packets/NegativeAcknowledgement;->lossInfo:Ljava/io/ByteArrayOutputStream;

    sget-object v0, Ludt/packets/ControlPacket$ControlPacketType;->NAK:Ludt/packets/ControlPacket$ControlPacketType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ludt/packets/ControlPacket;->controlPacketType:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ludt/packets/NegativeAcknowledgement;-><init>()V

    invoke-direct {p0, p1}, Ludt/packets/NegativeAcknowledgement;->decode([B)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ludt/packets/NegativeAcknowledgement;->lostSequenceNumbers:Ljava/util/List;

    return-void
.end method

.method private decode([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [B

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v1, v2

    aget-byte v2, v1, v3

    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    :goto_2
    if-gt v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public addLossInfo(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Ludt/packets/PacketUtil;->encodeSetHighest(ZJ)[B

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Ludt/packets/NegativeAcknowledgement;->lossInfo:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public addLossInfo(JJ)V
    .locals 5

    .line 2
    sub-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, p2}, Ludt/packets/NegativeAcknowledgement;->addLossInfo(J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Ludt/packets/PacketUtil;->encodeSetHighest(ZJ)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p3, p4}, Ludt/packets/PacketUtil;->encodeSetHighest(ZJ)[B

    move-result-object p2

    :try_start_0
    iget-object p3, p0, Ludt/packets/NegativeAcknowledgement;->lossInfo:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Ludt/packets/NegativeAcknowledgement;->lossInfo:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public addLossInfo(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :cond_0
    sub-long v12, v9, v4

    int-to-long v14, v8

    cmp-long v16, v12, v14

    if-eqz v16, :cond_3

    cmp-long v8, v9, v6

    if-nez v8, :cond_1

    invoke-virtual {v0, v4, v5}, Ludt/packets/NegativeAcknowledgement;->addLossInfo(J)V

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ludt/packets/NegativeAcknowledgement;->addLossInfo(JJ)V

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_2

    return-void

    :cond_2
    move v3, v11

    goto :goto_0

    :cond_3
    move v3, v11

    goto :goto_1
.end method

.method public encodeControlInformation()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Ludt/packets/NegativeAcknowledgement;->lossInfo:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ludt/packets/ControlPacket;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Ludt/packets/NegativeAcknowledgement;

    iget-object v0, p0, Ludt/packets/NegativeAcknowledgement;->lostSequenceNumbers:Ljava/util/List;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ludt/packets/NegativeAcknowledgement;->lossInfo:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ludt/packets/NegativeAcknowledgement;->decode([B)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Ludt/packets/NegativeAcknowledgement;->lostSequenceNumbers:Ljava/util/List;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p1, Ludt/packets/NegativeAcknowledgement;->lossInfo:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ludt/packets/NegativeAcknowledgement;->decode([B)Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDecodedLossInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ludt/packets/NegativeAcknowledgement;->lostSequenceNumbers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ludt/packets/NegativeAcknowledgement;->lostSequenceNumbers:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
