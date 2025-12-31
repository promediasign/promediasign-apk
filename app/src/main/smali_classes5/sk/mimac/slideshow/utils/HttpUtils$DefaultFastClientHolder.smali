.class abstract Lsk/mimac/slideshow/utils/HttpUtils$DefaultFastClientHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultFastClientHolder"
.end annotation


# static fields
.field static final defaultClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/utils/HttpUtils$DefaultFastClientHolder;->createClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/HttpUtils$DefaultFastClientHolder;->defaultClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static createClient()Lokhttp3/OkHttpClient;
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/utils/HttpUtils$UserAgentInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lsk/mimac/slideshow/utils/HttpUtils$UserAgentInterceptor;-><init>(Lsk/mimac/slideshow/utils/HttpUtils$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->HTTPS_DISABLE_SECURITY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/HttpUtils;->access$100(Lokhttp3/OkHttpClient$Builder;)V

    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
