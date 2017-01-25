.class Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;
.super Ljava/lang/Object;
.source "GridQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expModCnt:I

.field private next:Lorg/apache/ignite/internal/util/GridQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridQueue;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridQueue;)V
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>.QueueIterator;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->this$0:Lorg/apache/ignite/internal/util/GridQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->this$0:Lorg/apache/ignite/internal/util/GridQueue;

    # getter for: Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue;->access$400(Lorg/apache/ignite/internal/util/GridQueue;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->expModCnt:I

    .line 312
    # getter for: Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridQueue;->access$500(Lorg/apache/ignite/internal/util/GridQueue;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 313
    return-void
.end method

.method private checkModCount()V
    .locals 3

    .prologue
    .line 343
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>.QueueIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->this$0:Lorg/apache/ignite/internal/util/GridQueue;

    # getter for: Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridQueue;->access$400(Lorg/apache/ignite/internal/util/GridQueue;)I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->expModCnt:I

    if-eq v0, v1, :cond_0

    .line 344
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mod count mismatch [expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->expModCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->this$0:Lorg/apache/ignite/internal/util/GridQueue;

    # getter for: Lorg/apache/ignite/internal/util/GridQueue;->modCnt:I
    invoke-static {v2}, Lorg/apache/ignite/internal/util/GridQueue;->access$400(Lorg/apache/ignite/internal/util/GridQueue;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>.QueueIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->this$0:Lorg/apache/ignite/internal/util/GridQueue;

    # getter for: Lorg/apache/ignite/internal/util/GridQueue;->hdr:Lorg/apache/ignite/internal/util/GridQueue$Node;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridQueue;->access$500(Lorg/apache/ignite/internal/util/GridQueue;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>.QueueIterator;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->checkModCount()V

    .line 324
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 327
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$300(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "ret":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridQueue$Node;->access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 331
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$QueueIterator;, "Lorg/apache/ignite/internal/util/GridQueue<TE;>.QueueIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
