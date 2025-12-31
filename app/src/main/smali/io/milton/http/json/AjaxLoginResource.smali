.class public Lio/milton/http/json/AjaxLoginResource;
.super Lio/milton/http/json/JsonResource;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/GetableResource;
.implements Lio/milton/resource/PostableResource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/milton/resource/Resource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lio/milton/http/json/JsonResource;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public applicableMethod()Lio/milton/http/Request$Method;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->GET:Lio/milton/http/Request$Method;

    return-object v0
.end method

.method public processForm(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lio/milton/http/Range;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance p2, Lnet/sf/json/JSONObject;

    invoke-direct {p2}, Lnet/sf/json/JSONObject;-><init>()V

    invoke-static {}, Lio/milton/http/HttpManager;->request()Lio/milton/http/Request;

    move-result-object p3

    invoke-interface {p3}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p4

    const-string v0, "loginResult"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p2, v0, p4}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    invoke-interface {p3}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p3

    const-string p4, "userUrl"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4, p3}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    :cond_0
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p4, Ljava/io/PrintWriter;

    invoke-direct {p4, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p4}, Lnet/sf/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    invoke-virtual {p4}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
