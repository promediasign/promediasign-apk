.class Lorg/jdom/output/Format$DefaultEscapeStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jdom/output/EscapeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/output/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultEscapeStrategy"
.end annotation


# instance fields
.field private bits:I

.field canEncode:Ljava/lang/reflect/Method;

.field encoder:Ljava/lang/Object;

.field private final synthetic this$0:Lorg/jdom/output/Format;


# direct methods
.method public constructor <init>(Lorg/jdom/output/Format;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->this$0:Lorg/jdom/output/Format;

    const-string p1, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "UTF-16"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p1, "ISO-8859-1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Latin1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "US-ASCII"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "ASCII"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    :try_start_0
    const-string p1, "java.nio.charset.Charset"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "java.nio.charset.CharsetEncoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "forName"

    sget-object v4, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;

    if-nez v4, :cond_3

    const-string v4, "java.lang.String"

    invoke-static {v4}, Lorg/jdom/output/Format;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;

    :cond_3
    new-array v5, v0, [Ljava/lang/Class;

    aput-object v4, v5, v1

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const/4 p2, 0x0

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "newEncoder"

    invoke-virtual {p1, v4, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->encoder:Ljava/lang/Object;

    const-string p1, "canEncode"

    new-array p2, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v1

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->canEncode:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_4
    :goto_0
    const/4 p1, 0x7

    :goto_1
    iput p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    goto :goto_4

    :cond_5
    :goto_2
    const/16 p1, 0x8

    goto :goto_1

    :cond_6
    :goto_3
    const/16 p1, 0x10

    goto :goto_1

    :catch_0
    :goto_4
    return-void
.end method


# virtual methods
.method public shouldEscape(C)Z
    .locals 5

    iget v0, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lorg/jdom/Verifier;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    const/16 v0, 0x7f

    if-le p1, v0, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    invoke-static {p1}, Lorg/jdom/Verifier;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    iget-object v0, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->canEncode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->encoder:Ljava/lang/Object;

    if-eqz v1, :cond_7

    :try_start_0
    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v4, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v3

    return p1

    :catch_0
    :cond_7
    return v2
.end method
