.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
.super Ljava/lang/Object;
.source "GridAffinityProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AffinityInfo"
.end annotation


# instance fields
.field private affFunc:Lorg/apache/ignite/cache/affinity/AffinityFunction;

.field private assignment:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

.field private cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

.field private mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cache/affinity/AffinityFunction;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    .locals 0
    .param p1, "affFunc"    # Lorg/apache/ignite/cache/affinity/AffinityFunction;
    .param p2, "mapper"    # Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .param p3, "assignment"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    .param p4, "cacheObjCtx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affFunc:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    .line 517
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    .line 518
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 519
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cache/affinity/AffinityFunction;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cache/affinity/AffinityFunction;
    .param p2, "x1"    # Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;

    .prologue
    .line 493
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;-><init>(Lorg/apache/ignite/cache/affinity/AffinityFunction;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityFunction;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affFunc:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityFunction;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .prologue
    .line 493
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affinityFunction()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .prologue
    .line 493
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .prologue
    .line 493
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->keyMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    return-object v0
.end method

.method private affinityFunction()Lorg/apache/ignite/cache/affinity/AffinityFunction;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affFunc:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    return-object v0
.end method

.method private assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    return-object v0
.end method

.method private keyMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
