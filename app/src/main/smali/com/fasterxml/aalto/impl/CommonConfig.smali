.class public abstract Lcom/fasterxml/aalto/impl/CommonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final sStdProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _flagMods:I

.field protected _flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/fasterxml/aalto/impl/CommonConfig;->sStdProperties:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "org.codehaus.stax2.implName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "org.codehaus.stax2.implVersion"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "org.codehaus.stax2.supportsXml11"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "org.codehaus.stax2.supportXmlId"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://java.sun.com/xml/stream/properties/implementation-name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    iput p2, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/aalto/impl/CommonConfig;->sStdProperties:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    const-string p1, "0.9"

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const-string p1, "aalto"

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_4
    :goto_0
    if-nez p2, :cond_5

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "Unrecognized property \'"

    .line 47
    .line 48
    const-string v1, "\'"

    .line 49
    .line 50
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public final hasExplicitFlag(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/impl/CommonConfig;->hasFlagBeenModified(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hasFlag(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hasFlagBeenModified(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/impl/CommonConfig;->sStdProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setFlag(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    or-int/2addr p2, p1

    :goto_0
    iput p2, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flags:I

    not-int v0, p1

    and-int/2addr p2, v0

    goto :goto_0

    :goto_1
    iget p2, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/aalto/impl/CommonConfig;->_flagMods:I

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object p2, Lcom/fasterxml/aalto/impl/CommonConfig;->sStdProperties:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Unrecognized property \'"

    .line 16
    .line 17
    const-string v1, "\'"

    .line 18
    .line 19
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p2
.end method
