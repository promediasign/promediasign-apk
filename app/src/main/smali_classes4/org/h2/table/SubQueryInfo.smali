.class public Lorg/h2/table/SubQueryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private filter:I

.field private filters:[Lorg/h2/table/TableFilter;

.field private masks:[I

.field private sortOrder:Lorg/h2/result/SortOrder;

.field private upper:Lorg/h2/table/SubQueryInfo;


# direct methods
.method public constructor <init>(Lorg/h2/table/SubQueryInfo;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/table/SubQueryInfo;->upper:Lorg/h2/table/SubQueryInfo;

    iput-object p2, p0, Lorg/h2/table/SubQueryInfo;->masks:[I

    iput-object p3, p0, Lorg/h2/table/SubQueryInfo;->filters:[Lorg/h2/table/TableFilter;

    iput p4, p0, Lorg/h2/table/SubQueryInfo;->filter:I

    iput-object p5, p0, Lorg/h2/table/SubQueryInfo;->sortOrder:Lorg/h2/result/SortOrder;

    return-void
.end method


# virtual methods
.method public getFilter()I
    .locals 1

    iget v0, p0, Lorg/h2/table/SubQueryInfo;->filter:I

    return v0
.end method

.method public getFilters()[Lorg/h2/table/TableFilter;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/SubQueryInfo;->filters:[Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public getMasks()[I
    .locals 1

    iget-object v0, p0, Lorg/h2/table/SubQueryInfo;->masks:[I

    return-object v0
.end method

.method public getSortOrder()Lorg/h2/result/SortOrder;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/SubQueryInfo;->sortOrder:Lorg/h2/result/SortOrder;

    return-object v0
.end method

.method public getUpper()Lorg/h2/table/SubQueryInfo;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/SubQueryInfo;->upper:Lorg/h2/table/SubQueryInfo;

    return-object v0
.end method
