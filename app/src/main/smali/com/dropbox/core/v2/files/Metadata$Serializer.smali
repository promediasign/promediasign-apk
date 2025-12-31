.class Lcom/dropbox/core/v2/files/Metadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/files/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/Metadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/Metadata;
    .locals 6

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
    if-nez v2, :cond_8

    move-object v0, v1

    move-object v2, v0

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

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "path_lower"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1
    invoke-static {p1}, Lch/qos/logback/core/joran/util/a;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/String;

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
    if-eqz v1, :cond_7

    new-instance v4, Lcom/dropbox/core/v2/files/Metadata;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"name\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    sget-object v0, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    invoke-virtual {v0, p1, v1}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v4

    goto :goto_1

    :cond_9
    const-string v0, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-virtual {v0, p1, v1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v4

    goto :goto_1

    :cond_a
    const-string v0, "folder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    invoke-virtual {v0, p1, v1}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v4

    goto :goto_1

    :cond_b
    const-string v0, "deleted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    invoke-virtual {v0, p1, v1}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/DeletedMetadata;

    move-result-object v4

    :goto_1
    if-nez p2, :cond_c

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_c
    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->toStringMultiline()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/dropbox/core/stone/StoneDeserializerLogger;->log(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_d
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "No subtype found that matches tag: \""

    const-string v1, "\""

    .line 7
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/files/Metadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2

    instance-of v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/files/FolderMetadata;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/FolderMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/files/DeletedMetadata;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    check-cast p1, Lcom/dropbox/core/v2/files/DeletedMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeletedMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_3
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "path_lower"

    .line 1
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "path_display"

    .line 3
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/dropbox/core/v2/files/Metadata;->pathDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "parent_shared_folder_id"

    .line 5
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 6
    iget-object p1, p1, Lcom/dropbox/core/v2/files/Metadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_6
    if-nez p3, :cond_7

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_7
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0

    .line 10
    check-cast p1, Lcom/dropbox/core/v2/files/Metadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/Metadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/Metadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
