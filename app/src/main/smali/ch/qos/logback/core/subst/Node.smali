.class public Lch/qos/logback/core/subst/Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/subst/Node$Type;
    }
.end annotation


# instance fields
.field defaultPart:Ljava/lang/Object;

.field next:Lch/qos/logback/core/subst/Node;

.field payload:Ljava/lang/Object;

.field type:Lch/qos/logback/core/subst/Node$Type;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/subst/Node$Type;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    iput-object p2, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/subst/Node$Type;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    iput-object p2, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    iput-object p3, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public append(Lch/qos/logback/core/subst/Node;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-nez v1, :cond_1

    iput-object p1, v0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public dump()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lch/qos/logback/core/subst/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lch/qos/logback/core/subst/Node;->dump()V

    goto :goto_0

    :cond_0
    const-string v1, " null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Lch/qos/logback/core/subst/Node;

    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    iget-object v3, p1, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    :cond_6
    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    iget-object p1, p1, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Lch/qos/logback/core/subst/Node;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    :goto_2
    return v1

    :cond_8
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lch/qos/logback/core/subst/Node;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public recursive(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V
    .locals 1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lch/qos/logback/core/subst/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    goto :goto_0

    :cond_0
    const-string p1, "null "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setNext(Lch/qos/logback/core/subst/Node;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lch/qos/logback/core/subst/Node$1;->$SwitchMap$ch$qos$logback$core$subst$Node$Type:[I

    .line 2
    .line 3
    iget-object v1, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, ", payload=\'"

    .line 13
    .line 14
    const-string v3, "Node{type="

    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    check-cast v4, Lch/qos/logback/core/subst/Node;

    .line 38
    .line 39
    invoke-virtual {p0, v4, v1}, Lch/qos/logback/core/subst/Node;->recursive(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v4, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Lch/qos/logback/core/subst/Node;

    .line 45
    .line 46
    invoke-virtual {p0, v4, v0}, Lch/qos/logback/core/subst/Node;->recursive(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, "\'"

    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    const-string v2, ", defaultPart="

    .line 83
    .line 84
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const/16 v0, 0x7d

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, "\'}"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0
.end method
