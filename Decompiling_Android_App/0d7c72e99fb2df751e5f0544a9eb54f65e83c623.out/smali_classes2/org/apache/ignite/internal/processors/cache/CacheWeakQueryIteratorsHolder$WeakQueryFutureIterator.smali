.class public Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "CacheWeakQueryIteratorsHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeakQueryFutureIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final convert:Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter",
            "<TT;TV;>;"
        }
    .end annotation
.end field

.field private cur:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field private init:Z

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

.field private final weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder",
            "<TV;>.WeakQueryFutureIterator<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter",
            "<TT;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    .local p2, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<TV;>;"
    .local p3, "convert":Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;, "Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter<TT;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 146
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    # getter for: Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->refQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->access$100(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->weakRef:Ljava/lang/ref/WeakReference;

    .line 150
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->convert:Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->weakReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method private clearWeakReference()V
    .locals 2

    .prologue
    .line 215
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    # getter for: Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->access$200(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->init:Z

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "futNext":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->convert:Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->next:Ljava/lang/Object;

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->init:Z

    .line 231
    .end local v0    # "futNext":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void

    .line 227
    .restart local v0    # "futNext":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private weakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder",
            "<TV;>.WeakQueryFutureIterator<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->weakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->cancel()Z

    .line 191
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->clearWeakReference()V

    .line 192
    return-void
.end method

.method public onHasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->init()V

    .line 179
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->next:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 181
    .local v0, "hasNext":Z
    :goto_0
    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->clearWeakReference()V

    .line 184
    :cond_0
    return v0

    .line 179
    .end local v0    # "hasNext":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->init()V

    .line 157
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->next:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->clearWeakReference()V

    .line 160
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->next:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->cur:Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "futNext":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 168
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->clearWeakReference()V

    .line 170
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->convert:Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->next:Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->cur:Ljava/lang/Object;

    return-object v1

    .line 170
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRemove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>.WeakQueryFutureIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->cur:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->convert:Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->cur:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;->remove(Ljava/lang/Object;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->cur:Ljava/lang/Object;

    .line 202
    return-void
.end method
