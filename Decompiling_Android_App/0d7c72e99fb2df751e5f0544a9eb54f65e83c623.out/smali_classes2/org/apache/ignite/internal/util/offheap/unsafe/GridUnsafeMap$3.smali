.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridUnsafeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
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

.field private idx:I

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

.field final synthetic val$c:Lorg/apache/ignite/internal/util/typedef/CX2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;Lorg/apache/ignite/internal/util/typedef/CX2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->val$c:Lorg/apache/ignite/internal/util/typedef/CX2;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 447
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->advance()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
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
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.3;"
    const/4 v3, 0x0

    .line 455
    iput-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 457
    :goto_0
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->idx:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 458
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->idx:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->val$c:Lorg/apache/ignite/internal/util/typedef/CX2;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 460
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    :goto_1
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    goto :goto_0

    .line 466
    :cond_1
    iput-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

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
    .line 493
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 495
    :cond_0
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 485
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

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
    .line 470
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.3;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-nez v1, :cond_0

    .line 471
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 473
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 475
    .local v0, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->curIt:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 478
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;->advance()V

    .line 481
    :cond_1
    return-object v0
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 489
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap.3;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
