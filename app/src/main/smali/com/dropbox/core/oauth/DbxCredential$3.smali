.class final Lcom/dropbox/core/oauth/DbxCredential$3;
.super Lcom/dropbox/core/json/JsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/oauth/DbxCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonWriter<",
        "Lcom/dropbox/core/oauth/DbxCredential;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/json/JsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/dropbox/core/oauth/DbxCredential;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_token"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$000(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$100(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$100(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "expires_at"

    invoke-virtual {p2, v2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$200(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "refresh_token"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$200(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$300(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "app_key"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$300(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$400(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "app_secret"

    invoke-static {p1}, Lcom/dropbox/core/oauth/DbxCredential;->access$400(Lcom/dropbox/core/oauth/DbxCredential;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/dropbox/core/oauth/DbxCredential;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/oauth/DbxCredential$3;->write(Lcom/dropbox/core/oauth/DbxCredential;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
