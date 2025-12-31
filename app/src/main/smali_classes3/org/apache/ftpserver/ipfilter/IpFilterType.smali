.class public final enum Lorg/apache/ftpserver/ipfilter/IpFilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/ftpserver/ipfilter/IpFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ftpserver/ipfilter/IpFilterType;

.field public static final enum ALLOW:Lorg/apache/ftpserver/ipfilter/IpFilterType;

.field public static final enum DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ipfilter/IpFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;->ALLOW:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    new-instance v1, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    const-string v3, "DENY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/ftpserver/ipfilter/IpFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/ftpserver/ipfilter/IpFilterType;->DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/ftpserver/ipfilter/IpFilterType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/ftpserver/ipfilter/IpFilterType;->$VALUES:[Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->values()[Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Invalid IpFilterType: "

    .line 28
    .line 29
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 1

    const-class v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-object p0
.end method

.method public static values()[Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 1

    sget-object v0, Lorg/apache/ftpserver/ipfilter/IpFilterType;->$VALUES:[Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v0}, [Lorg/apache/ftpserver/ipfilter/IpFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-object v0
.end method
