.class public Lorg/apache/poi/util/IdentifierManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/IdentifierManager$Segment;
    }
.end annotation


# static fields
.field public static final MAX_ID:J = 0x7ffffffffffffffeL

.field public static final MIN_ID:J


# instance fields
.field private final lowerbound:J

.field private segments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/poi/util/IdentifierManager$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final upperbound:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    cmp-long v0, p1, p3

    .line 5
    .line 6
    if-gtz v0, :cond_2

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-ltz v2, :cond_1

    .line 13
    .line 14
    const-wide v0, 0x7ffffffffffffffeL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v2, p3, v0

    .line 20
    .line 21
    if-gtz v2, :cond_0

    .line 22
    .line 23
    iput-wide p1, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 24
    .line 25
    iput-wide p3, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 26
    .line 27
    new-instance v0, Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 33
    .line 34
    new-instance v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 35
    .line 36
    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "upperbound must be less than or equal to "

    .line 48
    .line 49
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " but had "

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p2, "lowerbound must be greater than or equal to "

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p2

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string v1, "lowerbound must not be greater than upperbound, had "

    .line 102
    .line 103
    const-string v2, " and "

    .line 104
    .line 105
    invoke-static {v1, p1, p2, v2}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method private verifyIdentifiersLeft()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No identifiers left"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRemainingIdentifiers()J
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    sub-long/2addr v1, v4

    iget-wide v3, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public release(J)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-ltz v5, :cond_b

    .line 10
    .line 11
    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 12
    .line 13
    cmp-long v7, v1, v5

    .line 14
    .line 15
    if-gtz v7, :cond_b

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const-wide/16 v8, 0x1

    .line 19
    .line 20
    const/4 v10, 0x1

    .line 21
    cmp-long v11, v1, v5

    .line 22
    .line 23
    if-nez v11, :cond_2

    .line 24
    .line 25
    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 32
    .line 33
    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 34
    .line 35
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 36
    .line 37
    sub-long v8, v4, v8

    .line 38
    .line 39
    cmp-long v6, v2, v8

    .line 40
    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    iput-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 44
    .line 45
    return v10

    .line 46
    :cond_0
    cmp-long v1, v2, v4

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    return v7

    .line 51
    :cond_1
    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 52
    .line 53
    new-instance v2, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 54
    .line 55
    invoke-direct {v2, v4, v5, v4, v5}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return v10

    .line 62
    :cond_2
    cmp-long v5, v1, v3

    .line 63
    .line 64
    if-nez v5, :cond_5

    .line 65
    .line 66
    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 73
    .line 74
    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 75
    .line 76
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 77
    .line 78
    add-long/2addr v8, v4

    .line 79
    cmp-long v6, v2, v8

    .line 80
    .line 81
    if-nez v6, :cond_3

    .line 82
    .line 83
    iput-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 84
    .line 85
    return v10

    .line 86
    :cond_3
    cmp-long v1, v2, v4

    .line 87
    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    return v7

    .line 91
    :cond_4
    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 92
    .line 93
    new-instance v2, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 94
    .line 95
    invoke-direct {v2, v4, v5, v4, v5}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return v10

    .line 102
    :cond_5
    add-long v3, v1, v8

    .line 103
    .line 104
    sub-long v5, v1, v8

    .line 105
    .line 106
    iget-object v11, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 107
    .line 108
    invoke-virtual {v11}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    :goto_0
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eqz v12, :cond_a

    .line 117
    .line 118
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    check-cast v12, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 123
    .line 124
    iget-wide v13, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 125
    .line 126
    cmp-long v15, v13, v5

    .line 127
    .line 128
    if-gez v15, :cond_6

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    iget-wide v7, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 132
    .line 133
    cmp-long v16, v7, v3

    .line 134
    .line 135
    if-lez v16, :cond_7

    .line 136
    .line 137
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    new-instance v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 141
    .line 142
    invoke-direct {v3, v1, v2, v1, v2}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v11, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return v10

    .line 149
    :cond_7
    cmp-long v16, v7, v3

    .line 150
    .line 151
    if-nez v16, :cond_8

    .line 152
    .line 153
    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 154
    .line 155
    return v10

    .line 156
    :cond_8
    cmp-long v3, v13, v5

    .line 157
    .line 158
    if-nez v3, :cond_a

    .line 159
    .line 160
    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 161
    .line 162
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_9

    .line 167
    .line 168
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 173
    .line 174
    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 175
    .line 176
    iget-wide v4, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 177
    .line 178
    const-wide/16 v6, 0x1

    .line 179
    .line 180
    add-long/2addr v4, v6

    .line 181
    cmp-long v6, v2, v4

    .line 182
    .line 183
    if-nez v6, :cond_9

    .line 184
    .line 185
    iget-wide v1, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 186
    .line 187
    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 188
    .line 189
    invoke-interface {v11}, Ljava/util/ListIterator;->remove()V

    .line 190
    .line 191
    .line 192
    :cond_9
    return v10

    .line 193
    :cond_a
    const/4 v1, 0x0

    .line 194
    return v1

    .line 195
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    const-string v4, "Value for parameter \'id\' was out of bounds, had "

    .line 198
    .line 199
    const-string v5, ", but should be within ["

    .line 200
    .line 201
    invoke-static {v4, v1, v2, v5}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 206
    .line 207
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, ":"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 216
    .line 217
    const-string v2, "]"

    .line 218
    .line 219
    invoke-static {v1, v4, v5, v2}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v3
