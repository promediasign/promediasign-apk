.class public interface abstract Lio/milton/resource/GetableResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/Resource;


# virtual methods
.method public abstract getContentLength()Ljava/lang/Long;
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;
.end method

.method public abstract sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V
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
.end method
