.class public abstract Lcom/google/api/client/googleapis/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/util/Utils$TransportInstanceHolder;,
        Lcom/google/api/client/googleapis/util/Utils$JsonFactoryInstanceHolder;
    }
.end annotation


# direct methods
.method public static getDefaultJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    sget-object v0, Lcom/google/api/client/googleapis/util/Utils$JsonFactoryInstanceHolder;->INSTANCE:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public static getDefaultTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    sget-object v0, Lcom/google/api/client/googleapis/util/Utils$TransportInstanceHolder;->INSTANCE:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method
