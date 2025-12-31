.class Lsk/mimac/slideshow/http/webdav/WebdavService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/auth/NonceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/http/webdav/WebdavService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/http/webdav/WebdavService;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/http/webdav/WebdavService;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/http/webdav/WebdavService$1;->this$0:Lsk/mimac/slideshow/http/webdav/WebdavService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNonce(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 0

    const-string p1, "nonce"

    return-object p1
.end method

.method public getNonceValidity(Ljava/lang/String;Ljava/lang/Long;)Lio/milton/http/http11/auth/NonceProvider$NonceValidity;
    .locals 0

    sget-object p1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->INVALID:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p1
.end method
