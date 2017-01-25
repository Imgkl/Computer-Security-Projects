.class public Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;
.super Lorg/jsr166/ConcurrentLinkedHashMap;
.source "GridBoundedConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jsr166/ConcurrentLinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap<TK;TV;>;"
    const/16 v1, 0x10

    .line 41
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFI)V

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "max"    # I
    .param p2, "initCap"    # I

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFI)V

    .line 56
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "max"    # I
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFI)V

    .line 73
    return-void
.end method

.method public constructor <init>(IIFI)V
    .locals 6
    .param p1, "max"    # I
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F
    .param p4, "concurLvl"    # I

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap<TK;TV;>;"
    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    .line 94
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
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap<TK;TV;>;"
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFIILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    .line 115
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->policy()Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v0

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-eq v0, v1, :cond_0

    const-class v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    const-string v1, "entrySet"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
