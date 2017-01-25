.class public Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictResolver;
.super Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;
.source "GridCacheVersionConflictResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected resolve0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)V
    .locals 6
    .param p4, "atomicVerComparator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    .local p2, "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx<TK;TV;>;"
    .local p3, "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx<TK;TV;>;"
    const-wide/16 v4, 0x0

    .line 31
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->dataCenterId()B

    move-result v2

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->dataCenterId()B

    move-result v3

    if-eq v2, v3, :cond_0

    .line 32
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useNew()V

    .line 58
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->isStartVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useNew()V

    goto :goto_0

    .line 37
    :cond_1
    if-eqz p4, :cond_3

    .line 39
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->ATOMIC_VER_COMPARATOR:Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicVersionComparator;->compare(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)I

    move-result v2

    if-ltz v2, :cond_2

    .line 40
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useOld()V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useNew()V

    goto :goto_0

    .line 45
    :cond_3
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->topologyVersion()I

    move-result v2

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->topologyVersion()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 47
    .local v0, "topVerDiff":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 48
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useNew()V

    goto :goto_0

    .line 49
    :cond_4
    cmp-long v2, v0, v4

    if-gez v2, :cond_5

    .line 50
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useOld()V

    goto :goto_0

    .line 51
    :cond_5
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->order()J

    move-result-wide v2

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->order()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 52
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useNew()V

    goto :goto_0

    .line 54
    :cond_6
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useOld()V

    goto :goto_0
.end method
