.class Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "GridCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 438
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    .line 439
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/ignite/internal/util/GridCollections$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/GridCollections$1;

    .prologue
    .line 427
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 637
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    .line 642
    return-void

    .line 640
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 446
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 449
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 548
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 551
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 581
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 584
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    .line 589
    return-void

    .line 587
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 479
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 482
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 485
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 536
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 539
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 605
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 608
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 611
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 593
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 596
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 599
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 467
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 470
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 473
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 521
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 527
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 560
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 563
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 572
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 575
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 455
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 461
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 499
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 502
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 512
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;, "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->lock()V

    .line 620
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;->unlock()V

    throw v0
.end method
