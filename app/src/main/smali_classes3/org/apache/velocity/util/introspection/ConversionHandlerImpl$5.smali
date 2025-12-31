.class final Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/velocity/util/introspection/Converter<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x80

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x7f

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v2, "value out of range for byte type: "

    .line 1
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;->convert(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
