.class Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field final synthetic this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)V
    .locals 1

    .prologue
    .line 336
    iput-object p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I
    invoke-static {v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 340
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z
    invoke-static {v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$100(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->isFirst:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->isFirst:Z

    .line 354
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 355
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    # invokes: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->increment(I)I
    invoke-static {v0, v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$300(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    .line 356
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 361
    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    if-ne v1, v5, :cond_0

    .line 362
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 366
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I
    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 367
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    invoke-virtual {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 368
    iput v5, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 395
    :goto_0
    return-void

    .line 372
    :cond_1
    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 373
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    iget v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 375
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I
    invoke-static {v4}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    :cond_2
    iput v5, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 391
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I
    invoke-static {v3}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v3

    # invokes: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->decrement(I)I
    invoke-static {v2, v3}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v2

    # setter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I
    invoke-static {v1, v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$202(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    .line 392
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I
    invoke-static {v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 393
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # setter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z
    invoke-static {v1, v6}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$102(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;Z)Z

    .line 394
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    iget v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    # invokes: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->decrement(I)I
    invoke-static {v1, v2}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->index:I

    goto :goto_0

    .line 379
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 380
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$500(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 381
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v6

    aput-object v3, v1, v2

    .line 382
    const/4 v0, 0x0

    goto :goto_1

    .line 384
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # invokes: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->decrement(I)I
    invoke-static {v2, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # getter for: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 385
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;

    # invokes: Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->increment(I)I
    invoke-static {v1, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->access$300(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I

    move-result v0

    goto :goto_1
.end method
