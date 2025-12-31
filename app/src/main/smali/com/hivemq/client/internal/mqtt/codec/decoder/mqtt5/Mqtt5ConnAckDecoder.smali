.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .locals 39

    .line 2
    move-object/from16 v0, p2

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;->tryDecodeMqtt3(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v2, p0

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    and-int/lit16 v4, v3, 0xfe

    if-nez v4, :cond_18

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    invoke-static {v3}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    move-result-object v6

    if-eqz v6, :cond_17

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    if-eq v6, v3, :cond_3

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "session present must be 0 if reason code is not SUCCESS"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->checkPropertyLengthNoPayload(Lio/netty/buffer/ByteBuf;)V

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const-wide/16 v10, -0x1

    const v12, 0x10000004

    move-object/from16 v17, v3

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0xffff

    const/4 v15, 0x0

    const v16, 0x10000004

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v35

    if-eqz v35, :cond_13

    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v35

    const-string v2, "receive maximum"

    packed-switch v35, :pswitch_data_0

    :pswitch_0
    invoke-static/range {v35 .. v35}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :pswitch_1
    const-string v2, "shared subscription available"

    invoke-static {v4, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/16 v34, 0x1

    goto :goto_3

    :cond_4
    const/16 v34, 0x0

    :goto_3
    or-int v27, v27, v34

    move/from16 v22, v2

    move/from16 v36, v7

    move/from16 v34, v31

    const/4 v4, -0x1

    const/16 v35, 0x1

    :goto_4
    move-object/from16 v31, v6

    move-object/from16 v6, v30

    :goto_5
    move/from16 v30, v26

    const/16 v26, 0x1

    goto/16 :goto_11

    :pswitch_2
    move/from16 v35, v4

    const/4 v2, 0x1

    const-string v4, "subscription identifier available"

    move/from16 v36, v7

    move/from16 v7, v33

    invoke-static {v7, v4, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v4

    if-eq v4, v2, :cond_5

    const/16 v34, 0x1

    goto :goto_6

    :cond_5
    const/16 v34, 0x0

    :goto_6
    or-int v27, v27, v34

    move/from16 v23, v4

    move/from16 v34, v31

    const/4 v4, -0x1

    const/16 v33, 0x1

    goto :goto_4

    :pswitch_3
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v7, v33

    const/4 v2, 0x1

    const-string v4, "wildcard subscription available"

    move/from16 v7, v32

    invoke-static {v7, v4, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v4

    if-eq v4, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    or-int v27, v27, v2

    move/from16 v21, v4

    move/from16 v34, v31

    const/4 v4, -0x1

    const/16 v32, 0x1

    goto :goto_4

    :pswitch_4
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v7, v32

    const-string v2, "maximum packet size"

    move/from16 v4, v31

    move-object/from16 v31, v6

    invoke-static {v4, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedIntOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)J

    move-result-wide v6

    const-wide/16 v37, 0x0

    cmp-long v2, v6, v37

    if-eqz v2, :cond_8

    const-wide/32 v37, 0x10000004

    cmp-long v2, v6, v37

    if-gez v2, :cond_7

    long-to-int v2, v6

    move/from16 v16, v2

    move-object/from16 v6, v30

    const/4 v4, -0x1

    const/16 v27, 0x1

    :goto_8
    const/16 v34, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v6, v30

    const/4 v4, -0x1

    goto :goto_8

    :cond_8
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "maximum packet size must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v31

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-static {v6, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserProperty(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v30

    move/from16 v34, v4

    move-object/from16 v6, v30

    const/4 v4, -0x1

    goto/16 :goto_5

    :pswitch_6
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v31

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    const-string v2, "retain available"

    move/from16 v7, v29

    invoke-static {v7, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_9

    const/16 v20, 0x1

    goto :goto_9

    :cond_9
    const/16 v20, 0x0

    :goto_9
    or-int v27, v27, v20

    move/from16 v20, v2

    move/from16 v34, v4

    move/from16 v30, v26

    const/4 v4, -0x1

    const/16 v26, 0x1

    const/16 v29, 0x1

    goto/16 :goto_11

    :pswitch_7
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v7, v29

    move/from16 v4, v31

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    const-string v2, "maximum Qos"

    move/from16 v29, v4

    move/from16 v4, v28

    invoke-static {v4, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedByteOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)S

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_b

    if-ne v2, v4, :cond_a

    goto :goto_a

    :cond_a
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "wrong maximum Qos"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_a
    invoke-static {v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v2

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v2, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    :goto_b
    or-int v27, v27, v4

    move-object/from16 v17, v2

    move/from16 v30, v26

    move/from16 v34, v29

    const/4 v4, -0x1

    const/16 v26, 0x1

    const/16 v28, 0x1

    :goto_c
    move/from16 v29, v7

    goto/16 :goto_11

    :pswitch_8
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-static {v4, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v19

    if-eqz v19, :cond_d

    const/4 v4, 0x1

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    :goto_d
    or-int v27, v27, v4

    move/from16 v34, v29

    const/4 v4, -0x1

    const/16 v30, 0x1

    goto :goto_c

    :pswitch_9
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-static {v5, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v14

    if-eqz v14, :cond_f

    const v2, 0xffff

    if-eq v14, v2, :cond_e

    const/4 v5, 0x1

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    :goto_e
    or-int v27, v27, v5

    move/from16 v30, v4

    move/from16 v34, v29

    const/4 v4, -0x1

    const/4 v5, 0x1

    goto :goto_c

    :cond_f
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "receive maximum must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :pswitch_a
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const v2, 0xffff

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeReasonString(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    :goto_f
    move/from16 v30, v4

    move/from16 v34, v29

    const/4 v4, -0x1

    goto :goto_c

    :pswitch_b
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const v2, 0xffff

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-static {v13, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeServerReference(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v13

    goto :goto_f

    :pswitch_c
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const v2, 0xffff

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->isResponseInformationRequested()Z

    move-result v25

    if-eqz v25, :cond_10

    const-string v2, "response information"

    invoke-static {v15, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v15

    goto :goto_f

    :cond_10
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "response information must not be included if it was not requested"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :pswitch_d
    move-object/from16 v2, p3

    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-static {v8, v0, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthData(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_f

    :pswitch_e
    move-object/from16 v2, p3

    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    invoke-static {v9, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthMethod(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v9

    goto :goto_f

    :pswitch_f
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v4, v26

    move/from16 v7, v29

    move/from16 v29, v31

    const/16 v26, 0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    const-string v2, "server keep alive"

    move/from16 v30, v4

    const/4 v4, -0x1

    invoke-static {v3, v4, v2, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(IILjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v3

    :goto_10
    move/from16 v34, v29

    goto/16 :goto_c

    :pswitch_10
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v7, v29

    move/from16 v29, v31

    const/4 v4, -0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    move/from16 v30, v26

    const/16 v26, 0x1

    const-string v2, "client identifier"

    if-nez v12, :cond_12

    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v12

    if-eqz v12, :cond_11

    goto :goto_10

    :cond_11
    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedUTF8String(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_12
    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :pswitch_11
    move/from16 v35, v4

    move/from16 v36, v7

    move/from16 v7, v29

    move/from16 v29, v31

    const/4 v4, -0x1

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    move/from16 v30, v26

    const/16 v26, 0x1

    invoke-static {v10, v11, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeSessionExpiryInterval(JLio/netty/buffer/ByteBuf;)J

    move-result-wide v10

    goto :goto_10

    :goto_11
    move-object/from16 v2, p0

    move/from16 v26, v30

    move/from16 v4, v35

    move/from16 v7, v36

    move-object/from16 v30, v6

    move-object/from16 v6, v31

    move/from16 v31, v34

    goto/16 :goto_2

    :cond_13
    move-object/from16 v31, v6

    move/from16 v36, v7

    move-object/from16 v6, v30

    if-eqz v9, :cond_14

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    invoke-direct {v0, v9, v8}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V

    goto :goto_12

    :cond_14
    if-nez v8, :cond_16

    const/4 v0, 0x0

    :goto_12
    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    if-eqz v27, :cond_15

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    move-object v4, v13

    move-object v13, v2

    move-object/from16 v24, v15

    move/from16 v15, v16

    move/from16 v16, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v23

    invoke-direct/range {v13 .. v21}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;-><init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V

    goto :goto_13

    :cond_15
    move-object v4, v13

    move-object/from16 v24, v15

    move-object v13, v2

    :goto_13
    invoke-static {v6}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v17

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-object v5, v2

    move-object/from16 v6, v31

    move/from16 v7, v36

    move-wide v8, v10

    move v10, v3

    move-object v11, v12

    move-object v12, v0

    move-object/from16 v14, v24

    move-object v15, v4

    move-object/from16 v16, v1

    invoke-direct/range {v5 .. v17}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v2

    :cond_16
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "auth data must not be included if auth method is absent"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongReasonCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_18
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong CONNACK flags, bits 7-1 must be 0"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public tryDecodeMqtt3(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .locals 14

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    sget-object v9, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    const/4 v12, 0x0

    sget-object v13, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v13}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1
.end method
