.class Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/files/MediaMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/MediaMetadata;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    if-nez v2, :cond_6

    move-object v0, v1

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "dimensions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/files/Dimensions;

    goto :goto_0

    :cond_2
    const-string v4, "location"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GpsCoordinates;

    goto :goto_0

    :cond_3
    const-string v4, "time_taken"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    :cond_5
    new-instance v3, Lcom/dropbox/core/v2/files/MediaMetadata;

    invoke-direct {v3, v1, v0, v2}, Lcom/dropbox/core/v2/files/MediaMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    sget-object v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    invoke-virtual {v0, p1, v1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/MediaMetadata;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string v0, "photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    invoke-virtual {v0, p1, v1}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PhotoMetadata;

    move-result-object v3

    goto :goto_1

    :cond_8
    const-string v0, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    invoke-virtual {v0, p1, v1}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/VideoMetadata;

    move-result-object v3

    :goto_1
    if-nez p2, :cond_9

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_9
    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/MediaMetadata;->toStringMultiline()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/dropbox/core/stone/StoneDeserializerLogger;->log(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_a
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "No subtype found that matches tag: \""

    const-string v1, "\""

    .line 1
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/MediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/files/MediaMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/PhotoMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/PhotoMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/files/VideoMetadata;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/VideoMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/VideoMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eqz v0, :cond_3

    const-string v0, "dimensions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    sget-object v0, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eqz v0, :cond_4

    const-string v0, "location"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    sget-object v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    if-eqz v0, :cond_5

    const-string v0, "time_taken"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/files/MediaMetadata;->timeTaken:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_5
    if-nez p3, :cond_6

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_6
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0

    .line 2
    check-cast p1, Lcom/dropbox/core/v2/files/MediaMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/MediaMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
