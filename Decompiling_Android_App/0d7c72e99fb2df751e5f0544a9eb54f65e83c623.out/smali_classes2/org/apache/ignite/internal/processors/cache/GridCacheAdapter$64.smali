.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3921
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.64;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3923
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.64;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$64;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V

    .line 3925
    const/4 v0, 0x0

    return-object v0
.end method
