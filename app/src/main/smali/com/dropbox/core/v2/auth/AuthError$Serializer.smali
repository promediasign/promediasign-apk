.class public Lcom/dropbox/core/v2/auth/AuthError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/auth/AuthError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/auth/AuthError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/auth/AuthError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/auth/AuthError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AuthError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/AuthError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AuthError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/AuthError;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_9

    const-string v3, "invalid_access_token"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError;->INVALID_ACCESS_TOKEN:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_1
    const-string v3, "invalid_select_user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError;->INVALID_SELECT_USER:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_2
    const-string v3, "invalid_select_admin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError;->INVALID_SELECT_ADMIN:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_3
    const-string v3, "user_suspended"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError;->USER_SUSPENDED:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_4
    const-string v3, "expired_access_token"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError;->EXPIRED_ACCESS_TOKEN:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_5
    const-string v3, "missing_scope"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/auth/TokenScopeError;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/v2/auth/AuthError;->missingScope(Lcom/dropbox/core/v2/auth/TokenScopeError;)Lcom/dropbox/core/v2/auth/AuthError;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v2, "route_access_denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError;->ROUTE_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError;->OTHER:Lcom/dropbox/core/v2/auth/AuthError;

    :goto_1
    if-nez v1, :cond_8

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/auth/AuthError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/AuthError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/auth/AuthError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError$1;->$SwitchMap$com$dropbox$core$v2$auth$AuthError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/auth/AuthError;->tag()Lcom/dropbox/core/v2/auth/AuthError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    :goto_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string p1, "route_access_denied"

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "missing_scope"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object v0, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AuthError;->access$000(Lcom/dropbox/core/v2/auth/AuthError;)Lcom/dropbox/core/v2/auth/TokenScopeError;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/TokenScopeError;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_1

    :pswitch_2
    const-string p1, "expired_access_token"

    goto :goto_0

    :pswitch_3
    const-string p1, "user_suspended"

    goto :goto_0

    :pswitch_4
    const-string p1, "invalid_select_admin"

    goto :goto_0

    :pswitch_5
    const-string p1, "invalid_select_user"

    goto :goto_0

    :pswitch_6
    const-string p1, "invalid_access_token"

    goto :goto_0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/dropbox/core/v2/auth/AuthError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/auth/AuthError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/AuthError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
