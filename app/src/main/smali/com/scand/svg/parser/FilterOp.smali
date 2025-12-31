.class public Lcom/scand/svg/parser/FilterOp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public amplitude:Ljava/lang/Float;

.field public azimuth:Ljava/lang/Float;

.field public bias:Ljava/lang/Float;

.field public diffuseConstant:Ljava/lang/Float;

.field public dx:Ljava/lang/Float;

.field public dy:Ljava/lang/Float;

.field public edgeMode:Ljava/lang/String;

.field public elevation:Ljava/lang/Float;

.field public exponent:Ljava/lang/Float;

.field public externalResourcesRequired:Z

.field public feColorMatrix_type:Ljava/lang/String;

.field public feMorphology_operator:Ljava/lang/String;

.field public feTurbulence_type:Ljava/lang/String;

.field public filterOp:Ljava/lang/String;

.field public funcType:Ljava/lang/String;

.field public in:Ljava/lang/String;

.field public in2:Ljava/lang/String;

.field public intercept:Ljava/lang/Float;

.field public k1:Ljava/lang/Float;

.field public k2:Ljava/lang/Float;

.field public k3:Ljava/lang/Float;

.field public k4:Ljava/lang/Float;

.field public limitingConeAngle:Ljava/lang/Float;

.field public mode:Ljava/lang/String;

.field public numOctaves:Ljava/lang/Float;

.field public offset:Ljava/lang/Float;

.field public op:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/scand/svg/parser/FilterOp;",
            ">;"
        }
    .end annotation
.end field

.field public operator:Ljava/lang/String;

.field public pointsAtX:Ljava/lang/Float;

.field public pointsAtY:Ljava/lang/Float;

.field public pointsAtZ:Ljava/lang/Float;

.field public preserveAlpha:Z

.field public preserveAspectRatio:Z

.field public result:Ljava/lang/String;

.field public scale:Ljava/lang/Float;

.field public seed:Ljava/lang/Float;

.field public slope:Ljava/lang/Float;

.field public specularConstant:Ljava/lang/Float;

.field public specularExponent:Ljava/lang/Float;

.field public stitchTiles:Ljava/lang/String;

.field public surfaceScale:Ljava/lang/Float;

.field public tableValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/lang/Float;

.field public xChannelSelector:Ljava/lang/String;

.field public y:Ljava/lang/Float;

.field public yChannelSelector:Ljava/lang/String;

.field public z:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/FilterOp;->op:Ljava/util/ArrayList;

    const-string v0, "A"

    iput-object v0, p0, Lcom/scand/svg/parser/FilterOp;->funcType:Ljava/lang/String;

    const-string v1, "table"

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->type:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->tableValues:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->slope:Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->intercept:Ljava/lang/Float;

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->amplitude:Ljava/lang/Float;

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->exponent:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->offset:Ljava/lang/Float;

    const-string v3, "normal"

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->mode:Ljava/lang/String;

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->surfaceScale:Ljava/lang/Float;

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->specularConstant:Ljava/lang/Float;

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->specularExponent:Ljava/lang/Float;

    const-string v3, "no-stitch"

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->stitchTiles:Ljava/lang/String;

    const-string v3, "turbulence"

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->feTurbulence_type:Ljava/lang/String;

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->numOctaves:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->seed:Ljava/lang/Float;

    const-string v3, "over"

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->operator:Ljava/lang/String;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->k1:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->k2:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->k3:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->k4:Ljava/lang/Float;

    const-string v3, "matrix"

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->feColorMatrix_type:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->values:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->x:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->y:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->z:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->pointsAtX:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->pointsAtY:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->pointsAtZ:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->limitingConeAngle:Ljava/lang/Float;

    const-string v3, "duplicate"

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->edgeMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->bias:Ljava/lang/Float;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/scand/svg/parser/FilterOp;->preserveAlpha:Z

    iput-boolean v3, p0, Lcom/scand/svg/parser/FilterOp;->preserveAspectRatio:Z

    iput-boolean v3, p0, Lcom/scand/svg/parser/FilterOp;->externalResourcesRequired:Z

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->dx:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->dy:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->azimuth:Ljava/lang/Float;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->elevation:Ljava/lang/Float;

    const-string v3, "erode"

    iput-object v3, p0, Lcom/scand/svg/parser/FilterOp;->feMorphology_operator:Ljava/lang/String;

    iput-object v2, p0, Lcom/scand/svg/parser/FilterOp;->scale:Ljava/lang/Float;

    iput-object v0, p0, Lcom/scand/svg/parser/FilterOp;->xChannelSelector:Ljava/lang/String;

    iput-object v0, p0, Lcom/scand/svg/parser/FilterOp;->yChannelSelector:Ljava/lang/String;

    iput-object v1, p0, Lcom/scand/svg/parser/FilterOp;->diffuseConstant:Ljava/lang/Float;

    iput-object p1, p0, Lcom/scand/svg/parser/FilterOp;->filterOp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseFrom(Lcom/scand/svg/parser/Properties;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/scand/svg/parser/FilterOp;->filterOp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    :try_start_0
    const-class v6, Ljava/lang/Float;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    :cond_1
    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v5}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_2
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    invoke-virtual {p1, v5}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
