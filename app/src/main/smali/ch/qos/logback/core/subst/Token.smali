.class public Lch/qos/logback/core/subst/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/subst/Token$Type;
    }
.end annotation


# static fields
.field public static final CURLY_LEFT_TOKEN:Lch/qos/logback/core/subst/Token;

.field public static final CURLY_RIGHT_TOKEN:Lch/qos/logback/core/subst/Token;

.field public static final DEFAULT_SEP_TOKEN:Lch/qos/logback/core/subst/Token;

.field public static final START_TOKEN:Lch/qos/logback/core/subst/Token;


# instance fields
.field payload:Ljava/lang/String;

.field type:Lch/qos/logback/core/subst/Token$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->START:Lch/qos/logback/core/subst/Token$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->START_TOKEN:Lch/qos/logback/core/subst/Token;

    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_LEFT:Lch/qos/logback/core/subst/Token$Type;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->CURLY_LEFT_TOKEN:Lch/qos/logback/core/subst/Token;

    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_RIGHT:Lch/qos/logback/core/subst/Token$Type;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->CURLY_RIGHT_TOKEN:Lch/qos/logback/core/subst/Token;

    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->DEFAULT:Lch/qos/logback/core/subst/Token$Type;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->DEFAULT_SEP_TOKEN:Lch/qos/logback/core/subst/Token;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    iput-object p2, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lch/qos/logback/core/subst/Token;

    iget-object v2, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    iget-object v3, p1, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    iget-object p1, p1, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Token{type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, ", payload=\'"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    .line 28
    .line 29
    const/16 v2, 0x27

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x7d

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
