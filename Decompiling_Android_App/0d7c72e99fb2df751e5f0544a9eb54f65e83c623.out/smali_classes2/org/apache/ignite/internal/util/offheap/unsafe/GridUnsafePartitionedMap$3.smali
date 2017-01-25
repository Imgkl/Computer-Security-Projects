.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridUnsafePartitionedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private p:I

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

.field final synthetic val$c:Lorg/apache/ignite/internal/util/typedef/CX2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;Lorg/apache/ignite/internal/util/typedef/CX2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 343
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->val$c:Lorg/apache/ignite/internal/util/typedef/CX2;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 350
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->advance()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->printStackTrace()V

    goto :goto_0
.end method

.method private advance()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 358
    iput-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 360
    :goto_0
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->p:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->parts:I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->p:I

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->val$c:Lorg/apache/ignite/internal/util/typedef/CX2;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 363
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_1
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    goto :goto_0

    .line 369
    :cond_1
    iput-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    goto :goto_1
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
    .line 396
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 398
    :cond_0
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNext()Ljava/lang/Object;
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
    .line 373
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 376
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 381
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;->advance()V

    .line 384
    :cond_1
    return-object v0
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
