.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveCommand;
.super Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;
.source "GridCacheCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveCommand"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 792
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V

    .line 793
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveCommand;->key:Ljava/lang/Object;

    .line 794
    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 782
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/GridKernalContext;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveCommand;->applyx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, "c":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveCommand;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
