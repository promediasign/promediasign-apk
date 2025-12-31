.class Lorg/jdom/ContentList$FilterListIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterListIterator"
.end annotation


# instance fields
.field private canremove:Z

.field private canset:Z

.field private cursor:I

.field private expected:I

.field filter:Lorg/jdom/filter/Filter;

.field private forward:Z

.field private fsize:I

.field private index:I

.field private final synthetic this$0:Lorg/jdom/ContentList;

.field private tmpcursor:I


# direct methods
.method public constructor <init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 15
    .line 16
    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 17
    .line 18
    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 19
    .line 20
    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 21
    .line 22
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 23
    .line 24
    iput-object p2, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    .line 25
    .line 26
    invoke-static {p1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 33
    .line 34
    const-string v2, "Index: "

    .line 35
    .line 36
    if-ltz p3, :cond_5

    .line 37
    .line 38
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/ContentList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ge v0, v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {p2, v3}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    iget v3, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 57
    .line 58
    if-ne p3, v3, :cond_0

    .line 59
    .line 60
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 61
    .line 62
    iput v3, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    iput v3, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 67
    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget p2, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 72
    .line 73
    if-gt p3, p2, :cond_4

    .line 74
    .line 75
    iget p2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 76
    .line 77
    if-ne p2, v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/jdom/ContentList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 84
    .line 85
    iget p1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 86
    .line 87
    iput p1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 88
    .line 89
    :cond_3
    return-void

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 91
    .line 92
    const-string p2, " Size: "

    .line 93
    .line 94
    invoke-static {p3, v2, p2}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget p3, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 112
    .line 113
    invoke-static {p3, v2}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method private checkConcurrentModification()V
    .locals 2

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    invoke-virtual {v0, v1, p1}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {p1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result p1

    iput p1, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    iput-boolean p1, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    iget-boolean p1, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    :goto_0
    iget p1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    iget p1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iput p1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    return-void

    :cond_1
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Filter won\'t allow the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, "\' to be added to the list"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next() is beyond the end of the Iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 3

    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    iget-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "previous() is before the start of the Iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 3

    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    iget-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_2
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    return v0
.end method

.method public remove()V
    .locals 4

    iget-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v3, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v2, v3}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v0}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not remove an element unless either next() or previous() has been called since the last remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v0, v1, p1}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {p1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result p1

    iput p1, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    return-void

    :cond_0
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Filter won\'t allow index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " to be set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not set an element unless either next() or previous() has been called since the last remove() or set()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
