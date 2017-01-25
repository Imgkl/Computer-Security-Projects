.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalClearAllCallable"
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5615
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;-><init>()V

    .line 5617
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 5623
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;-><init>(Ljava/lang/String;)V

    .line 5624
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    .prologue
    .line 5608
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5628
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v0, Lorg/apache/ignite/internal/IgniteEx;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearAllCallable;->cacheName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->clearLocally()V

    .line 5630
    const/4 v0, 0x0

    return-object v0
.end method
