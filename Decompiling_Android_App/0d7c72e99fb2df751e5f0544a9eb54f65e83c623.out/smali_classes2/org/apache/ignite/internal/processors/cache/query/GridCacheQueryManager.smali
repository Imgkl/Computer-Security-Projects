.class public abstract Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$13;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static MAX_ITERATORS:I


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private final fieldsQryRes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private maxIterCnt:I

.field private volatile metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

.field private final qryIters:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
            "<TK;TV;>;>;>;>;"
        }
    .end annotation
.end field

.field protected qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

.field private volatile qryResCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult",
            "<*>;>;"
        }
    .end annotation
.end field

.field private space:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    .line 63
    const/16 v0, 0x3e8

    sput v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->MAX_ITERATORS:I

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    .line 78
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryIters:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQryRes:Ljava/util/concurrent/ConcurrentMap;

    .line 86
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    .line 89
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 2786
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryIters:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/UUID;J)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/UUID;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->maxIterCnt:I

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQryRes:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method private static and(Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    .locals 1
    .param p0, "f1"    # Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "f2"    # Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1839
    if-nez p0, :cond_0

    .line 1845
    .end local p1    # "f2":Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    :goto_0
    return-object p1

    .line 1842
    .restart local p1    # "f2":Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 1843
    goto :goto_0

    .line 1845
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;-><init>(Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private enterBusy()Z
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    return v0
.end method

.method private executeFieldsQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;[Ljava/lang/Object;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .locals 22
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "loc"    # Z
    .param p4, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "taskName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "recipient"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;[",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 601
    :cond_0
    const/16 v20, 0x0

    .line 603
    .local v20, "resKey":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 604
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 606
    :cond_1
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Received next page request after iterator was removed. Consider increasing maximum number of stored iterators (see GridCacheConfiguration.getMaximumQueryIteratorCount() configuration property)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-ne v2, v3, :cond_7

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v21

    new-instance v2, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    const-string v4, "SQL fields query executed."

    const/16 v5, 0x60

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 629
    :cond_3
    new-instance v20, Lorg/apache/ignite/internal/util/typedef/T2;

    .end local v20    # "resKey":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 631
    .restart local v20    # "resKey":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    .line 633
    .local v18, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->addRecipient(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v19, v18

    .line 688
    .end local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .local v19, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    :goto_0
    return-object v19

    .line 636
    .end local v19    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .restart local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    :cond_4
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    .end local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;-><init>(Ljava/lang/Object;)V

    .line 638
    .restart local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 639
    const/16 v20, 0x0

    .line 664
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-ne v2, v3, :cond_a

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->indexing()Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->filter(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->query(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v16

    .line 668
    .local v16, "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<*>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .end local v16    # "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<*>;"
    :goto_2
    if-eqz v20, :cond_6

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    move-object/from16 v19, v18

    .line 688
    .end local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .restart local v19    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    goto :goto_0

    .line 642
    .end local v19    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    :cond_7
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq v2, v3, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected query type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 644
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v21

    new-instance v2, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    const-string v4, "SPI query executed."

    const/16 v5, 0x60

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 660
    :cond_9
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;-><init>(Ljava/lang/Object;)V

    .restart local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    goto/16 :goto_1

    .line 671
    :cond_a
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq v2, v3, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    :catch_0
    move-exception v15

    .line 681
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->onDone(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 684
    if-eqz v20, :cond_6

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 673
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->filter(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;

    move-result-object v17

    .line 675
    .local v17, "qryRes":Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;->metaData()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->metaData(Ljava/util/List;)V

    .line 677
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;->iterator()Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->onDone(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 684
    .end local v17    # "qryRes":Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_c

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_c
    throw v2
.end method

.method private executeQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;[Ljava/lang/Object;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;
    .locals 21
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "loc"    # Z
    .param p4, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "taskName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "recipient"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;[",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    if-nez v2, :cond_1

    .line 463
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 465
    :cond_0
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Received next page request after iterator was removed. Consider increasing maximum number of stored iterators (see GridCacheConfiguration.getMaximumQueryIteratorCount() configuration property)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_1
    const/16 v19, 0x0

    .line 474
    .local v19, "resKey":Lorg/apache/ignite/internal/util/typedef/T3;, "Lorg/apache/ignite/internal/util/typedef/T3<Ljava/lang/String;Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-ne v2, v3, :cond_6

    .line 475
    new-instance v19, Lorg/apache/ignite/internal/util/typedef/T3;

    .end local v19    # "resKey":Lorg/apache/ignite/internal/util/typedef/T3;, "Lorg/apache/ignite/internal/util/typedef/T3<Ljava/lang/String;Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/T3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    .restart local v19    # "resKey":Lorg/apache/ignite/internal/util/typedef/T3;, "Lorg/apache/ignite/internal/util/typedef/T3<Ljava/lang/String;Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    .line 479
    .local v17, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->addRecipient(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v18, v17

    .line 580
    .end local v17    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .local v18, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    :goto_0
    return-object v18

    .line 482
    .end local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .restart local v17    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    :cond_2
    new-instance v17, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    .end local v17    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .line 484
    .restart local v17    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 485
    const/16 v19, 0x0

    .line 493
    :cond_3
    :goto_1
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$13;->$SwitchMap$org$apache$ignite$internal$processors$cache$query$GridCacheQueryType:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 567
    :cond_4
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown query type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :catch_0
    move-exception v15

    .line 573
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->onDone(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    if-eqz v19, :cond_5

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .end local v15    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    move-object/from16 v18, v17

    .line 580
    .end local v17    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .restart local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    goto :goto_0

    .line 488
    .end local v18    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    :cond_6
    new-instance v17, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .restart local v17    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    goto :goto_1

    .line 495
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v20

    new-instance v2, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    const-string v4, "SQL query executed."

    const/16 v5, 0x60

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 511
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->filter(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->query(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v16

    .line 570
    .local v16, "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->onDone(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    if-eqz v19, :cond_5

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 517
    .end local v16    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v20

    new-instance v2, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    const-string v4, "Scan query executed."

    const/16 v5, 0x60

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 533
    :cond_8
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->scanIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v16

    .line 535
    .restart local v16    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    goto :goto_3

    .line 538
    .end local v16    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v20

    new-instance v2, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    const-string v4, "Full text query executed."

    const/16 v5, 0x60

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->FULL_TEXT:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 554
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->filter(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v16

    .line 556
    .restart local v16    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    goto/16 :goto_3

    .line 559
    .end local v16    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->setIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v16

    .line 561
    .restart local v16    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    goto/16 :goto_3

    .line 564
    .end local v16    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    :pswitch_4
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "SQL fields query is incorrectly processed."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 576
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_a

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_a
    throw v2

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fieldsQueryResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .locals 12
    .param p2, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p3, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;",
            ">;>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1614
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "resMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1615
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1619
    :cond_1
    const/4 v8, 0x0

    .line 1621
    .local v8, "exec":Z
    monitor-enter p1

    .line 1622
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1624
    .local v9, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    if-nez v9, :cond_2

    .line 1625
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v9, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .end local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    invoke-direct {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .restart local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const/4 v8, 0x1

    .line 1630
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    if-eqz v8, :cond_3

    .line 1634
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->arguments()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->executeFieldsQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;[Ljava/lang/Object;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1642
    :cond_3
    :goto_0
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    return-object v0

    .line 1630
    .end local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1637
    .restart local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    :catch_0
    move-exception v7

    .line 1638
    .local v7, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v9, v7}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private fieldsQueryResult(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .locals 7
    .param p1, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p2, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1566
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v5

    .line 1568
    .local v5, "sndId":Ljava/util/UUID;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1570
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQryRes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1572
    .local v0, "iters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    if-nez v0, :cond_1

    .line 1573
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$9;

    .end local v0    # "iters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$9;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;IFZLjava/util/UUID;)V

    .line 1595
    .restart local v0    # "iters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQryRes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1597
    .local v6, "old":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    if-eqz v6, :cond_1

    .line 1598
    move-object v0, v6

    .line 1601
    .end local v6    # "old":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQueryResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    move-result-object v1

    return-object v1
.end method

.method private filter(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;)",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;"
        }
    .end annotation

    .prologue
    .line 1829
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeBackups()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->backupsFilter(Z)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    move-result-object v0

    return-object v0
.end method

.method private injectResources(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 993
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 994
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    .line 996
    .local v0, "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 998
    .local v1, "ldr":Ljava/lang/ClassLoader;
    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->isGlobalLoader(Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 999
    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1003
    .end local v0    # "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    .end local v1    # "ldr":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 1001
    .restart local v0    # "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    .restart local v1    # "ldr":Ljava/lang/ClassLoader;
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private invalidateResultCache()V
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryResCache:Ljava/util/concurrent/ConcurrentMap;

    .line 319
    :cond_0
    return-void
.end method

.method private leaveBusy()V
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 164
    return-void
.end method

.method private offheapIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;)",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v1

    .line 915
    .local v1, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 916
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v1, v3, v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/lang/IgniteBiPredicate;ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .line 918
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.OffheapIteratorClosure;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawOffHeapIterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v3

    .line 923
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.OffheapIteratorClosure;"
    :goto_0
    return-object v3

    .line 921
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawOffHeapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v2

    .line 923
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<[B[B>;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->scanIterator(Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;

    move-result-object v3

    goto :goto_0
.end method

.method private queryResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;
    .locals 12
    .param p2, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p3, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
            "<TK;TV;>;>;>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1484
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "futs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1485
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1489
    :cond_1
    const/4 v8, 0x0

    .line 1491
    .local v8, "exec":Z
    monitor-enter p1

    .line 1492
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1494
    .local v9, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    if-nez v9, :cond_2

    .line 1495
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v9, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .end local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    invoke-direct {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .restart local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    const/4 v8, 0x1

    .line 1499
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    if-eqz v8, :cond_3

    .line 1503
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->arguments()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->executeQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;[Ljava/lang/Object;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1516
    :cond_3
    :goto_0
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    return-object v0

    .line 1499
    .end local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1506
    .restart local v9    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    :catch_0
    move-exception v7

    .line 1507
    .local v7, "e":Ljava/lang/Error;
    invoke-virtual {v9, v7}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1509
    throw v7

    .line 1511
    .end local v7    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v7

    .line 1512
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private queryResult(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;
    .locals 7
    .param p1, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p2, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1440
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v5

    .line 1442
    .local v5, "sndId":Ljava/util/UUID;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1444
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryIters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1446
    .local v0, "futs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    if-nez v0, :cond_1

    .line 1447
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;

    .end local v0    # "futs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;IFZLjava/util/UUID;)V

    .line 1465
    .restart local v0    # "futs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryIters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1467
    .local v6, "old":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    if-eqz v6, :cond_1

    .line 1468
    move-object v0, v6

    .line 1471
    .end local v6    # "old":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->queryResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    move-result-object v1

    return-object v1
.end method

.method private static recipient(Ljava/util/UUID;J)Ljava/lang/Object;
    .locals 3
    .param p0, "sndId"    # Ljava/util/UUID;
    .param p1, "reqId"    # J

    .prologue
    .line 1554
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1556
    :cond_0
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private scanIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    const/4 v10, 0x0

    .line 748
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v9

    .line 750
    .local v9, "prj0":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->keepPortable()Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v9

    .line 753
    :cond_0
    move-object v4, v9

    .line 755
    .local v4, "prj":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v6

    .line 757
    .local v6, "keyValFilter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->injectResources(Ljava/lang/Object;)V

    .line 759
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v5, v10

    .line 761
    .local v5, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v2

    .line 763
    .local v2, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    .line 859
    .local v0, "heapIt":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 860
    new-instance v8, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 862
    .local v8, "iters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/lang/GridIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;>;"
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isOffHeapEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->offheapIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->swapIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_2
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;

    invoke-direct {v7, v8, v10}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;-><init>(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .line 875
    .end local v8    # "iters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/lang/GridIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;>;"
    .local v7, "it":Lorg/apache/ignite/internal/util/lang/GridIterator;, "Lorg/apache/ignite/internal/util/lang/GridIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;

    invoke-direct {v1, p0, v7, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/lang/GridIterator;Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;)V

    return-object v1

    .line 759
    .end local v0    # "heapIt":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .end local v2    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v5    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v7    # "it":Lorg/apache/ignite/internal/util/lang/GridIterator;, "Lorg/apache/ignite/internal/util/lang/GridIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    goto :goto_0

    .line 873
    .restart local v0    # "heapIt":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .restart local v2    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v5    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :cond_5
    move-object v7, v0

    .restart local v7    # "it":Lorg/apache/ignite/internal/util/lang/GridIterator;, "Lorg/apache/ignite/internal/util/lang/GridIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    goto :goto_1
.end method

.method private scanIterator(Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
    .locals 1
    .param p1    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "keepPortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;Z)",
            "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 937
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<[B[B>;>;"
    .local p2, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    if-nez p1, :cond_0

    .line 938
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    .line 940
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)V

    goto :goto_0
.end method

.method private setIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    const/4 v8, 0x1

    .line 696
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;

    .line 698
    .local v1, "filter":Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->init(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 700
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->setId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    .line 702
    .local v2, "id":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setData(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    move-result-object v0

    .line 704
    .local v0, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    if-nez v0, :cond_0

    .line 705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 707
    :cond_0
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V

    new-array v5, v8, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;

    invoke-direct {v7, p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;)V

    aput-object v7, v5, v6

    invoke-static {v0, v4, v8, v5}, Lorg/apache/ignite/internal/util/typedef/F;->iterator(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v3

    .line 721
    .local v3, "it":Lorg/apache/ignite/internal/util/lang/GridIterator;, "Lorg/apache/ignite/internal/util/lang/GridIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;

    invoke-direct {v4, p0, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/lang/GridIterator;)V

    return-object v4
.end method

.method private swapIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;)",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 901
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v0

    .line 903
    .local v0, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawSwapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v1

    .line 905
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<[B[B>;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->scanIterator(Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public backupsFilter(Z)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    .locals 1
    .param p1, "includeBackups"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1803
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 1804
    const/4 v0, 0x0

    .line 1806
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V

    goto :goto_0
.end method

.method public abstract loadPage(JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Ljava/util/Collection;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
    .locals 1

    .prologue
    .line 1711
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->copy()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    move-result-object v0

    return-object v0
.end method

.method onCancelAtStop()V
    .locals 0

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    return-void
.end method

.method protected abstract onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation
.end method

.method protected onKernalStop0(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->removeListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onCancelAtStop()V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onWaitAtStop()V

    goto :goto_0
.end method

.method public onMetricsUpdate(JZ)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "fail"    # Z

    .prologue
    .line 1726
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->onQueryExecute(JZ)V

    .line 1727
    return-void
.end method

.method protected abstract onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation
.end method

.method onQueryFutureCanceled(J)V
    .locals 0
    .param p1, "reqId"    # J

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    return-void
.end method

.method public onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "swapSpaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v0
.end method

.method public onUndeploy(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 387
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 391
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->onUndeploy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->invalidateResultCache()V

    .line 399
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->invalidateResultCache()V

    .line 399
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v1
.end method

.method public onUnswap(Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 2
    .param p3, "valBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v0
.end method

.method onWaitAtStop()V
    .locals 0

    .prologue
    .line 262
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    const/4 v2, 0x0

    .line 1869
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Query manager memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1871
    return-void
.end method

.method processQueryRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)V
    .locals 0
    .param p1, "sndId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    .prologue
    .line 272
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    return-void
.end method

.method public abstract queryDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract queryFieldsDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract queryFieldsLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract queryLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to rebuild indexes (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 237
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v0
.end method

.method public rebuildIndexes(Ljava/lang/Class;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "valType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to rebuild indexes (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->rebuildIndexes(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-nez v0, :cond_2

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->remove(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->invalidateResultCache()V

    .line 377
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->invalidateResultCache()V

    .line 377
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v0
.end method

.method protected removeFieldsQueryResult(Ljava/util/UUID;J)V
    .locals 6
    .param p1, "sndId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "reqId"    # J

    .prologue
    .line 1651
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    if-nez p1, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1654
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQryRes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1656
    .local v2, "futs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;>;"
    if-eqz v2, :cond_0

    .line 1659
    monitor-enter v2

    .line 1660
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1661
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    if-eqz v1, :cond_0

    .line 1664
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1661
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1667
    .restart local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;>;"
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    invoke-static {p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->closeIfNotShared(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Failed to close iterator."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected removeQueryResult(Ljava/util/UUID;J)V
    .locals 6
    .param p1, "sndId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "reqId"    # J

    .prologue
    .line 1525
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    if-nez p1, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryIters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1530
    .local v2, "futs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    if-eqz v2, :cond_0

    .line 1533
    monitor-enter v2

    .line 1534
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1535
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    if-eqz v1, :cond_0

    .line 1539
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    invoke-static {p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->closeIfNotShared(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Failed to close iterator."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1535
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 1718
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    .line 1719
    return-void
.end method

.method protected runFieldsQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;)V
    .locals 44
    .param p1, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;

    .prologue
    .line 1011
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1013
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1015
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to process query request (grid is stopping)."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1021
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1024
    :cond_2
    const/16 v39, 0x1

    .line 1026
    .local v39, "rmvRes":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v42

    .line 1028
    .local v42, "statsEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v4, 0x61

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v37

    .line 1032
    .local v37, "readEvt":Z
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->transformer()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v43

    .line 1033
    .local v43, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v36

    .line 1035
    .local v36, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->injectResources(Ljava/lang/Object;)V

    .line 1036
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->injectResources(Ljava/lang/Object;)V

    .line 1038
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    .line 1040
    .local v3, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize()I

    move-result v35

    .line 1042
    .local v35, "pageSize":I
    const/4 v13, 0x0

    .line 1043
    .local v13, "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 1045
    .local v12, "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v36, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocalNode(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1046
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move/from16 v0, v35

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1050
    .restart local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v7

    .line 1052
    .local v7, "taskName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->arguments()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->executeFieldsQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;[Ljava/lang/Object;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    move-result-object v38

    .line 1058
    .local v38, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->includeMetaData()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v38 .. v38}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->metaData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {v38 .. v38}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->metaData()Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1062
    .local v11, "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->includeMetaData()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1063
    const/4 v11, 0x0

    .line 1065
    :cond_4
    new-instance v32, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->iterator(Ljava/lang/Object;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;-><init>(Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;)V

    .line 1068
    .local v32, "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received fields iterator [iterHasNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1071
    :cond_5
    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1072
    if-eqz v36, :cond_6

    .line 1073
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 1075
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v9

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v8 .. v15}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1172
    if-eqz v39, :cond_7

    .line 1173
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeFieldsQueryResult(Ljava/util/UUID;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1177
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    .line 1179
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .end local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .end local v35    # "pageSize":I
    .end local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v37    # "readEvt":Z
    .end local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .end local v39    # "rmvRes":Z
    .end local v42    # "statsEnabled":Z
    .end local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_8
    :goto_3
    return-void

    .line 1048
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .restart local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v35    # "pageSize":I
    .restart local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v37    # "readEvt":Z
    .restart local v39    # "rmvRes":Z
    .restart local v42    # "statsEnabled":Z
    .restart local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_9
    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move/from16 v0, v35

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 1052
    .restart local v7    # "taskName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->fieldsQueryResult(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;

    move-result-object v38

    goto/16 :goto_1

    .line 1058
    .restart local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {v38 .. v38}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->metaData()Ljava/util/List;

    move-result-object v11

    goto/16 :goto_2

    .line 1080
    .restart local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .restart local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    :cond_d
    const/16 v31, 0x0

    .line 1081
    .local v31, "cnt":I
    const/16 v33, 0x0

    .line 1083
    .local v33, "metaSent":Z
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1084
    if-eqz v42, :cond_12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v40

    .line 1086
    .local v40, "start":J
    :goto_4
    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v30

    .line 1089
    .local v30, "row":Ljava/lang/Object;
    if-nez v30, :cond_13

    .line 1090
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v15

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v14 .. v19}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z

    .line 1147
    .end local v30    # "row":Ljava/lang/Object;
    .end local v40    # "start":J
    :cond_f
    if-eqz v36, :cond_10

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v15

    const/16 v18, 0x0

    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v11

    invoke-virtual/range {v14 .. v21}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1172
    :cond_10
    if-eqz v39, :cond_11

    .line 1173
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeFieldsQueryResult(Ljava/util/UUID;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1177
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .end local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v31    # "cnt":I
    .end local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .end local v33    # "metaSent":Z
    .end local v35    # "pageSize":I
    .end local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .end local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_11
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto :goto_3

    .line 1084
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .restart local v7    # "taskName":Ljava/lang/String;
    .restart local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .restart local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v31    # "cnt":I
    .restart local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .restart local v33    # "metaSent":Z
    .restart local v35    # "pageSize":I
    .restart local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .restart local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_12
    const-wide/16 v40, 0x0

    goto :goto_4

    .line 1095
    .restart local v30    # "row":Ljava/lang/Object;
    .restart local v40    # "start":J
    :cond_13
    if-eqz v42, :cond_14

    .line 1096
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v34

    .line 1098
    .local v34, "metrics":Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    const/4 v2, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 1100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v40

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addGetTimeNanos(J)V

    .line 1103
    .end local v34    # "metrics":Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    :cond_14
    if-eqz v37, :cond_15

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    new-instance v14, Lorg/apache/ignite/events/CacheQueryReadEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v15

    const-string v16, "SQL fields query result set row read."

    const/16 v17, 0x61

    sget-object v18, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->arguments()[Ljava/lang/Object;

    move-result-object v24

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v7

    invoke-direct/range {v14 .. v30}, Lorg/apache/ignite/events/CacheQueryReadEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v14}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1123
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v2

    if-nez v2, :cond_16

    if-nez v36, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocalNode(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1125
    :cond_16
    if-eqz v36, :cond_1b

    .line 1126
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteReducer;->collect(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1135
    :goto_6
    if-nez v36, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->allPages()Z

    move-result v2

    if-nez v2, :cond_17

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    :cond_17
    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1136
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v15

    if-nez v33, :cond_1e

    move-object/from16 v17, v11

    :goto_7
    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1f

    const/16 v20, 0x1

    :goto_8
    const/16 v21, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v21}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z

    .line 1139
    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1140
    const/16 v39, 0x0

    .line 1142
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->allPages()Z
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-nez v2, :cond_e

    .line 1172
    if-eqz v39, :cond_1a

    .line 1173
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeFieldsQueryResult(Ljava/util/UUID;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1177
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto/16 :goto_3

    .line 1130
    :cond_1b
    :try_start_7
    move-object/from16 v0, v30

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 1152
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .end local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v30    # "row":Ljava/lang/Object;
    .end local v31    # "cnt":I
    .end local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .end local v33    # "metaSent":Z
    .end local v35    # "pageSize":I
    .end local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .end local v40    # "start":J
    .end local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v21

    .line 1153
    .local v21, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/sql/SQLException;

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1154
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to run fields query [qry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1164
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v14 .. v21}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1172
    if-eqz v39, :cond_11

    .line 1173
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeFieldsQueryResult(Ljava/util/UUID;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 1177
    .end local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v37    # "readEvt":Z
    .end local v39    # "rmvRes":Z
    .end local v42    # "statsEnabled":Z
    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v2

    .line 1133
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .restart local v7    # "taskName":Ljava/lang/String;
    .restart local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .restart local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v30    # "row":Ljava/lang/Object;
    .restart local v31    # "cnt":I
    .restart local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .restart local v33    # "metaSent":Z
    .restart local v35    # "pageSize":I
    .restart local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v37    # "readEvt":Z
    .restart local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .restart local v39    # "rmvRes":Z
    .restart local v40    # "start":J
    .restart local v42    # "statsEnabled":Z
    .restart local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1d
    :try_start_a
    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_6

    .line 1166
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .end local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v30    # "row":Ljava/lang/Object;
    .end local v31    # "cnt":I
    .end local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .end local v33    # "metaSent":Z
    .end local v35    # "pageSize":I
    .end local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .end local v40    # "start":J
    .end local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_1
    move-exception v21

    .line 1167
    .local v21, "e":Ljava/lang/Throwable;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to run fields query [qry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1169
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v14 .. v21}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1172
    if-eqz v39, :cond_11

    .line 1173
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeFieldsQueryResult(Ljava/util/UUID;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    .line 1136
    .end local v21    # "e":Ljava/lang/Throwable;
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .restart local v7    # "taskName":Ljava/lang/String;
    .restart local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .restart local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v30    # "row":Ljava/lang/Object;
    .restart local v31    # "cnt":I
    .restart local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .restart local v33    # "metaSent":Z
    .restart local v35    # "pageSize":I
    .restart local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .restart local v40    # "start":J
    .restart local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_1f
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 1156
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v11    # "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .end local v12    # "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v13    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v30    # "row":Ljava/lang/Object;
    .end local v31    # "cnt":I
    .end local v32    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<*>;"
    .end local v33    # "metaSent":Z
    .end local v35    # "pageSize":I
    .end local v36    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v38    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
    .end local v40    # "start":J
    .end local v43    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v21, "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_20
    const/4 v2, 0x1

    :try_start_d
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/sql/SQLException;

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to run fields query [node="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", msg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v2, Ljava/sql/SQLException;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;->getCause(Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_9

    .line 1172
    .end local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_1
    move-exception v2

    if-eqz v39, :cond_21

    .line 1173
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeFieldsQueryResult(Ljava/util/UUID;J)V

    :cond_21
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1160
    .restart local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_22
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to run fields query [node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_9
.end method

.method protected runQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;)V
    .locals 50
    .param p1, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;

    .prologue
    .line 1188
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1190
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1192
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to process query request (grid is stopping)."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1198
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->local()Z

    move-result v5

    .line 1200
    .local v5, "loc":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running query: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    :cond_2
    const/16 v41, 0x1

    .line 1207
    .local v41, "rmvIter":Z
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->transformer()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v48

    .line 1208
    .local v48, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v38

    .line 1210
    .local v38, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->injectResources(Ljava/lang/Object;)V

    .line 1211
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->injectResources(Ljava/lang/Object;)V

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v3

    .line 1215
    .local v3, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize()I

    move-result v37

    .line 1217
    .local v37, "pageSize":I
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeBackups()Z

    move-result v33

    .line 1219
    .local v33, "incBackups":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v7

    .line 1226
    .local v7, "taskName":Ljava/lang/String;
    if-eqz v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->arguments()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->executeQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;[Ljava/lang/Object;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    move-result-object v40

    .line 1231
    .local v40, "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->iterator(Ljava/lang/Object;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v34

    .line 1232
    .local v34, "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    invoke-virtual/range {v40 .. v40}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v49

    .line 1234
    .local v49, "type":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v29

    .line 1236
    .local v29, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received index iterator [iterHasNext="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->hasNext()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", cacheSize="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1240
    :cond_3
    const/16 v30, 0x0

    .line 1242
    .local v30, "cnt":I
    const/16 v46, 0x0

    .line 1243
    .local v46, "stop":Z
    const/16 v36, 0x0

    .line 1245
    .local v36, "pageSent":Z
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1247
    .local v16, "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v47

    .line 1249
    .local v47, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v43

    .line 1251
    .local v43, "statsEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v4, 0x61

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v39

    .local v39, "readEvt":Z
    move-object/from16 v31, v16

    .line 1253
    .end local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local v31, "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1254
    if-eqz v43, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v44

    .line 1256
    .local v44, "start":J
    :goto_2
    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1259
    .local v42, "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    if-nez v42, :cond_b

    .line 1260
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v5

    move-object/from16 v10, p1

    invoke-virtual/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z

    move-object/from16 v16, v31

    .line 1411
    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .end local v44    # "start":J
    .restart local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_5
    :goto_3
    if-nez v36, :cond_6

    .line 1412
    if-nez v38, :cond_1d

    .line 1413
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move v14, v5

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v18}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1424
    :cond_6
    :goto_4
    if-eqz v41, :cond_7

    .line 1425
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeQueryResult(Ljava/util/UUID;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1429
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v29    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .end local v30    # "cnt":I
    .end local v33    # "incBackups":Z
    .end local v34    # "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .end local v36    # "pageSent":Z
    .end local v37    # "pageSize":I
    .end local v38    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .end local v39    # "readEvt":Z
    .end local v40    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .end local v43    # "statsEnabled":Z
    .end local v46    # "stop":Z
    .end local v47    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v48    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .end local v49    # "type":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    :cond_7
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    .line 1431
    .end local v5    # "loc":Z
    .end local v41    # "rmvIter":Z
    :cond_8
    :goto_6
    return-void

    .line 1226
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .restart local v5    # "loc":Z
    .restart local v7    # "taskName":Ljava/lang/String;
    .restart local v33    # "incBackups":Z
    .restart local v37    # "pageSize":I
    .restart local v38    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .restart local v41    # "rmvIter":Z
    .restart local v48    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->queryResult(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    move-result-object v40

    goto/16 :goto_0

    .line 1254
    .restart local v29    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .restart local v30    # "cnt":I
    .restart local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v34    # "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .restart local v36    # "pageSent":Z
    .restart local v39    # "readEvt":Z
    .restart local v40    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .restart local v43    # "statsEnabled":Z
    .restart local v46    # "stop":Z
    .restart local v47    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v49    # "type":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    :cond_a
    const-wide/16 v44, 0x0

    goto :goto_2

    .line 1265
    .restart local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .restart local v44    # "start":J
    :cond_b
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/lang/IgniteBiTuple;->getKey()Ljava/lang/Object;

    move-result-object v21

    .line 1268
    .local v21, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v4, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v2, v4, :cond_c

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v2

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-ne v2, v4, :cond_c

    if-nez v33, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v2, v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring backup element [row="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", cacheMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", incBackups="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", primary="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v6, v8, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 1418
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/Object;, "TK;"
    .end local v29    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .end local v30    # "cnt":I
    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v33    # "incBackups":Z
    .end local v34    # "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .end local v36    # "pageSent":Z
    .end local v37    # "pageSize":I
    .end local v38    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .end local v39    # "readEvt":Z
    .end local v40    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .end local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .end local v43    # "statsEnabled":Z
    .end local v44    # "start":J
    .end local v46    # "stop":Z
    .end local v47    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v48    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .end local v49    # "type":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    :catch_0
    move-exception v28

    .line 1419
    .local v28, "e":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to run query [qry="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", node="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v2, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1421
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v23, p0

    move/from16 v24, v5

    move-object/from16 v25, p1

    invoke-virtual/range {v23 .. v28}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1424
    if-eqz v41, :cond_7

    .line 1425
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeQueryResult(Ljava/util/UUID;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 1429
    .end local v5    # "loc":Z
    .end local v28    # "e":Ljava/lang/Throwable;
    .end local v41    # "rmvIter":Z
    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v2

    .line 1278
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .restart local v5    # "loc":Z
    .restart local v7    # "taskName":Ljava/lang/String;
    .restart local v21    # "key":Ljava/lang/Object;, "TK;"
    .restart local v29    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .restart local v30    # "cnt":I
    .restart local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v33    # "incBackups":Z
    .restart local v34    # "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .restart local v36    # "pageSent":Z
    .restart local v37    # "pageSize":I
    .restart local v38    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .restart local v39    # "readEvt":Z
    .restart local v40    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .restart local v41    # "rmvIter":Z
    .restart local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .restart local v43    # "statsEnabled":Z
    .restart local v44    # "start":J
    .restart local v46    # "stop":Z
    .restart local v47    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v48    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .restart local v49    # "type":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    :cond_c
    :try_start_6
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/lang/IgniteBiTuple;->getValue()Ljava/lang/Object;

    move-result-object v22

    .line 1280
    .local v22, "val":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Record [key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", val="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", incBackups="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "priNode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->primaryNode(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", node="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1285
    :cond_d
    if-nez v22, :cond_f

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsuitable record value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 1424
    .end local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/Object;, "TK;"
    .end local v22    # "val":Ljava/lang/Object;, "TV;"
    .end local v29    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .end local v30    # "cnt":I
    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v33    # "incBackups":Z
    .end local v34    # "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .end local v36    # "pageSent":Z
    .end local v37    # "pageSize":I
    .end local v38    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .end local v39    # "readEvt":Z
    .end local v40    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .end local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .end local v43    # "statsEnabled":Z
    .end local v44    # "start":J
    .end local v46    # "stop":Z
    .end local v47    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v48    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .end local v49    # "type":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    :catchall_1
    move-exception v2

    if-eqz v41, :cond_e

    .line 1425
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeQueryResult(Ljava/util/UUID;J)V

    :cond_e
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1292
    .restart local v3    # "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .restart local v7    # "taskName":Ljava/lang/String;
    .restart local v21    # "key":Ljava/lang/Object;, "TK;"
    .restart local v22    # "val":Ljava/lang/Object;, "TV;"
    .restart local v29    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .restart local v30    # "cnt":I
    .restart local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v33    # "incBackups":Z
    .restart local v34    # "iter":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .restart local v36    # "pageSent":Z
    .restart local v37    # "pageSize":I
    .restart local v38    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .restart local v39    # "readEvt":Z
    .restart local v40    # "res":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;"
    .restart local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .restart local v43    # "statsEnabled":Z
    .restart local v44    # "start":J
    .restart local v46    # "stop":Z
    .restart local v47    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v48    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/util/Map$Entry<TK;TV;>;Ljava/lang/Object;>;"
    .restart local v49    # "type":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    :cond_f
    if-eqz v43, :cond_10

    .line 1293
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v35

    .line 1295
    .local v35, "metrics":Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    const/4 v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 1297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, v8, v44

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addGetTimeNanos(J)V

    .line 1300
    .end local v35    # "metrics":Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    :cond_10
    if-eqz v39, :cond_11

    .line 1301
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$13;->$SwitchMap$org$apache$ignite$internal$processors$cache$query$GridCacheQueryType:[I

    invoke-virtual/range {v49 .. v49}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1367
    :cond_11
    :goto_7
    invoke-static/range {v21 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v32

    .line 1370
    .local v32, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v38, :cond_12

    if-eqz v48, :cond_13

    .line 1371
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    check-cast v32, Ljava/util/Map$Entry;

    .line 1374
    .restart local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_13
    if-eqz v38, :cond_15

    .line 1375
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteReducer;->collect(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1376
    :cond_14
    invoke-interface/range {v38 .. v38}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v5

    move-object/from16 v10, p1

    invoke-virtual/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z

    .line 1378
    const/16 v36, 0x1

    move-object/from16 v16, v31

    .line 1380
    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 1303
    .end local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    new-instance v8, Lorg/apache/ignite/events/CacheQueryReadEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    const-string v10, "SQL query entry read."

    const/16 v11, 0x61

    sget-object v12, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SQL:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->arguments()[Ljava/lang/Object;

    move-result-object v18

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v19

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v7

    invoke-direct/range {v8 .. v24}, Lorg/apache/ignite/events/CacheQueryReadEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_7

    .line 1324
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    new-instance v8, Lorg/apache/ignite/events/CacheQueryReadEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    const-string v10, "Full text query entry read."

    const/16 v11, 0x61

    sget-object v12, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->FULL_TEXT:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->queryClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v19

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v7

    invoke-direct/range {v8 .. v24}, Lorg/apache/ignite/events/CacheQueryReadEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_7

    .line 1345
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    new-instance v8, Lorg/apache/ignite/events/CacheQueryReadEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    const-string v10, "Scan query entry read."

    const/16 v11, 0x61

    sget-object v12, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v19

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v7

    invoke-direct/range {v8 .. v24}, Lorg/apache/ignite/events/CacheQueryReadEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_7

    .line 1386
    .restart local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_15
    if-eqz v48, :cond_19

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_8
    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1389
    if-nez v5, :cond_1e

    .line 1390
    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move/from16 v1, v37

    if-eq v0, v1, :cond_16

    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1391
    :cond_16
    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v12, 0x1

    .line 1393
    .local v12, "finished":Z
    :goto_9
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v5

    move-object/from16 v10, p1

    move-object/from16 v11, v31

    invoke-virtual/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z

    .line 1395
    const/16 v36, 0x1

    .line 1397
    if-nez v12, :cond_17

    .line 1398
    const/16 v41, 0x0

    .line 1400
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->allPages()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    if-nez v2, :cond_1c

    .line 1424
    if-eqz v41, :cond_18

    .line 1425
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->requestId()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->removeQueryResult(Ljava/util/UUID;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1429
    :cond_18
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto/16 :goto_6

    .line 1386
    .end local v12    # "finished":Z
    :cond_19
    if-nez v5, :cond_1a

    :try_start_a
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryResponseEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_1a
    invoke-static/range {v21 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    goto :goto_8

    .line 1391
    :cond_1b
    const/4 v12, 0x0

    goto :goto_9

    .line 1403
    .restart local v12    # "finished":Z
    :cond_1c
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1405
    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v46, :cond_5

    .end local v12    # "finished":Z
    :goto_a
    move-object/from16 v31, v16

    .line 1409
    .end local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto/16 :goto_1

    .line 1415
    .end local v21    # "key":Ljava/lang/Object;, "TK;"
    .end local v22    # "val":Ljava/lang/Object;, "TV;"
    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .end local v44    # "start":J
    .restart local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_1d
    invoke-interface/range {v38 .. v38}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move/from16 v24, v5

    move-object/from16 v25, p1

    invoke-virtual/range {v23 .. v28}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_4

    .end local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v21    # "key":Ljava/lang/Object;, "TK;"
    .restart local v22    # "val":Ljava/lang/Object;, "TV;"
    .restart local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .restart local v44    # "start":J
    :cond_1e
    move-object/from16 v16, v31

    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto :goto_a

    .end local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v21    # "key":Ljava/lang/Object;, "TK;"
    .end local v22    # "val":Ljava/lang/Object;, "TV;"
    .end local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v42    # "row":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .end local v44    # "start":J
    .restart local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_1f
    move-object/from16 v16, v31

    .end local v31    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v16    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 1301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public size(Ljava/lang/Class;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "valType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get size (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->size(Ljava/lang/String;Ljava/lang/Class;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 192
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v0
.end method

.method public space()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1879
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    return-object v0
.end method

.method public sqlMetadata()Ljava/util/Collection;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1736
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1737
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "Failed to get metadata (grid is stopping)."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1740
    :cond_0
    :try_start_0
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .line 1743
    .local v9, "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteNodes()Ljava/util/Collection;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;

    invoke-direct/range {v21 .. v22}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$10;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v15

    .line 1749
    .local v15, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1751
    .local v16, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    const/16 v17, 0x0

    .line 1754
    .local v17, "rmtFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;>;"
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v18

    sget-object v19, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->asSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 1758
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v10

    .line 1760
    .local v10, "locFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    if-eqz v17, :cond_2

    .line 1761
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1763
    :cond_2
    invoke-interface {v10}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1765
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1767
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 1768
    .local v5, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;

    .line 1769
    .local v12, "meta":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;->cacheName()Ljava/lang/String;

    move-result-object v14

    .line 1771
    .local v14, "name":Ljava/lang/String;
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 1773
    .local v4, "cacheMetas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    if-nez v4, :cond_4

    .line 1774
    new-instance v4, Ljava/util/LinkedList;

    .end local v4    # "cacheMetas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .restart local v4    # "cacheMetas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    invoke-interface {v11, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    :cond_4
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1791
    .end local v4    # "cacheMetas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    .end local v5    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .end local v10    # "locFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .end local v12    # "meta":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v16    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .end local v17    # "rmtFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;>;"
    :catchall_0
    move-exception v18

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v18

    .line 1780
    .restart local v9    # "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .restart local v10    # "locFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .restart local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .restart local v15    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v16    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;"
    .restart local v17    # "rmtFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;>;>;"
    :cond_5
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1783
    .local v6, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;>;"
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Iterable;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;-><init>(Ljava/lang/Iterable;)V

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1785
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    .line 1786
    .local v13, "metas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;-><init>(Ljava/lang/Iterable;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1791
    .end local v13    # "metas":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;>;"
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    return-object v6
.end method

.method public start0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    .line 98
    sget v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->MAX_ITERATORS:I

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->maxIterCnt:I

    .line 100
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 138
    return-void

    .line 137
    nop

    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method

.method public final stop0(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Stopped cache query manager."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public store(Ljava/lang/Object;[BLjava/lang/Object;[BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V
    .locals 10
    .param p2, "keyBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "valBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[BTV;[B",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 336
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 338
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-nez v0, :cond_3

    .line 355
    :cond_2
    :goto_0
    return-void

    .line 341
    :cond_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    if-nez p3, :cond_4

    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p3

    .line 348
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->space:Ljava/lang/String;

    invoke-static {p5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->versionToBytes(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)[B

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->store(Ljava/lang/String;Ljava/lang/Object;[BLjava/lang/Object;[B[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->invalidateResultCache()V

    .line 353
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->invalidateResultCache()V

    .line 353
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->leaveBusy()V

    throw v0
.end method
