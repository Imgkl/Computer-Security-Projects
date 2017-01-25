.class public Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FutureHolder"
.end annotation


# instance fields
.field private fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 5814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5816
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public future()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1

    .prologue
    .line 5858
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v0
.end method

.method public future(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 0
    .param p1, "fut"    # Lorg/apache/ignite/internal/IgniteInternalFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 5867
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 5868
    return-void
.end method

.method public holdsLock()Z
    .locals 1

    .prologue
    .line 5849
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 5835
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5836
    return-void
.end method

.method public tryLock()Z
    .locals 1

    .prologue
    .line 5827
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 5842
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5843
    return-void
.end method
