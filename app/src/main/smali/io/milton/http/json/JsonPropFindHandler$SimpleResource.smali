.class public Lio/milton/http/json/JsonPropFindHandler$SimpleResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/json/JsonPropFindHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleResource"
.end annotation


# instance fields
.field private final r:Lio/milton/resource/Resource;

.field final synthetic this$0:Lio/milton/http/json/JsonPropFindHandler;


# direct methods
.method public constructor <init>(Lio/milton/http/json/JsonPropFindHandler;Lio/milton/resource/Resource;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/json/JsonPropFindHandler$SimpleResource;->this$0:Lio/milton/http/json/JsonPropFindHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/http/json/JsonPropFindHandler$SimpleResource;->r:Lio/milton/resource/Resource;

    return-void
.end method
