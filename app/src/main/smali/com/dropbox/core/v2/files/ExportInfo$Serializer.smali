.class Lcom/dropbox/core/v2/files/ExportInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ExportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/files/ExportInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ExportInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ExportInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ExportInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ExportInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ExportInfo$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ExportInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "export_as"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1
    invoke-static {p1}, Lch/qos/logback/core/joran/util/a;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/files/ExportInfo;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/files/ExportInfo;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ExportInfo;->toStringMultiline()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/dropbox/core/stone/StoneDeserializerLogger;->log(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_4
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "No subtype found that matches tag: \""

    const-string v2, "\""

    .line 3
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ExportInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ExportInfo;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ExportInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/files/ExportInfo;->exportAs:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "export_as"

    .line 1
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->d(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/dropbox/core/v2/files/ExportInfo;->exportAs:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_2
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0

    .line 6
    check-cast p1, Lcom/dropbox/core/v2/files/ExportInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ExportInfo$Serializer;->serialize(Lcom/dropbox/core/v2/files/ExportInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
