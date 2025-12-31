.class Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/charts/DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFormulaString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Literal data source can not be expressed by reference."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPointAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPointCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public isNumeric()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
