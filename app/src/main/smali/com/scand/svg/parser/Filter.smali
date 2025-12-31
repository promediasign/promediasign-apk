.class public Lcom/scand/svg/parser/Filter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static knownFe:[Ljava/lang/String;


# instance fields
.field public filterUnits:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public op:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/scand/svg/parser/FilterOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v22, "feTile"

    const-string v23, "feTurbulence"

    const-string v0, "feBlend"

    const-string v1, "feColorMatrix"

    const-string v2, "feComponentTransfer"

    const-string v3, "feComposite"

    const-string v4, "feConvolveMatrix"

    const-string v5, "feDiffuseLighting"

    const-string v6, "feDisplacementMap"

    const-string v7, "feDistantLight"

    const-string v8, "feFlood"

    const-string v9, "feFuncA"

    const-string v10, "feFuncR"

    const-string v11, "feFuncG"

    const-string v12, "feFuncB"

    const-string v13, "feGaussianBlur"

    const-string v14, "feImage"

    const-string v15, "feMerge"

    const-string v16, "feMergeNode"

    const-string v17, "fefeMorphology"

    const-string v18, "feOffset"

    const-string v19, "fePointLight"

    const-string v20, "feSpecularLighting"

    const-string v21, "feSpotLight"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scand/svg/parser/Filter;->knownFe:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scand/svg/parser/Filter;->filterUnits:Ljava/lang/String;

    return-void
.end method

.method public static buildFilterImpl(Lcom/scand/svg/parser/FilterOp;)Lcom/scand/svg/parser/paintutil/FilterImpl;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/scand/svg/parser/FilterOp;->filterOp:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/scand/svg/parser/FilterOp;->filterOp:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0, v3, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "com.scand.svg.parser.paintutil."

    .line 28
    .line 29
    invoke-static {v0, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x0

    .line 34
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, LA/g;->x(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :catch_2
    move-exception p0

    .line 51
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public static isFilterOp(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/scand/svg/parser/Filter;->knownFe:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private optimize(Lcom/scand/svg/parser/FilterOp;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scand/svg/parser/FilterOp;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/scand/svg/parser/FilterOp;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/scand/svg/parser/FilterOp;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/scand/svg/parser/FilterOp;->in:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/scand/svg/parser/FilterOp;->in:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/parser/FilterOp;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p1, Lcom/scand/svg/parser/FilterOp;->in2:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v1, p1, Lcom/scand/svg/parser/FilterOp;->in2:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scand/svg/parser/FilterOp;

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p2, p3}, Lcom/scand/svg/parser/Filter;->optimize(Lcom/scand/svg/parser/FilterOp;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, v1, p2, p3}, Lcom/scand/svg/parser/Filter;->optimize(Lcom/scand/svg/parser/FilterOp;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    :cond_4
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public optimize()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scand/svg/parser/FilterOp;

    iget-object v4, v3, Lcom/scand/svg/parser/FilterOp;->result:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v3, Lcom/scand/svg/parser/FilterOp;->result:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scand/svg/parser/FilterOp;

    invoke-direct {p0, v3, v1, v0}, Lcom/scand/svg/parser/Filter;->optimize(Lcom/scand/svg/parser/FilterOp;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fop["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/scand/svg/parser/Filter;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/scand/svg/parser/Filter;->filterUnits:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SVGKit"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scand/svg/parser/FilterOp;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/scand/svg/parser/FilterOp;->filterOp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/scand/svg/parser/FilterOp;->in:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/scand/svg/parser/FilterOp;->in2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "} => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/scand/svg/parser/FilterOp;->result:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "}Fop"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
