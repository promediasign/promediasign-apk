.class Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthenticationInterceptor"
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;->this$0:Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;->userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;->password:Ljava/lang/String;

    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->standardUTF8()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
