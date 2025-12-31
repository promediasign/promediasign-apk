.class public Lio/milton/http/values/WrappedHrefWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/values/ValueWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    const-class p1, Lio/milton/http/values/WrappedHref;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public writeValue(Lio/milton/http/XmlWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3, p4}, Lio/milton/http/XmlWriter;->open(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, LA/g;->x(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p4}, Lio/milton/http/XmlWriter;->close(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
