.class public final Lcom/fasterxml/aalto/out/WNameTable;
.super Lcom/fasterxml/aalto/util/NameTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/aalto/out/WNameTable$Bucket;
    }
.end annotation


# instance fields
.field private mCollCount:I

.field private mCollEnd:I

.field private mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

.field private mCollListShared:Z

.field private mCount:I

.field private mMainHash:[I

.field private mMainHashMask:I

.field private mMainHashShared:Z

.field private mMainNames:[Lcom/fasterxml/aalto/out/WName;

.field private mMainNamesShared:Z

.field final mNameFactory:Lcom/fasterxml/aalto/out/WNameFactory;

.field private transient mNeedRehash:Z

.field final mParent:Lcom/fasterxml/aalto/out/WNameTable;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/aalto/util/NameTable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNameFactory:Lcom/fasterxml/aalto/out/WNameFactory;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mParent:Lcom/fasterxml/aalto/out/WNameTable;

    const/16 v1, 0x10

    if-ge p1, v1, :cond_0

    const/16 p1, 0x10

    goto :goto_1

    :cond_0
    add-int/lit8 v2, p1, -0x1

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, p1, :cond_1

    add-int/2addr v1, v1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    iput-boolean v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashShared:Z

    iput-boolean v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNamesShared:Z

    add-int/lit8 v2, p1, -0x1

    iput v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    new-array v2, p1, [I

    iput-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    new-array p1, p1, [Lcom/fasterxml/aalto/out/WName;

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollListShared:Z

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iput v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    iput-boolean v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNeedRehash:Z

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/aalto/out/WNameTable;Lcom/fasterxml/aalto/out/WNameFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/aalto/util/NameTable;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mParent:Lcom/fasterxml/aalto/out/WNameTable;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNameFactory:Lcom/fasterxml/aalto/out/WNameFactory;

    iget p2, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    iput p2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    iget p2, p1, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    iput p2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    iget-object p2, p1, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    iput-object p2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    iget-object p2, p1, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    iget-object p2, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iget p2, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    iput p2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    iget p1, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    iput p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNeedRehash:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashShared:Z

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNamesShared:Z

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollListShared:Z

    return-void
.end method

.method private addSymbol(Lcom/fasterxml/aalto/out/WName;)V
    .locals 6

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashShared:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->unshareMain()V

    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNeedRehash:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->rehash()V

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WName;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    and-int/2addr v1, v0

    iget-object v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    aget-object v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    shl-int/lit8 v0, v0, 0x8

    aput v0, v3, v1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNamesShared:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->unshareNames()V

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    aput-object p1, v0, v1

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollListShared:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->unshareCollision()V

    :cond_4
    iget v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    aget v0, v0, v1

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_7

    iget v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    const/16 v4, 0xfe

    if-gt v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    iget-object v4, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    array-length v4, v4

    if-lt v3, v4, :cond_6

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->expandCollision()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->findBestBucket()I

    move-result v3

    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    and-int/lit16 v0, v0, -0x100

    add-int/lit8 v5, v3, 0x1

    or-int/2addr v0, v5

    aput v0, v4, v1

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v3, -0x1

    :goto_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    new-instance v1, Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    aget-object v4, v0, v3

    invoke-direct {v1, p1, v4}, Lcom/fasterxml/aalto/out/WNameTable$Bucket;-><init>(Lcom/fasterxml/aalto/out/WName;Lcom/fasterxml/aalto/out/WNameTable$Bucket;)V

    aput-object v1, v0, v3

    :goto_2
    iget-object p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    array-length p1, p1

    iget v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    shr-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_9

    shr-int/lit8 v1, p1, 0x2

    sub-int/2addr p1, v1

    if-le v0, p1, :cond_8

    :goto_3
    iput-boolean v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNeedRehash:Z

    goto :goto_4

    :cond_8
    iget p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    if-lt p1, v1, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private expandCollision()V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    array-length v1, v0

    add-int v2, v1, v1

    new-array v2, v2, [Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iput-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private findBestBucket()I
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->length()I

    move-result v5

    if-ge v5, v2, :cond_1

    const/4 v2, 0x1

    if-ne v5, v2, :cond_0

    return v4

    :cond_0
    move v3, v4

    move v2, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private declared-synchronized mergeFromChild(Lcom/fasterxml/aalto/out/WNameTable;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iput v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    iget v0, p1, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    iput v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    iget-object v0, p1, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    iget-object v0, p1, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    iget-object v0, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iget v0, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    iput v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    iget p1, p1, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    iput p1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private rehash()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNeedRehash:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNamesShared:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    add-int v2, v1, v1

    .line 10
    .line 11
    new-array v3, v2, [I

    .line 12
    .line 13
    iput-object v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    .line 14
    .line 15
    add-int/lit8 v3, v2, -0x1

    .line 16
    .line 17
    iput v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    .line 20
    .line 21
    new-array v2, v2, [Lcom/fasterxml/aalto/out/WName;

    .line 22
    .line 23
    iput-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    .line 29
    aget-object v5, v3, v2

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/fasterxml/aalto/out/WName;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget v7, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    .line 40
    .line 41
    and-int/2addr v7, v6

    .line 42
    iget-object v8, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    .line 43
    .line 44
    aput-object v5, v8, v7

    .line 45
    .line 46
    iget-object v5, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    .line 47
    .line 48
    shl-int/lit8 v6, v6, 0x8

    .line 49
    .line 50
    aput v6, v5, v7

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iput v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    .line 61
    .line 62
    iput v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollListShared:Z

    .line 65
    .line 66
    iget-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    .line 67
    .line 68
    array-length v3, v2

    .line 69
    new-array v3, v3, [Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    .line 70
    .line 71
    iput-object v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    .line 72
    .line 73
    :goto_1
    if-ge v0, v1, :cond_8

    .line 74
    .line 75
    aget-object v3, v2, v0

    .line 76
    .line 77
    :goto_2
    if-eqz v3, :cond_7

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    iget-object v5, v3, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/fasterxml/aalto/out/WName;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    iget v7, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    .line 88
    .line 89
    and-int/2addr v7, v6

    .line 90
    iget-object v8, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    .line 91
    .line 92
    aget v9, v8, v7

    .line 93
    .line 94
    iget-object v10, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    .line 95
    .line 96
    aget-object v11, v10, v7

    .line 97
    .line 98
    if-nez v11, :cond_3

    .line 99
    .line 100
    shl-int/lit8 v6, v6, 0x8

    .line 101
    .line 102
    aput v6, v8, v7

    .line 103
    .line 104
    aput-object v5, v10, v7

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_3
    iget v6, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    .line 108
    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    iput v6, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    .line 112
    .line 113
    and-int/lit16 v6, v9, 0xff

    .line 114
    .line 115
    if-nez v6, :cond_6

    .line 116
    .line 117
    iget v6, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    .line 118
    .line 119
    const/16 v8, 0xfe

    .line 120
    .line 121
    if-gt v6, v8, :cond_4

    .line 122
    .line 123
    add-int/lit8 v8, v6, 0x1

    .line 124
    .line 125
    iput v8, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    .line 126
    .line 127
    iget-object v8, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    .line 128
    .line 129
    array-length v8, v8

    .line 130
    if-lt v6, v8, :cond_5

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->expandCollision()V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameTable;->findBestBucket()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    .line 141
    .line 142
    and-int/lit16 v9, v9, -0x100

    .line 143
    .line 144
    add-int/lit8 v10, v6, 0x1

    .line 145
    .line 146
    or-int/2addr v9, v10

    .line 147
    aput v9, v8, v7

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 151
    .line 152
    :goto_4
    iget-object v7, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    .line 153
    .line 154
    new-instance v8, Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    .line 155
    .line 156
    aget-object v9, v7, v6

    .line 157
    .line 158
    invoke-direct {v8, v5, v9}, Lcom/fasterxml/aalto/out/WNameTable$Bucket;-><init>(Lcom/fasterxml/aalto/out/WName;Lcom/fasterxml/aalto/out/WNameTable$Bucket;)V

    .line 159
    .line 160
    .line 161
    aput-object v8, v7, v6

    .line 162
    .line 163
    :goto_5
    iget-object v3, v3, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_8
    iget v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    .line 170
    .line 171
    if-ne v4, v0, :cond_9

    .line 172
    .line 173
    return-void

    .line 174
    :cond_9
    new-instance v0, Ljava/lang/Error;

    .line 175
    .line 176
    const-string v1, "Internal error: count after rehash "

    .line 177
    .line 178
    const-string v2, "; should be "

    .line 179
    .line 180
    invoke-static {v4, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0
.end method

.method private unshareCollision()V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    goto :goto_0

    :cond_0
    array-length v2, v0

    new-array v3, v2, [Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    iput-object v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput-boolean v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollListShared:Z

    return-void
.end method

.method private unshareMain()V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    array-length v1, v0

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashShared:Z

    return-void
.end method

.method private unshareNames()V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    array-length v1, v0

    new-array v2, v1, [Lcom/fasterxml/aalto/out/WName;

    iput-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNamesShared:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized createChild(Lcom/fasterxml/aalto/out/WNameFactory;)Lcom/fasterxml/aalto/out/WNameTable;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/fasterxml/aalto/out/WNameTable;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/aalto/out/WNameTable;-><init>(Lcom/fasterxml/aalto/out/WNameTable;Lcom/fasterxml/aalto/out/WNameFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findSymbol(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    aget v2, v2, v1

    shr-int/lit8 v3, v2, 0x8

    xor-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WName;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    and-int/lit16 v0, v2, 0xff

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->find(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNameFactory:Lcom/fasterxml/aalto/out/WNameFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WNameFactory;->constructName(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->addSymbol(Lcom/fasterxml/aalto/out/WName;)V

    return-object p1
.end method

.method public findSymbol(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 4

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashMask:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    aget v2, v2, v1

    shr-int/lit8 v3, v2, 0x8

    xor-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNames:[Lcom/fasterxml/aalto/out/WName;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WName;->hasName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    and-int/lit16 v0, v2, 0xff

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->find(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mNameFactory:Lcom/fasterxml/aalto/out/WNameFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WNameFactory;->constructName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/aalto/out/WNameTable;->addSymbol(Lcom/fasterxml/aalto/out/WName;)V

    return-object p1
.end method

.method public markAsShared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashShared:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainNamesShared:Z

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollListShared:Z

    return-void
.end method

.method public maybeDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHashShared:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mergeToParent()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable;->mParent:Lcom/fasterxml/aalto/out/WNameTable;

    invoke-direct {v0, p0}, Lcom/fasterxml/aalto/out/WNameTable;->mergeFromChild(Lcom/fasterxml/aalto/out/WNameTable;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/WNameTable;->markAsShared()V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WNameTable, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mMainHash:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " coll; avg length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollEnd:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCollList:[Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->length()I

    move-result v3

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v3, :cond_0

    add-int/2addr v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/fasterxml/aalto/out/WNameTable;->mCount:I

    if-nez v2, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_2
    int-to-double v3, v1

    int-to-double v1, v2

    div-double v1, v3, v1

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
