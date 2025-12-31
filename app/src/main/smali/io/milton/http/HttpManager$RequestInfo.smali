.class public Lio/milton/http/HttpManager$RequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/HttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestInfo"
.end annotation


# instance fields
.field private final method:Lio/milton/http/Request$Method;

.field private final started:Ljava/util/Date;

.field final synthetic this$0:Lio/milton/http/HttpManager;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/milton/http/HttpManager;Lio/milton/http/Request$Method;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/HttpManager$RequestInfo;->this$0:Lio/milton/http/HttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/http/HttpManager$RequestInfo;->method:Lio/milton/http/Request$Method;

    iput-object p3, p0, Lio/milton/http/HttpManager$RequestInfo;->url:Ljava/lang/String;

    iput-object p4, p0, Lio/milton/http/HttpManager$RequestInfo;->started:Ljava/util/Date;

    return-void
.end method
