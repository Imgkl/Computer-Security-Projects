.class Lorg/apache/ignite/internal/util/GridListSet$1;
.super Lorg/apache/ignite/internal/util/GridListSet;
.source "GridListSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridListSet;->toSynchronized()Lorg/apache/ignite/internal/util/GridListSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridListSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridListSet;

.field final synthetic val$set:Lorg/apache/ignite/internal/util/GridListSet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridListSet;Lorg/apache/ignite/internal/util/GridListSet;)V
    .locals 0

    .prologue
    .line 413
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->this$0:Lorg/apache/ignite/internal/util/GridListSet;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridListSet;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->addx(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 484
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 428
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copy()Lorg/apache/ignite/internal/util/GridListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridListSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->copy()Lorg/apache/ignite/internal/util/GridListSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 468
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->first()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 492
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 448
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removex(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->removex(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 456
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 500
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toSynchronized()Lorg/apache/ignite/internal/util/GridListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridListSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->toSynchronized()Lorg/apache/ignite/internal/util/GridListSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lorg/apache/ignite/internal/util/GridListSet$1;, "Lorg/apache/ignite/internal/util/GridListSet.1;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridListSet$1;->val$set:Lorg/apache/ignite/internal/util/GridListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridListSet;->values()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
