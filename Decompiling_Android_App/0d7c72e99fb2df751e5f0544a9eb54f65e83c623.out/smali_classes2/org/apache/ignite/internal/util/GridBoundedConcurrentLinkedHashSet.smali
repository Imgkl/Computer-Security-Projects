.class public Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;
.super Lorg/apache/ignite/internal/util/GridSetWrapper;
.source "GridBoundedConcurrentLinkedHashSet.java"


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
.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    const/16 v1, 0x10

    .line 44
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFI)V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "max"    # I
    .param p2, "initCap"    # I

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFI)V

    .line 59
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "max"    # I
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFI)V

    .line 76
    return-void
.end method

.method public constructor <init>(IIFI)V
    .locals 6
    .param p1, "max"    # I
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F
    .param p4, "concurLvl"    # I

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    .line 97
    return-void
.end method

.method public constructor <init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V
    .locals 6
    .param p1, "max"    # I
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F
    .param p4, "concurLvl"    # I
    .param p5, "qPlc"    # Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    .line 120
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
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 132
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
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 145
    .local v0, "map0":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public sizex()I
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->policy()Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v0

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-eq v0, v1, :cond_0

    const-class v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    const-string v1, "elements"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
