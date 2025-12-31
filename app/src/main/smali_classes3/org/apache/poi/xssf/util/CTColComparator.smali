.class public Lorg/apache/poi/xssf/util/CTColComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BY_MAX:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;"
        }
    .end annotation
.end field

.field public static final BY_MIN_MAX:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/util/CTColComparator$1;

    invoke-direct {v0}, Lorg/apache/poi/xssf/util/CTColComparator$1;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MAX:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/poi/xssf/util/CTColComparator$2;

    invoke-direct {v0}, Lorg/apache/poi/xssf/util/CTColComparator$2;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    return-void
.end method
