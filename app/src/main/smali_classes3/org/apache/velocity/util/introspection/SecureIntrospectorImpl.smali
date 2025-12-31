.class public Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;
.super Lorg/apache/velocity/util/introspection/Introspector;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/SecureIntrospectorControl;


# instance fields
.field private badClasses:[Ljava/lang/String;

.field private badPackages:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Lorg/slf4j/Logger;)V
    .locals 0

    invoke-direct {p0, p3}, Lorg/apache/velocity/util/introspection/Introspector;-><init>(Lorg/slf4j/Logger;)V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;->badClasses:[Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;->badPackages:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkObjectExecutePermission(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    const-string v1, "wait"

    .line 5
    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "notify"

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :cond_0
    return v0

    .line 21
    :cond_1
    const-class v1, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    return v2

    .line 40
    :cond_3
    const-class v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    return v2

    .line 49
    :cond_4
    const-class v1, Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    if-eqz p2, :cond_5

    .line 58
    .line 59
    const-string v1, "getName"

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    return v2

    .line 68
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p2, "[L"

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    const-string p2, ";"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_6

    .line 87
    .line 88
    const/4 p2, 0x2

    .line 89
    invoke-static {p1, v2, p2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_6
    const/16 p2, 0x2e

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    const/4 v1, -0x1

    .line 100
    if-ne p2, v1, :cond_7

    .line 101
    .line 102
    const-string p2, ""

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    :goto_0
    iget-object v1, p0, Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;->badPackages:[Ljava/lang/String;

    .line 110
    .line 111
    array-length v3, v1

    .line 112
    const/4 v4, 0x0

    .line 113
    :goto_1
    if-ge v4, v3, :cond_9

    .line 114
    .line 115
    aget-object v5, v1, v4

    .line 116
    .line 117
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_8

    .line 122
    .line 123
    return v0

    .line 124
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_9
    iget-object p2, p0, Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;->badClasses:[Ljava/lang/String;

    .line 128
    .line 129
    array-length v1, p2

    .line 130
    const/4 v3, 0x0

    .line 131
    :goto_2
    if-ge v3, v1, :cond_b

    .line 132
    .line 133
    aget-object v4, p2, v3

    .line 134
    .line 135
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_a

    .line 140
    .line 141
    return v0

    .line 142
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_b
    return v2
.end method

.method public getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/util/introspection/SecureIntrospectorImpl;->checkObjectExecutePermission(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p3, p0, Lorg/apache/velocity/util/introspection/IntrospectorBase;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot retrieve method {} from object of class {} due to security restrictions."

    invoke-interface {p3, v0, p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
