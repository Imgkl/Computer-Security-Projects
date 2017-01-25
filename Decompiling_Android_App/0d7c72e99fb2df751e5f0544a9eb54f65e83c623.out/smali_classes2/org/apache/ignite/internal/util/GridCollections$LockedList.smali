.class final Lorg/apache/ignite/internal/util/GridCollections$LockedList;
.super Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;
.source "GridCollections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridCollections$LockedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;-><init>(Ljava/util/Collection;Lorg/apache/ignite/internal/util/GridCollections$1;)V

    .line 314
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    .line 315
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 322
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 334
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 337
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 379
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 382
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 385
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 391
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 394
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 397
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 370
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 358
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "fromIdx"    # I
    .param p2, "toIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedList;, "Lorg/apache/ignite/internal/util/GridCollections$LockedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->lock()V

    .line 416
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->l:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedList;->unlock()V

    throw v0
.end method
