.class Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionToken"
.end annotation


# instance fields
.field condition:Lorg/apache/xmlbeans/impl/regex/Token;

.field no:Lorg/apache/xmlbeans/impl/regex/Token;

.field refNumber:I

.field yes:Lorg/apache/xmlbeans/impl/regex/Token;


# direct methods
.method public constructor <init>(ILorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v1, "Internal Error: "

    .line 15
    .line 16
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    .line 2
    .line 3
    const-string v0, "(?("

    .line 4
    .line 5
    const-string v1, ")"

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    .line 15
    .line 16
    invoke-static {p1, v1, v0}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 22
    .line 23
    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ne p1, v2, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuffer;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    const-string v0, "(?"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-static {p1}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 69
    .line 70
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_3

    .line 81
    :cond_2
    invoke-static {p1}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    const-string v0, "|"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :goto_3
    return-object p1
.end method
