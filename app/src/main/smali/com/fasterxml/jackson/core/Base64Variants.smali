.class public abstract Lcom/fasterxml/jackson/core/Base64Variants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MIME:Lcom/fasterxml/jackson/core/Base64Variant;

.field public static final MIME_NO_LINEFEEDS:Lcom/fasterxml/jackson/core/Base64Variant;

.field public static final MODIFIED_FOR_URL:Lcom/fasterxml/jackson/core/Base64Variant;

.field public static final PEM:Lcom/fasterxml/jackson/core/Base64Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v6, Lcom/fasterxml/jackson/core/Base64Variant;

    const/16 v4, 0x3d

    const/16 v5, 0x4c

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v6, Lcom/fasterxml/jackson/core/Base64Variants;->MIME:Lcom/fasterxml/jackson/core/Base64Variant;

    new-instance v0, Lcom/fasterxml/jackson/core/Base64Variant;

    const-string v1, "MIME-NO-LINEFEEDS"

    const v2, 0x7fffffff

    invoke-direct {v0, v6, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/fasterxml/jackson/core/Base64Variant;

    new-instance v7, Lcom/fasterxml/jackson/core/Base64Variant;

    const/16 v5, 0x40

    const-string v2, "PEM"

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    sput-object v7, Lcom/fasterxml/jackson/core/Base64Variants;->PEM:Lcom/fasterxml/jackson/core/Base64Variant;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    new-instance v1, Lcom/fasterxml/jackson/core/Base64Variant;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const-string v4, "MODIFIED-FOR-URL"

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v1, Lcom/fasterxml/jackson/core/Base64Variants;->MODIFIED_FOR_URL:Lcom/fasterxml/jackson/core/Base64Variant;

    return-void
.end method

.method public static getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/fasterxml/jackson/core/Base64Variant;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variants;->MIME:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variants;->PEM:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variants;->MODIFIED_FOR_URL:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_3
    if-nez p0, :cond_4

    .line 46
    .line 47
    const-string p0, "<null>"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const-string v0, "\'"

    .line 51
    .line 52
    invoke-static {v0, p0, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v1, "No Base64Variant with name "

    .line 59
    .line 60
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method
