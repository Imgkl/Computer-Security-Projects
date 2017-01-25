.class public Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;
.super Lorg/apache/ignite/internal/util/GridSetWrapper;
.source "GridConcurrentLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSetWrapper",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initCap"    # I

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {v0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 55
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F
    .param p3, "conLevel"    # I

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {v0, p1, p2, p3}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 101
    .local v0, "m":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 114
    .local v0, "m":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;TE;>;"
    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;->map:Ljava/util/Map;

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->descendingKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->policy()Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v0

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-eq v0, v1, :cond_0

    const-class v0, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;

    const-string v1, "elements"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
