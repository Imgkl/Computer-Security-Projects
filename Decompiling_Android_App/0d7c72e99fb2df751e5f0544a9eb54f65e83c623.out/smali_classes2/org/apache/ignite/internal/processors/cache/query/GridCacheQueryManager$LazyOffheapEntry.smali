.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyOffheapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
        "<TK;TV;>.Abstract",
        "LazySwapEntry;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final keyPtr:Lorg/apache/ignite/internal/util/typedef/T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field private final valPtr:Lorg/apache/ignite/internal/util/typedef/T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2378
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/util/typedef/T2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2389
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    .local p2, "keyPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local p3, "valPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .line 2390
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2391
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2393
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->keyPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    .line 2394
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->valPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    .line 2395
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/typedef/T2;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/typedef/T2;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    .prologue
    .line 2378
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/util/typedef/T2;)V

    return-void
.end method


# virtual methods
.method expireTime()J
    .locals 2

    .prologue
    .line 2422
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->valPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->expireTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected keyBytes()[B
    .locals 4

    .prologue
    .line 2399
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->keyPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->keyPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->copyMemory(JI)[B

    move-result-object v0

    return-object v0
.end method

.method timeToLive()J
    .locals 2

    .prologue
    .line 2417
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->valPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->timeToLive(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected unmarshalValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    const/4 v5, 0x0

    .line 2404
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->valPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->valPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6, v7, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->valueAddress(JI)J

    move-result-wide v2

    .line 2406
    .local v2, "ptr":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->fromOffheap(JZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 2408
    .local v0, "obj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-static {v0, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v1

    .line 2410
    .local v1, "val":Ljava/lang/Object;, "TV;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2412
    :cond_0
    return-object v1
.end method

.method version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 2

    .prologue
    .line 2427
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->valPtr:Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->version(J)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method
