.class public Lorg/apache/ignite/internal/util/GridConsistentHash;
.super Ljava/lang/Object;
.source "GridConsistentHash.java"


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
.field static final synthetic $assertionsDisabled:Z

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

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final nodes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TN;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final nodesComp:Ljava/util/Comparator;
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
    .line 36
    const-class v0, Lorg/apache/ignite/internal/util/GridConsistentHash;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridConsistentHash;->$assertionsDisabled:Z

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridConsistentHash;->RAND:Ljava/util/Random;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0, v0}, Lorg/apache/ignite/internal/util/GridConsistentHash;-><init>(Ljava/util/Comparator;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "affSeed"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;-><init>(Ljava/util/Comparator;Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "affSeed"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p1, "nodesComp":Ljava/util/Comparator;, "Ljava/util/Comparator<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    .line 83
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodesComp:Ljava/util/Comparator;

    .line 84
    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/Integer;

    .end local p2    # "affSeed":Ljava/lang/Object;
    const v0, 0xec4ba1

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->affSeed:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private apply([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TN;>;TN;)Z"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<TN;>;"
    .local p2, "n":Ljava/lang/Object;, "TN;"
    invoke-static {p2, p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;I)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "replicas"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const/4 v5, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return v5

    .line 122
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->affSeed:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1f

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v2, v6

    .line 124
    .local v2, "seed":J
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v6, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 155
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 130
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/util/GridConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 132
    .local v0, "hash":I
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/SortedSet;

    .line 134
    .local v4, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    if-nez v4, :cond_2

    .line 135
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v4, Ljava/util/TreeSet;

    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodesComp:Ljava/util/Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .restart local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v5, v6, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-gt v1, p2, :cond_4

    .line 140
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->affSeed:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    int-to-long v6, v5

    mul-long/2addr v6, v2

    int-to-long v8, v1

    add-long v2, v6, v8

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/util/GridConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 144
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    check-cast v4, Ljava/util/SortedSet;

    .line 146
    .restart local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    if-nez v4, :cond_3

    .line 147
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v4, Ljava/util/TreeSet;

    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodesComp:Ljava/util/Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .restart local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v5, v6, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_4
    const/4 v5, 0x1

    .line 155
    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "hash":I
    .end local v1    # "i":I
    .end local v4    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public addNodes(Ljava/util/Collection;I)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "replicas"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TN;>;I)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridConsistentHash;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 99
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
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

    .line 103
    .local v1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/ignite/internal/util/GridConsistentHash;->addNode(Ljava/lang/Object;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 106
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Ljava/lang/Object;, "TN;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public belongs(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "ITN;)Z"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p3, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public belongs(Ljava/lang/Object;ILjava/util/Collection;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cnt"    # I
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Collection",
            "<TN;>;)Z"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    .line 644
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridConsistentHash;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 646
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public belongs(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TN;)Z"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    const-string v1, "node"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    .local v0, "n":Ljava/lang/Object;, "TN;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public belongs(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<TN;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    const/4 v1, 0x0

    .line 606
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v1

    .line 609
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridConsistentHash;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 611
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    .local v0, "n":Ljava/lang/Object;, "TN;"
    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 228
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public count()I
    .locals 2

    .prologue
    .line 245
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 248
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 251
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 656
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 659
    .local v0, "h":I
    :goto_0
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    .line 660
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 661
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 662
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 663
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 665
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    return v1

    .line 656
    .end local v0    # "h":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridConsistentHash;->count()I

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
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 319
    .local v1, "hash":I
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 322
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 324
    .local v0, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    if-nez v0, :cond_0

    .line 325
    const/4 v3, 0x0

    .line 333
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v3

    .line 327
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 330
    .local v2, "tailEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

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

    .line 333
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 330
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 333
    .end local v0    # "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    .end local v2    # "tailEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/SortedSet<TN;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public node(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<TN;>;)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p2, "inc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public node(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p2, "inc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    .local p3, "exc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/util/GridConsistentHash$1;

    invoke-direct {v2, p0, p2, p3}, Lorg/apache/ignite/internal/util/GridConsistentHash$1;-><init>(Lorg/apache/ignite/internal/util/GridConsistentHash;Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs node(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TN;>;)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<TN;>;"
    const/4 v7, 0x0

    .line 379
    if-eqz p2, :cond_0

    array-length v8, p2

    if-nez v8, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 439
    :goto_0
    return-object v4

    .line 382
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 384
    .local v1, "hash":I
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 387
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 389
    .local v6, "size":I
    if-nez v6, :cond_2

    .line 439
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto :goto_0

    .line 392
    :cond_2
    const/4 v0, 0x0

    .line 395
    .local v0, "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

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

    .line 396
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

    .line 397
    .local v4, "n":Ljava/lang/Object;, "TN;"
    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 400
    :cond_5
    invoke-direct {p0, p2, v4}, Lorg/apache/ignite/internal/util/GridConsistentHash;->apply([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_6

    .line 439
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 403
    :cond_6
    if-nez v0, :cond_7

    .line 404
    :try_start_2
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    .end local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>(I)V

    .line 406
    .restart local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :cond_7
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-ne v8, v6, :cond_4

    .line 439
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto/16 :goto_0

    .line 418
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Ljava/lang/Object;, "TN;"
    .end local v5    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :cond_8
    :try_start_3
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

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

    .line 419
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

    .line 420
    .restart local v4    # "n":Ljava/lang/Object;, "TN;"
    if-eqz v0, :cond_b

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 423
    :cond_b
    invoke-direct {p0, p2, v4}, Lorg/apache/ignite/internal/util/GridConsistentHash;->apply([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    if-eqz v8, :cond_c

    .line 439
    iget-object v7, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 426
    :cond_c
    if-nez v0, :cond_d

    .line 427
    :try_start_4
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    .end local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>(I)V

    .line 429
    .restart local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :cond_d
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-ne v8, v6, :cond_a

    .line 439
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto/16 :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Ljava/lang/Object;, "TN;"
    .end local v5    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :cond_e
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v7

    goto/16 :goto_0

    .end local v0    # "failed":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
.end method

.method public nodes(Ljava/lang/Object;I)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/List",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes(Ljava/lang/Object;ILjava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public nodes(Ljava/lang/Object;ILjava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cnt"    # I
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Collection",
            "<TN;>;)",
            "Ljava/util/List",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p3, "inc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes(Ljava/lang/Object;ILjava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public nodes(Ljava/lang/Object;ILjava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cnt"    # I
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Collection",
            "<TN;>;",
            "Ljava/util/Collection",
            "<TN;>;)",
            "Ljava/util/List",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p3, "inc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    .local p4, "exc":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 483
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "cnt >= 0"

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 485
    if-nez p2, :cond_1

    .line 486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 491
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 483
    goto :goto_0

    .line 488
    :cond_1
    if-ne p2, v1, :cond_2

    .line 489
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 491
    :cond_2
    new-array v0, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v1, Lorg/apache/ignite/internal/util/GridConsistentHash$2;

    invoke-direct {v1, p0, p3, p4}, Lorg/apache/ignite/internal/util/GridConsistentHash$2;-><init>(Lorg/apache/ignite/internal/util/GridConsistentHash;Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes(Ljava/lang/Object;I[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public varargs nodes(Ljava/lang/Object;I[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cnt"    # I
    .param p3    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TN;>;)",
            "Ljava/util/List",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p3, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<TN;>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 509
    if-ltz p2, :cond_0

    move v8, v9

    :cond_0
    const-string v10, "cnt >= 0"

    invoke-static {v8, v10}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 511
    if-nez p2, :cond_1

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 570
    :goto_0
    return-object v5

    .line 514
    :cond_1
    if-ne p2, v9, :cond_2

    .line 515
    invoke-virtual {p0, p1, p3}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConsistentHash;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 519
    .local v1, "hash":I
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 521
    .local v0, "failed":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 524
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-interface {v8}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 570
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 527
    :cond_3
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v7

    .line 529
    .local v7, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<TN;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/SortedSet;

    .line 533
    .local v6, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 534
    .local v4, "n":Ljava/lang/Object;, "TN;"
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 537
    invoke-direct {p0, p3, v4}, Lorg/apache/ignite/internal/util/GridConsistentHash;->apply([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 538
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eq p2, v8, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_5

    .line 570
    :cond_6
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 540
    :cond_7
    :try_start_2
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 570
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Ljava/lang/Object;, "TN;"
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<TN;>;"
    .end local v6    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    .end local v7    # "size":I
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 552
    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<TN;>;"
    .restart local v7    # "size":I
    :cond_8
    :try_start_3
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

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

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/SortedSet;

    .line 553
    .restart local v6    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 554
    .restart local v4    # "n":Ljava/lang/Object;, "TN;"
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 557
    invoke-direct {p0, p3, v4}, Lorg/apache/ignite/internal/util/GridConsistentHash;->apply([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 558
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eq p2, v8, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_a

    .line 570
    :cond_b
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 560
    :cond_c
    :try_start_4
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 570
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Ljava/lang/Object;, "TN;"
    .end local v6    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :cond_d
    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
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
    .line 291
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/GridConsistentHash;->RAND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridConsistentHash;->node(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const/4 v2, 0x0

    .line 198
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return v2

    .line 201
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 204
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 220
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 207
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

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

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    .line 210
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 220
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/SortedSet<TN;>;>;"
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 217
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/SortedSet<TN;>;>;"
    :cond_3
    const/4 v2, 0x1

    .line 220
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public removeNodes(Ljava/util/Collection;)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 172
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->nodes:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 186
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 175
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

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

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    .line 178
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/SortedSet<TN;>;>;"
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/SortedSet<TN;>;>;"
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public size()I
    .locals 5

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 264
    const/4 v2, 0x0

    .line 266
    .local v2, "size":I
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->circle:Ljava/util/NavigableMap;

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

    .line 267
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 272
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TN;>;"
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridConsistentHash;->rw:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConsistentHash;, "Lorg/apache/ignite/internal/util/GridConsistentHash<TN;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridConsistentHash;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
