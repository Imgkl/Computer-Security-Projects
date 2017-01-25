.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;
.super Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;
.source "GridCacheCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplaceCommand"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final key:Ljava/lang/Object;

.field private final ttl:Ljava/lang/Long;

.field private final val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "ttl"    # Ljava/lang/Long;
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V

    .line 952
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->key:Ljava/lang/Object;

    .line 953
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->ttl:Ljava/lang/Long;

    .line 954
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->val:Ljava/lang/Object;

    .line 955
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
    .line 933
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/GridKernalContext;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->applyx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
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
    .line 959
    .local p1, "c":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->ttl:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->ttl:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 960
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->ttl:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    .line 962
    .local v0, "duration":Ljavax/cache/expiry/Duration;
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .end local p1    # "c":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v1, Ljavax/cache/expiry/ModifiedExpiryPolicy;

    invoke-direct {v1, v0}, Ljavax/cache/expiry/ModifiedExpiryPolicy;-><init>(Ljavax/cache/expiry/Duration;)V

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object p1

    .line 965
    .end local v0    # "duration":Ljavax/cache/expiry/Duration;
    .restart local p1    # "c":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->key:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;->val:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1
.end method
