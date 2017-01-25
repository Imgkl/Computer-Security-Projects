.class public abstract Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;
.super Ljava/lang/Object;
.source "GridCacheVersionAbstractConflictResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    .locals 1
    .param p3, "atomicVerComparator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx",
            "<TK;TV;>;Z)",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx<TK;TV;>;"
    .local p2, "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;)V

    .line 39
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;->resolve0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)V

    .line 41
    return-object v0
.end method

.method protected abstract resolve0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)V
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
.end method
