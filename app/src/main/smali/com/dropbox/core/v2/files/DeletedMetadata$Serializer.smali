.class Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/DeletedMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/files/DeletedMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/DeletedMetadata;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-nez v1, :cond_9

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "path_lower"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1
    invoke-static {p1}, Lch/qos/logback/core/joran/util/a;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v5, "path_display"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3
    invoke-static {p1}, Lch/qos/logback/core/joran/util/a;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v5, "parent_shared_folder_id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5
    invoke-static {p1}, Lch/qos/logback/core/joran/util/a;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_8

    new-instance v4, Lcom/dropbox/core/v2/files/DeletedMetadata;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/dropbox/core/v2/files/DeletedMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_7

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/DeletedMetadata;->toStringMultiline()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/dropbox/core/stone/StoneDeserializerLogger;->log(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_8
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"name\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "No subtype found that matches tag: \""

    const-string v2, "\""

    .line 7
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/DeletedMetadata;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeletedMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "deleted"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "path_lower"

    .line 1
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "path_display"

    .line 3
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "parent_shared_folder_id"

    .line 5
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 6
    iget-object p1, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_4
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0

    .line 10
    check-cast p1, Lcom/dropbox/core/v2/files/DeletedMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeletedMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
