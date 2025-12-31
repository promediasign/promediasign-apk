.class Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/FileLockMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/files/FileLockMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileLockMetadata;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_7

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "is_lockholder"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v5, "lockholder_name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1
    invoke-static {p1}, Lch/qos/logback/core/joran/util/a;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, "lockholder_account_id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3
    invoke-static {p1}, Lch/qos/logback/core/joran/util/a;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, "created"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/files/FileLockMetadata;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/dropbox/core/v2/files/FileLockMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/FileLockMetadata;->toStringMultiline()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/dropbox/core/stone/StoneDeserializerLogger;->log(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "No subtype found that matches tag: \""

    const-string v2, "\""

    .line 5
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileLockMetadata;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/files/FileLockMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->isLockholder:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const-string v0, "is_lockholder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->isLockholder:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "lockholder_name"

    .line 1
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderAccountId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "lockholder_account_id"

    .line 3
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->created:Ljava/util/Date;

    if-eqz v0, :cond_4

    const-string v0, "created"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->created:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_5
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0

    .line 8
    check-cast p1, Lcom/dropbox/core/v2/files/FileLockMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileLockMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