.end method

.method public reserve(J)J
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_d

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    if-gtz v2, :cond_d

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/apache/poi/util/IdentifierManager;->verifyIdentifiersLeft()V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 17
    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    cmp-long v4, p1, v0

    .line 21
    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 31
    .line 32
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 33
    .line 34
    iget-wide v6, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 35
    .line 36
    cmp-long v1, v4, v6

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    sub-long/2addr v6, v2

    .line 41
    iput-wide v6, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 42
    .line 43
    iget-wide v0, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 44
    .line 45
    cmp-long v2, v0, v6

    .line 46
    .line 47
    if-lez v2, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-wide p1

    .line 55
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    return-wide p1

    .line 60
    :cond_2
    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 61
    .line 62
    cmp-long v4, p1, v0

    .line 63
    .line 64
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 65
    .line 66
    if-nez v4, :cond_5

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 73
    .line 74
    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 75
    .line 76
    iget-wide v6, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 77
    .line 78
    cmp-long v1, v4, v6

    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    add-long/2addr v6, v2

    .line 83
    iput-wide v6, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 84
    .line 85
    iget-wide v0, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 86
    .line 87
    cmp-long v2, v0, v6

    .line 88
    .line 89
    if-gez v2, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_3
    return-wide p1

    .line 97
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    .line 98
    .line 99
    .line 100
    move-result-wide p1

    .line 101
    return-wide p1

    .line 102
    :cond_5
    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_c

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 117
    .line 118
    iget-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 119
    .line 120
    cmp-long v6, v4, p1

    .line 121
    .line 122
    if-gez v6, :cond_6

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    iget-wide v6, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 126
    .line 127
    cmp-long v8, v6, p1

    .line 128
    .line 129
    if-lez v8, :cond_7

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    cmp-long v8, v6, p1

    .line 133
    .line 134
    if-nez v8, :cond_9

    .line 135
    .line 136
    add-long/2addr v2, p1

    .line 137
    iput-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    .line 138
    .line 139
    cmp-long v1, v4, v2

    .line 140
    .line 141
    if-gez v1, :cond_8

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 144
    .line 145
    .line 146
    :cond_8
    return-wide p1

    .line 147
    :cond_9
    cmp-long v8, v4, p1

    .line 148
    .line 149
    if-nez v8, :cond_b

    .line 150
    .line 151
    sub-long v2, p1, v2

    .line 152
    .line 153
    iput-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 154
    .line 155
    cmp-long v1, v6, v2

    .line 156
    .line 157
    if-lez v1, :cond_a

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 160
    .line 161
    .line 162
    :cond_a
    return-wide p1

    .line 163
    :cond_b
    new-instance v6, Lorg/apache/poi/util/IdentifierManager$Segment;

    .line 164
    .line 165
    add-long v7, p1, v2

    .line 166
    .line 167
    invoke-direct {v6, v7, v8, v4, v5}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sub-long v2, p1, v2

    .line 174
    .line 175
    iput-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    .line 176
    .line 177
    return-wide p1

    .line 178
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    .line 179
    .line 180
    .line 181
    move-result-wide p1

    .line 182
    return-wide p1

    .line 183
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    const-string v1, "Value for parameter \'id\' was out of bounds, had "

    .line 186
    .line 187
    const-string v2, ", but should be within ["

    .line 188
    .line 189
    invoke-static {v1, p1, p2, v2}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-wide v1, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    .line 194
    .line 195
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p2, ":"

    .line 199
    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-wide v1, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    .line 204
    .line 205
    const-string p2, "]"

    .line 206
    .line 207
    invoke-static {p1, v1, v2, p2}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0
.end method

.method public reserveNew()J
    .locals 7

    invoke-direct {p0}, Lorg/apache/poi/util/IdentifierManager;->verifyIdentifiersLeft()V

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v1, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-wide v1
.end method
