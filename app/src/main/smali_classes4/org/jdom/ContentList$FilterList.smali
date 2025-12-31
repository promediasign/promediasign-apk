.class Lorg/jdom/ContentList$FilterList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterList"
.end annotation


# instance fields
.field count:I

.field expected:I

.field filter:Lorg/jdom/filter/Filter;

.field private final synthetic this$0:Lorg/jdom/ContentList;


# direct methods
.method public constructor <init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    const/4 p1, 0x0

    iput p1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    iput-object p2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    return-void
.end method

.method private final getAdjustedIndex(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v3, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {p1}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result p1

    return p1

    :cond_3
    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {p1}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result p1

    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    iget p1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    iget p1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    return-void

    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Filter won\'t allow the "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, "\' to be added to the list"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result p1

    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4

    .line 1
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3

    .line 2
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-direct {v0, v1, v2, p1}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 30
    .line 31
    iget v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    iput v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    new-instance v0, Lorg/jdom/IllegalAddException;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuffer;

    .line 41
    .line 42
    const-string v3, "Filter won\'t allow the "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    const-string v3, " \'"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    const-string v1, "\' (index "

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    const-string v1, ") to be removed"

    .line 72
    .line 73
    invoke-static {v2, v1, p1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    .line 20
    .line 21
    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget p2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x2

    .line 36
    .line 37
    iput p2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    new-instance p2, Lorg/jdom/IllegalAddException;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    const-string v2, "Filter won\'t allow the "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    const-string v2, " \'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    const-string v1, "\' (index "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    const-string v1, ") to be removed"

    .line 74
    .line 75
    invoke-static {v0, v1, p1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p2, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_1
    new-instance v0, Lorg/jdom/IllegalAddException;

    .line 84
    .line 85
    const-string v1, "Filter won\'t allow index "

    .line 86
    .line 87
    const-string v2, " to be set to "

    .line 88
    .line 89
    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public size()I
    .locals 3

    iget v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    return v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    :goto_0
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v0}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    iget v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    return v0
.end method
