.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 26

    move/from16 v0, p1

    move-object/from16 v6, p2

    and-int/lit8 v1, v0, 0x8

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-static {v0, v9}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishQos(IZ)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v13

    and-int/2addr v0, v8

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v10, 0x3

    if-lt v0, v10, :cond_20

    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v0

    if-eqz v0, :cond_1f

    array-length v1, v0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v12, v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedTopic()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_3
    const/4 v12, 0x0

    :goto_2
    invoke-static {v13, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishPacketIdentifier(Lcom/hivemq/client/mqtt/datatypes/MqttQos;Lio/netty/buffer/ByteBuf;)I

    move-result v15

    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyLength(Lio/netty/buffer/ByteBuf;)I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v16

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v18

    sub-int v10, v18, v16

    if-ge v10, v5, :cond_14

    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v10

    if-eq v10, v8, :cond_11

    const/4 v8, 0x2

    if-eq v10, v8, :cond_10

    const/4 v8, 0x3

    if-eq v10, v8, :cond_f

    const/16 v8, 0x8

    if-eq v10, v8, :cond_c

    const/16 v8, 0x9

    if-eq v10, v8, :cond_b

    const/16 v8, 0xb

    if-eq v10, v8, :cond_7

    const/16 v8, 0x23

    if-eq v10, v8, :cond_5

    const/16 v8, 0x26

    if-ne v10, v8, :cond_4

    invoke-static {v7, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserProperty(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v7

    :goto_4
    move v8, v5

    goto/16 :goto_8

    :cond_4
    invoke-static {v10}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_5
    const-string v8, "topic alias"

    const/4 v10, 0x0

    invoke-static {v11, v10, v8, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(IILjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v11

    if-eqz v11, :cond_6

    :goto_5
    goto :goto_4

    :cond_6
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v23, :cond_8

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/a;->a()Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;

    move-result-object v23

    :cond_8
    move-object/from16 v8, v23

    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->decode(Lio/netty/buffer/ByteBuf;)I

    move-result v10

    if-ltz v10, :cond_a

    if-eqz v10, :cond_9

    invoke-virtual {v8, v10}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->add(I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;

    move-object/from16 v23, v8

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "subscription identifier must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "malformed subscription identifier"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v8, "correlation data"

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->useDirectBufferCorrelationData()Z

    move-result v10

    invoke-static {v3, v8, v6, v10}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeBinaryDataOnlyOnce(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_4

    :cond_c
    if-nez v19, :cond_e

    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v19

    if-eqz v19, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "malformed response topic"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v0, "response topic"

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_f
    const-string v8, "content type"

    invoke-static {v2, v8, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    goto :goto_4

    :cond_10
    const-wide v21, 0x7fffffffffffffffL

    const-string v8, "message expiry interval"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v2, v21

    move-object v10, v4

    move-object v4, v8

    move v8, v5

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedIntOnlyOnce(JJLjava/lang/String;Lio/netty/buffer/ByteBuf;)J

    move-result-wide v0

    move-object v4, v10

    :goto_6
    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_8

    :cond_11
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object v10, v4

    move v8, v5

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    :goto_7
    const-string v2, "payload format indicator"

    invoke-static {v10, v2, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedByteOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)S

    move-result v2

    invoke-static {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v4

    if-eqz v4, :cond_13

    goto :goto_6

    :goto_8
    move v5, v8

    const/4 v8, 0x1

    const/4 v10, 0x3

    goto/16 :goto_3

    :cond_13
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong payload format indicator: "

    .line 2
    invoke-static {v2, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move v8, v5

    if-ne v10, v8, :cond_1e

    if-eqz v11, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->getTopicAliasMapping()[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v2

    if-eqz v2, :cond_17

    array-length v3, v2

    if-gt v11, v3, :cond_17

    add-int/lit8 v3, v11, -0x1

    if-nez v12, :cond_16

    aget-object v12, v2, v3

    if-eqz v12, :cond_15

    goto :goto_9

    :cond_15
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias has no mapping"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_16
    aput-object v12, v2, v3

    const/high16 v2, 0x10000

    or-int/2addr v11, v2

    :goto_9
    move v2, v11

    move-object v11, v12

    goto :goto_a

    :cond_17
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias must not exceed topic alias maximum"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz v12, :cond_1d

    goto :goto_9

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    if-lez v3, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->useDirectBufferPayload()Z

    move-result v5

    invoke-static {v3, v5}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->allocate(IZ)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->UTF_8:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-ne v4, v5, :cond_1a

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->validatePayloadFormat()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v3}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/hivemq/client/internal/util/Utf8Util;->isWellFormed([B)J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v8, v5, v16

    if-nez v8, :cond_19

    goto :goto_b

    :cond_19
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "payload is not valid UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_b
    move-object v12, v3

    goto :goto_c

    :cond_1b
    const/4 v12, 0x0

    :goto_c
    invoke-static {v7}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v21

    new-instance v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    const/16 v22, 0x0

    move-object v10, v3

    move v5, v15

    move-wide v15, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v24

    move-object/from16 v20, v25

    invoke-direct/range {v10 .. v22}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    if-nez v23, :cond_1c

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    goto :goto_d

    :cond_1c
    invoke-virtual/range {v23 .. v23}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object v0

    :goto_d
    invoke-virtual {v3, v5, v9, v2, v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias must be present if topic name is zero length"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedTopic()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_20
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0
.end method
