.class public Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;
.super Ljava/lang/Object;
.source "GridClientConsistentHash.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PRIME:I = 0xec4ba1

.field private static final RAND:Ljava/util/Random;


# instance fields
.field private final affSeed:Ljava/lang/Object;

.field private final circle:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/SortedSet",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private nodes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TN;>;"
        }
    .end annotation
.end field

.field private nodesComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TN;>;"
        }
    .end annotation
.end field

.field private final rw:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;-><init>(Ljava/util/Comparator;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "affSeed"    # Ljava/lang/Object;

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;-><init>(Ljava/util/Comparator;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/lang/Object;)V
    .locals 1
    .param p2, "affSeed"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TN;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p1, "nodesComp":Ljava/util/Comparator;, "Ljava/util/Comparator<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodes:Ljava/util/Collection;

    .line 81
    iput-object p1, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodesComp:Ljava/util/Comparator;

    .line 82
    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/Integer;

    .end local p2    # "affSeed":Ljava/lang/Object;
    const v0, 0xec4ba1

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->affSeed:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method private apply([Lorg/apache/ignite/internal/client/GridClientPredicate;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<TN;>;TN;)Z"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p1, "p":[Lorg/apache/ignite/internal/client/GridClientPredicate;, "[Lorg/apache/ignite/internal/client/GridClientPredicate<TN;>;"
    .local p2, "n":Ljava/lang/Object;, "TN;"
    if-eqz p1, :cond_1

    .line 401
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/internal/client/GridClientPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 402
    .local v3, "r":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TN;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, p2}, Lorg/apache/ignite/internal/client/GridClientPredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 403
    const/4 v4, 0x0

    .line 407
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/client/GridClientPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TN;>;"
    :goto_1
    return v4

    .line 401
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/client/GridClientPredicate;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "r":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TN;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/client/GridClientPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TN;>;"
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static hash(Ljava/lang/Object;)I
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 417
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 420
    .local v0, "h":I
    :goto_0
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    .line 421
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 422
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 423
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 424
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 426
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    .end local p0    # "o":Ljava/lang/Object;
    return v1

    .line 417
    .end local v0    # "h":I
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;I)Z
    .locals 10
    .param p2, "replicas"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const/4 v5, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return v5

    .line 118
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->affSeed:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1f

    invoke-static {p1}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v2, v6

    .line 120
    .local v2, "seed":J
    iget-object v6, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 123
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v6, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 151
    iget-object v6, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 126
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 128
    .local v0, "hash":I
    iget-object v5, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/SortedSet;

    .line 130
    .local v4, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    if-nez v4, :cond_2

    .line 131
    iget-object v5, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v4, Ljava/util/TreeSet;

    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodesComp:Ljava/util/Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .restart local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v5, v6, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-gt v1, p2, :cond_4

    .line 136
    iget-object v5, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->affSeed:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    int-to-long v6, v5

    mul-long/2addr v6, v2

    int-to-long v8, v1

    add-long v2, v6, v8

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 140
    iget-object v5, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    check-cast v4, Ljava/util/SortedSet;

    .line 142
    .restart local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    if-nez v4, :cond_3

    .line 143
    iget-object v5, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v4, Ljava/util/TreeSet;

    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodesComp:Ljava/util/Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .restart local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v5, v6, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_4
    const/4 v5, 0x1

    .line 151
    iget-object v6, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "hash":I
    .end local v1    # "i":I
    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public addNodes(Ljava/util/Collection;I)V
    .locals 4
    .param p2, "replicas"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TN;>;I)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->addNode(Ljava/lang/Object;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 102
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Ljava/lang/Object;, "TN;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public count()I
    .locals 2

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 201
    iget-object v1, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->count()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public node(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TN;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 269
    .local v1, "hash":I
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 272
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 274
    .local v0, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    if-nez v0, :cond_0

    .line 275
    const/4 v3, 0x0

    .line 283
    iget-object v4, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v3

    .line 277
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 280
    .local v2, "tailEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_1
    invoke-interface {v4, v3}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 283
    iget-object v4, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 280
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 283
    .end local v0    # "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    .end local v2    # "tailEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public node(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p2, "inc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public node(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<TN;>;",
            "Ljava/util/Collection",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p2, "inc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    .local p3, "exc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 311
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;

    invoke-direct {v2, p0, p2, p3}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash$1;-><init>(Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs node(Ljava/lang/Object;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/lang/Object;
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p2, "p":[Lorg/apache/ignite/internal/client/GridClientPredicate;, "[Lorg/apache/ignite/internal/client/GridClientPredicate<TN;>;"
    const/4 v7, 0x0

    .line 328
    if-eqz p2, :cond_0

    array-length v8, p2

    if-nez v8, :cond_1

    .line 329
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 388
    :goto_0
    return-object v4

    .line 331
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 333
    .local v1, "hash":I
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 336
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 338
    .local v6, "size":I
    if-nez v6, :cond_2

    .line 388
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    .line 344
    .local v0, "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/SortedSet;

    .line 345
    .local v5, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 346
    .local v4, "n":Ljava/lang/Object;, "TN;"
    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 349
    :cond_5
    invoke-direct {p0, p2, v4}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->apply([Lorg/apache/ignite/internal/client/GridClientPredicate;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_6

    .line 388
    iget-object v7, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 352
    :cond_6
    if-nez v0, :cond_7

    .line 353
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 355
    .restart local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :cond_7
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-ne v8, v6, :cond_4

    .line 388
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto/16 :goto_0

    .line 367
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Ljava/lang/Object;, "TN;"
    .end local v5    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :cond_8
    :try_start_3
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/SortedSet;

    .line 368
    .restart local v5    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 369
    .restart local v4    # "n":Ljava/lang/Object;, "TN;"
    if-eqz v0, :cond_b

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 372
    :cond_b
    invoke-direct {p0, p2, v4}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->apply([Lorg/apache/ignite/internal/client/GridClientPredicate;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    if-eqz v8, :cond_c

    .line 388
    iget-object v7, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 375
    :cond_c
    if-nez v0, :cond_d

    .line 376
    :try_start_4
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v0

    .line 378
    :cond_d
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-ne v8, v6, :cond_a

    .line 388
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto/16 :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Ljava/lang/Object;, "TN;"
    .end local v5    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :cond_e
    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto/16 :goto_0

    .end local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
.end method

.method public nodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 244
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodes:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v1, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public random()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    sget-object v0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->RAND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return v2

    .line 166
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 169
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 185
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 172
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/SortedSet<TN;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    .line 175
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 185
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/SortedSet<TN;>;>;"
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 182
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/SortedSet<TN;>;>;"
    :cond_3
    const/4 v2, 0x1

    .line 185
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public size()I
    .locals 5

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "size":I
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    .line 217
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 222
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    .local p0, "this":Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;, "Lorg/apache/ignite/internal/client/util/GridClientConsistentHash<TN;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " [affSeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->affSeed:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", circle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodesComp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodesComp:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/util/GridClientConsistentHash;->nodes:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
