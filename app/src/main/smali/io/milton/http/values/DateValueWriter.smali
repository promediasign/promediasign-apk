.class public Lio/milton/http/values/DateValueWriter;
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

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p3}, Lio/milton/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Lio/milton/http/DateUtils$DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    const-class p1, Ljava/util/Date;

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

    if-nez p5, :cond_0

    invoke-virtual {p1, p3, p4}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p5, Ljava/util/Date;

    invoke-static {p5}, Lio/milton/http/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p4, p2}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
