.class public Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
.super Ljava/util/AbstractMap;
.source "SnapTreeMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeySet;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntryIter;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;,
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final AllowNullValues:Z = false

.field static final Left:C = 'L'

.field private static final NothingRequired:I = -0x3

.field private static final RebalanceRequired:I = -0x2

.field static final Right:C = 'R'

.field static final SpecialNull:Ljava/lang/Object;

.field static final SpecialRetry:Ljava/lang/Object;

.field static final SpinCount:I

.field private static final UnlinkRequired:I = -0x1

.field static final UnlinkedOVL:J = 0x2L

.field private static final UpdateAlways:I = 0x0

.field private static final UpdateIfAbsent:I = 0x1

.field private static final UpdateIfEq:I = 0x3

.field private static final UpdateIfPresent:I = 0x2

.field static final YieldCount:I

.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private volatile transient holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-class v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialNull:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    .line 116
    const-string v0, "snaptree.spin"

    const-string v1, "100"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpinCount:I

    .line 119
    const-string v0, "snaptree.yield"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->YieldCount:I

    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 427
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    .line 429
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 430
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 433
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    .line 434
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 435
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    .line 439
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 440
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->putAll(Ljava/util/Map;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "source":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 444
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    .line 445
    instance-of v0, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    if-eqz v0, :cond_0

    move-object v9, p1

    .line 446
    check-cast v9, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    .line 447
    .local v9, "s":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    iget-object v0, v9, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->clone()Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 469
    .end local v9    # "s":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    :goto_0
    return-void

    .line 452
    :cond_0
    const/4 v10, 0x0

    .line 453
    .local v10, "size":I
    new-instance v6, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;-><init>()V

    .line 454
    .local v6, "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 455
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 457
    .local v11, "v":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "source map contained a null key"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    if-nez v11, :cond_2

    .line 461
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "source map contained a null value"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateUnderRoot(Ljava/lang/Object;Ljava/lang/Comparable;ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v10, v10, 0x1

    .line 465
    goto :goto_1

    .line 467
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    .end local v11    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-direct {v0, v6, v10}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Comparable;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # C

    .prologue
    .line 91
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Comparable;
    .param p4, "x4"    # Z
    .param p5, "x5"    # C

    .prologue
    .line 91
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->getImpl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-static {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .prologue
    .line 91
    invoke-static {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v0

    return v0
.end method

.method private attemptExtreme(ZCLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/lang/Object;
    .locals 8
    .param p1, "returnKey"    # Z
    .param p2, "dir"    # C
    .param p4, "nodeOVL"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZC",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p3, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_0
    invoke-virtual {p3, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v3

    .line 695
    .local v3, "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-nez v3, :cond_4

    .line 699
    iget-object v6, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 701
    .local v6, "vo":Ljava/lang/Object;
    iget-wide v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_1

    .line 702
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    .line 731
    .end local v6    # "vo":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 705
    .restart local v6    # "vo":Ljava/lang/Object;
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 707
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 710
    .end local v6    # "vo":Ljava/lang/Object;
    :cond_4
    iget-wide v4, v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 711
    .local v4, "childOVL":J
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 712
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    .line 714
    iget-wide v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    .line 715
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto :goto_0

    .line 718
    :cond_5
    invoke-virtual {p3, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    if-eq v3, v0, :cond_6

    .line 720
    iget-wide v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    .line 721
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto :goto_0

    .line 725
    :cond_6
    iget-wide v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_7

    .line 726
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 729
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptExtreme(ZCLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/lang/Object;

    move-result-object v6

    .line 730
    .restart local v6    # "vo":Ljava/lang/Object;
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    if-eq v6, v0, :cond_0

    move-object v0, v6

    .line 731
    goto :goto_0
.end method

.method private attemptGet(Ljava/lang/Comparable;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;CJ)Ljava/lang/Object;
    .locals 8
    .param p3, "dirToC"    # C
    .param p4, "nodeOVL"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;CJ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p2, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_0
    invoke-virtual {p2, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v2

    .line 581
    .local v2, "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-nez v2, :cond_2

    .line 582
    iget-wide v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_1

    .line 583
    sget-object v7, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    .line 626
    :goto_0
    return-object v7

    .line 589
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 592
    .local v6, "childCmp":I
    if-nez v6, :cond_3

    .line 594
    iget-object v7, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    goto :goto_0

    .line 598
    :cond_3
    iget-wide v4, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 599
    .local v4, "childOVL":J
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 600
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v2, v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    .line 602
    iget-wide v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    .line 603
    sget-object v7, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto :goto_0

    .line 606
    :cond_4
    invoke-virtual {p2, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    if-eq v2, v0, :cond_5

    .line 608
    iget-wide v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    .line 609
    sget-object v7, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto :goto_0

    .line 613
    :cond_5
    iget-wide v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_6

    .line 614
    sget-object v7, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto :goto_0

    .line 624
    :cond_6
    if-gez v6, :cond_7

    const/16 v3, 0x4c

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptGet(Ljava/lang/Comparable;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;CJ)Ljava/lang/Object;

    move-result-object v7

    .line 625
    .local v7, "vo":Ljava/lang/Object;
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    if-eq v7, v0, :cond_0

    goto :goto_0

    .line 624
    .end local v7    # "vo":Ljava/lang/Object;
    :cond_7
    const/16 v3, 0x52

    goto :goto_1
.end method

.method private attemptInsertIntoEmpty(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Z
    .locals 10
    .param p2, "vOpt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    const/4 v0, 0x1

    .line 1073
    monitor-enter p3

    .line 1074
    :try_start_0
    iget-object v1, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v1, :cond_0

    .line 1075
    new-instance v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;JLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    iput-object v1, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1076
    const/4 v1, 0x2

    iput v1, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->height:I

    .line 1077
    monitor-exit p3

    .line 1079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p3

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private attemptNodeUpdate(ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Ljava/lang/Object;
    .locals 4
    .param p1, "func"    # I
    .param p2, "expected"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1211
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p4, "parent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p5, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-nez p3, :cond_0

    .line 1213
    iget-object v2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1215
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1268
    :goto_0
    return-object v2

    .line 1219
    :cond_0
    if-nez p3, :cond_7

    iget-object v2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-eqz v2, :cond_1

    iget-object v2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v2, :cond_7

    .line 1223
    :cond_1
    monitor-enter p4

    .line 1224
    :try_start_0
    iget-wide v2, p4, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isUnlinked(J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-eq v2, p4, :cond_3

    .line 1225
    :cond_2
    sget-object v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    monitor-exit p4

    goto :goto_0

    .line 1242
    :catchall_0
    move-exception v2

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1228
    :cond_3
    :try_start_1
    monitor-enter p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    :try_start_2
    iget-object v1, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 1230
    .local v1, "prev":Ljava/lang/Object;
    invoke-static {p1, v1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1231
    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1233
    :cond_4
    if-nez v1, :cond_5

    .line 1234
    :try_start_4
    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1236
    :cond_5
    :try_start_6
    invoke-direct {p0, p4, p5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptUnlink_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1237
    sget-object v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    monitor-exit p5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1239
    :cond_6
    :try_start_8
    monitor-exit p5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1241
    :try_start_9
    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    .line 1242
    .local v0, "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit p4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1243
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeightAndRebalance(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 1244
    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1239
    .end local v0    # "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v1    # "prev":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit p5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1247
    :cond_7
    monitor-enter p5

    .line 1249
    :try_start_c
    iget-wide v2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isUnlinked(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1250
    sget-object v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    monitor-exit p5

    goto :goto_0

    .line 1269
    :catchall_2
    move-exception v2

    monitor-exit p5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2

    .line 1253
    :cond_8
    :try_start_d
    iget-object v1, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 1254
    .restart local v1    # "prev":Ljava/lang/Object;
    invoke-static {p1, v1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1255
    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit p5

    goto :goto_0

    .line 1259
    :cond_9
    if-nez p3, :cond_b

    iget-object v2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-eqz v2, :cond_a

    iget-object v2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v2, :cond_b

    .line 1260
    :cond_a
    sget-object v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    monitor-exit p5

    goto :goto_0

    .line 1264
    :cond_b
    iput-object p3, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 1266
    invoke-virtual {p0, p5, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->afterNodeUpdate_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Object;)V

    .line 1268
    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit p5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_0
.end method

.method private attemptRemoveExtreme(CLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/util/Map$Entry;
    .locals 10
    .param p1, "dir"    # C
    .param p4, "nodeOVL"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;J)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "parent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p3, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    .line 1368
    sget-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1400
    .local v3, "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_0
    iget-wide v4, v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1401
    .local v4, "childOVL":J
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1402
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    .line 1371
    .end local v3    # "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v4    # "childOVL":J
    :cond_1
    invoke-virtual {p3, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedChild(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v3

    .line 1373
    .restart local v3    # "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-wide v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    move-object v7, v9

    .line 1416
    :goto_0
    return-object v7

    .line 1377
    :cond_2
    if-nez v3, :cond_0

    .line 1381
    monitor-enter p2

    .line 1382
    :try_start_0
    iget-wide v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isUnlinked(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-eq v0, p2, :cond_4

    .line 1383
    :cond_3
    monitor-exit p2

    move-object v7, v9

    goto :goto_0

    .line 1386
    :cond_4
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1387
    :try_start_1
    iget-object v8, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 1388
    .local v8, "vo":Ljava/lang/Object;
    invoke-virtual {p3, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptUnlink_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1389
    :cond_5
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v9

    goto :goto_0

    .line 1392
    :cond_6
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1394
    :try_start_4
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v6

    .line 1395
    .local v6, "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1396
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeightAndRebalance(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 1397
    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1392
    .end local v6    # "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v8    # "vo":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 1395
    :catchall_1
    move-exception v0

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 1404
    .restart local v4    # "childOVL":J
    :cond_7
    invoke-virtual {p3, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    if-ne v3, v0, :cond_1

    .line 1410
    iget-wide v0, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_8

    move-object v7, v9

    .line 1411
    goto :goto_0

    :cond_8
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    .line 1414
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptRemoveExtreme(CLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/util/Map$Entry;

    move-result-object v7

    .line 1415
    .local v7, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v7, :cond_1

    goto :goto_0
.end method

.method private attemptUnlink_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "parent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 1280
    sget-boolean v6, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-wide v6, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isUnlinked(J)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1282
    :cond_0
    iget-object v1, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1283
    .local v1, "parentL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1284
    .local v2, "parentR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eq v1, p2, :cond_2

    if-eq v2, p2, :cond_2

    .line 1312
    :cond_1
    :goto_0
    return v5

    .line 1289
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    iget-wide v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isUnlinked(J)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1290
    :cond_3
    sget-boolean v6, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    iget-object v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-eq p1, v6, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1292
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedLeft()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    .line 1293
    .local v0, "left":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v3

    .line 1294
    .local v3, "right":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5

    if-nez v3, :cond_1

    .line 1298
    :cond_5
    if-eqz v0, :cond_7

    move-object v4, v0

    .line 1300
    .local v4, "splice":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_1
    if-ne v1, p2, :cond_8

    .line 1301
    iput-object v4, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1305
    :goto_2
    if-eqz v4, :cond_6

    .line 1306
    iput-object p1, v4, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1309
    :cond_6
    const-wide/16 v6, 0x2

    iput-wide v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1310
    const/4 v5, 0x0

    iput-object v5, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    .line 1312
    const/4 v5, 0x1

    goto :goto_0

    .end local v4    # "splice":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_7
    move-object v4, v3

    .line 1298
    goto :goto_1

    .line 1303
    .restart local v4    # "splice":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_8
    iput-object v4, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_2
.end method

.method private attemptUpdate(Ljava/lang/Object;Ljava/lang/Comparable;ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/lang/Object;
    .locals 18
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "func"    # I
    .param p4, "expected"    # Ljava/lang/Object;
    .param p5, "newValue"    # Ljava/lang/Object;
    .param p8, "nodeOVL"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Comparable",
            "<-TK;>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p6, "parent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p7, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x2

    cmp-long v2, p8, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1109
    :cond_0
    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    .line 1110
    .local v12, "cmp":I
    if-nez v12, :cond_1

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 1111
    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptNodeUpdate(ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Ljava/lang/Object;

    move-result-object v16

    .line 1195
    :goto_0
    return-object v16

    .line 1114
    :cond_1
    if-gez v12, :cond_3

    const/16 v14, 0x4c

    .line 1117
    .local v14, "dirToC":C
    :cond_2
    :goto_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedChild(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v9

    .line 1119
    .local v9, "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    move-object/from16 v0, p7

    iget-wide v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v2, v2, p8

    if-eqz v2, :cond_4

    .line 1120
    sget-object v16, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto :goto_0

    .line 1114
    .end local v9    # "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v14    # "dirToC":C
    :cond_3
    const/16 v14, 0x52

    goto :goto_1

    .line 1123
    .restart local v9    # "child":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v14    # "dirToC":C
    :cond_4
    if-nez v9, :cond_9

    .line 1125
    if-nez p5, :cond_5

    .line 1129
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    goto :goto_0

    .line 1134
    :cond_5
    monitor-enter p7

    .line 1138
    :try_start_0
    move-object/from16 v0, p7

    iget-wide v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v2, v2, p8

    if-eqz v2, :cond_6

    .line 1139
    sget-object v16, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    monitor-exit p7

    goto :goto_0

    .line 1163
    :catchall_0
    move-exception v2

    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1142
    :cond_6
    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1146
    const/4 v15, 0x0

    .line 1147
    .local v15, "success":Z
    const/4 v13, 0x0

    .line 1163
    .local v13, "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_2
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    if-eqz v15, :cond_2

    .line 1165
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeightAndRebalance(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 1166
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    goto :goto_0

    .line 1151
    .end local v13    # "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v15    # "success":Z
    :cond_7
    const/4 v2, 0x0

    :try_start_2
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1152
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    monitor-exit p7

    goto :goto_0

    .line 1156
    :cond_8
    new-instance v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;JLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v14, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->setChild(CLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 1157
    const/4 v15, 0x1

    .line 1161
    .restart local v15    # "success":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .restart local v13    # "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    goto :goto_2

    .line 1172
    .end local v13    # "damaged":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v15    # "success":Z
    :cond_9
    iget-wide v10, v9, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1173
    .local v10, "childOVL":J
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1174
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v9, v10, v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    goto/16 :goto_1

    .line 1176
    :cond_a
    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v2

    if-ne v9, v2, :cond_2

    .line 1182
    move-object/from16 v0, p7

    iget-wide v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    cmp-long v2, v2, p8

    if-eqz v2, :cond_b

    .line 1183
    sget-object v16, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    .line 1193
    invoke-direct/range {v2 .. v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptUpdate(Ljava/lang/Object;Ljava/lang/Comparable;ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/lang/Object;

    move-result-object v16

    .line 1194
    .local v16, "vo":Ljava/lang/Object;
    sget-object v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_2

    goto/16 :goto_0
.end method

.method static beginChange(J)J
    .locals 2
    .param p0, "ovl"    # J

    .prologue
    .line 138
    const-wide/16 v0, 0x1

    or-long/2addr v0, p0

    return-wide v0
.end method

.method private boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    .locals 8
    .param p2, "minIncl"    # Z
    .param p4, "maxIncl"    # Z
    .param p5, "returnKey"    # Z
    .param p6, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;ZZC)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p3, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/16 v6, 0x4c

    if-ne p6, v6, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/16 v6, 0x52

    if-ne p6, v6, :cond_6

    if-nez p3, :cond_6

    .line 817
    :cond_1
    invoke-direct {p0, p5, p6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v3

    .line 818
    .local v3, "result":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 819
    const/4 v6, 0x0

    .line 873
    .end local v3    # "result":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v6

    .line 821
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_3
    if-eqz p5, :cond_5

    move-object v4, v3

    .local v4, "resultKey":Ljava/lang/Object;, "TK;"
    :goto_1
    move-object v6, v3

    .line 860
    .end local v3    # "result":Ljava/lang/Object;
    :goto_2
    const/16 v7, 0x4c

    if-ne p6, v7, :cond_d

    if-eqz p3, :cond_d

    .line 861
    invoke-interface {p3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 862
    .local v0, "c":I
    if-ltz v0, :cond_4

    if-nez v0, :cond_d

    if-nez p4, :cond_d

    .line 863
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .end local v0    # "c":I
    .end local v4    # "resultKey":Ljava/lang/Object;, "TK;"
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_5
    move-object v6, v3

    .line 821
    check-cast v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-virtual {v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 824
    .end local v3    # "result":Ljava/lang/Object;
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->availableFrozen()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    .line 826
    .local v1, "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
    if-nez v1, :cond_7

    .line 827
    iget-object v6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->beginQuiescent()Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    move-result-object v5

    .line 828
    .local v5, "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    iget-object v6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->read()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
    check-cast v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    .line 834
    .restart local v1    # "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
    :goto_3
    const/16 v6, 0x4c

    if-ne p6, v6, :cond_8

    :try_start_0
    iget-object v6, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-direct {p0, v6, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedMin(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 837
    .local v2, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_4
    if-nez v2, :cond_9

    .line 838
    const/4 v6, 0x0

    .line 854
    if-eqz v5, :cond_2

    .line 855
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    goto :goto_0

    .line 831
    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v5    # "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    goto :goto_3

    .line 834
    :cond_8
    :try_start_1
    iget-object v6, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-direct {p0, v6, p3, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedMax(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v2

    goto :goto_4

    .line 840
    .restart local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_9
    iget-object v4, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    .line 841
    .restart local v4    # "resultKey":Ljava/lang/Object;, "TK;"
    if-eqz p5, :cond_a

    .line 842
    iget-object v3, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    :goto_5
    if-eqz v5, :cond_f

    .line 855
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    move-object v6, v3

    goto :goto_2

    .line 844
    :cond_a
    if-nez v5, :cond_b

    .line 846
    move-object v3, v2

    .local v3, "result":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    goto :goto_5

    .line 850
    .end local v3    # "result":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    :cond_b
    :try_start_2
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v6, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v3, "result":Ljava/util/AbstractMap$SimpleImmutableEntry;
    goto :goto_5

    .line 854
    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v3    # "result":Ljava/util/AbstractMap$SimpleImmutableEntry;
    .end local v4    # "resultKey":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_c

    .line 855
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    :cond_c
    throw v6

    .line 866
    .end local v1    # "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
    .end local v5    # "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    .restart local v4    # "resultKey":Ljava/lang/Object;, "TK;"
    :cond_d
    const/16 v7, 0x52

    if-ne p6, v7, :cond_2

    if-eqz p1, :cond_2

    .line 867
    invoke-interface {p1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 868
    .restart local v0    # "c":I
    if-gtz v0, :cond_e

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 869
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v0    # "c":I
    .restart local v1    # "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
    .restart local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v5    # "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    :cond_f
    move-object v6, v3

    goto/16 :goto_2
.end method

.method private boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Ljava/lang/Object;
    .locals 8
    .param p2, "minIncl"    # Z
    .param p4, "maxIncl"    # Z
    .param p5, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;ZC)TK;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p3, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v7

    .line 798
    .local v7, "k":Ljava/lang/Object;, "TK;"
    if-nez v7, :cond_0

    .line 799
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 801
    :cond_0
    return-object v7
.end method

.method private boundedMax(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 3
    .param p3, "maxIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_0
    if-eqz p1, :cond_3

    .line 906
    iget-object v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 907
    .local v0, "c":I
    if-lez v0, :cond_0

    .line 909
    iget-object v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedMax(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v1

    .line 910
    .local v1, "z":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 925
    .end local v0    # "c":I
    .end local v1    # "z":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_1
    return-object v1

    .line 915
    .restart local v0    # "c":I
    :cond_0
    if-gtz v0, :cond_1

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 917
    :cond_1
    iget-object v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 918
    goto :goto_1

    .line 923
    :cond_2
    iget-object p1, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 924
    goto :goto_0

    .line 925
    .end local v0    # "c":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private boundedMin(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 3
    .param p3, "minIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 879
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_0
    if-eqz p1, :cond_3

    .line 880
    iget-object v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 881
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 883
    iget-object v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedMin(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v1

    .line 884
    .local v1, "z":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 899
    .end local v0    # "c":I
    .end local v1    # "z":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_1
    return-object v1

    .line 889
    .restart local v0    # "c":I
    :cond_0
    if-ltz v0, :cond_1

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 891
    :cond_1
    iget-object v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 892
    goto :goto_1

    .line 897
    :cond_2
    iget-object p1, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 898
    goto :goto_0

    .line 899
    .end local v0    # "c":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private decodeNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "vOpt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 405
    :cond_0
    return-object p1
.end method

.method private static encodeNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "v"    # Ljava/lang/Object;

    .prologue
    .line 413
    if-nez p0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 416
    :cond_0
    return-object p0
.end method

.method static endChange(J)J
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 139
    const-wide/16 v0, 0x3

    or-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private extreme(ZC)Ljava/lang/Object;
    .locals 7
    .param p1, "returnKey"    # Z
    .param p2, "dir"    # C

    .prologue
    .line 668
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->read()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v3, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 669
    .local v3, "right":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-nez v3, :cond_1

    .line 670
    const/4 v6, 0x0

    .line 680
    :goto_1
    return-object v6

    .line 672
    :cond_1
    iget-wide v4, v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 673
    .local v4, "ovl":J
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->read()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-ne v3, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 678
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptExtreme(ZCLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/lang/Object;

    move-result-object v6

    .line 679
    .local v6, "vo":Ljava/lang/Object;
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    if-eq v6, v0, :cond_0

    goto :goto_1
.end method

.method private extremeKeyOrThrow(C)Ljava/lang/Object;
    .locals 2
    .param p1, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TK;"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v0

    .line 657
    .local v0, "k":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_0

    .line 658
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 660
    :cond_0
    return-object v0
.end method

.method private fixHeightAndRebalance(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1462
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    move-object v2, p1

    .end local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local v2, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-eqz v3, :cond_0

    .line 1463
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->nodeCondition(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v0

    .line 1464
    .local v0, "condition":I
    const/4 v3, -0x3

    if-eq v0, v3, :cond_0

    iget-wide v4, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isUnlinked(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1485
    .end local v0    # "condition":I
    :cond_0
    return-void

    .line 1469
    .restart local v0    # "condition":I
    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v3, -0x2

    if-eq v0, v3, :cond_2

    .line 1470
    monitor-enter v2

    .line 1471
    :try_start_0
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 1472
    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :try_start_1
    monitor-exit v2

    :goto_1
    move-object v2, p1

    .line 1484
    .end local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    goto :goto_0

    .line 1472
    :catchall_0
    move-exception v3

    move-object p1, v2

    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    throw v3

    .line 1474
    .end local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_2
    iget-object v1, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1475
    .local v1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-enter v1

    .line 1476
    :try_start_2
    iget-wide v4, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isUnlinked(J)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-ne v3, v1, :cond_3

    .line 1477
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1478
    :try_start_3
    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rebalance_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object p1

    .line 1479
    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1482
    :goto_3
    :try_start_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v3

    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 1479
    .end local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :catchall_2
    move-exception v3

    move-object p1, v2

    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_5
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1482
    .end local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :catchall_3
    move-exception v3

    move-object p1, v2

    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    goto :goto_4

    .line 1479
    :catchall_4
    move-exception v3

    goto :goto_5

    .line 1472
    .end local v1    # "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :catchall_5
    move-exception v3

    goto :goto_2

    .end local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v1    # "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_3
    move-object p1, v2

    .end local v2    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    goto :goto_3
.end method

.method private fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1492
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->nodeCondition(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v0

    .line 1493
    .local v0, "c":I
    packed-switch v0, :pswitch_data_0

    .line 1502
    iput v0, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1504
    iget-object p1, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .end local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_0
    :pswitch_0
    return-object p1

    .line 1500
    .restart local p1    # "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    .line 1493
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getImpl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 545
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 548
    .local v1, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->read()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 549
    .local v2, "right":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    .line 550
    const/4 v7, 0x0

    .line 566
    :goto_1
    return-object v7

    .line 552
    :cond_1
    iget-object v0, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 553
    .local v6, "rightCmp":I
    if-nez v6, :cond_2

    .line 555
    iget-object v7, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    goto :goto_1

    .line 558
    :cond_2
    iget-wide v4, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 559
    .local v4, "ovl":J
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v2, v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    goto :goto_0

    .line 562
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->read()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-ne v2, v0, :cond_0

    .line 564
    if-gez v6, :cond_4

    const/16 v3, 0x4c

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptGet(Ljava/lang/Comparable;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;CJ)Ljava/lang/Object;

    move-result-object v7

    .line 565
    .local v7, "vo":Ljava/lang/Object;
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    if-eq v7, v0, :cond_0

    goto :goto_1

    .line 564
    .end local v7    # "vo":Ljava/lang/Object;
    :cond_4
    const/16 v3, 0x52

    goto :goto_2
.end method

.method private static height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<**>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    goto :goto_0
.end method

.method static isShrinking(J)Z
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 142
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isShrinkingOrUnlinked(J)Z
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 144
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isUnlinked(J)Z
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 143
    const-wide/16 v0, 0x2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "func"    # I
    .param p1, "prev"    # Ljava/lang/Object;

    .prologue
    .line 954
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local p1    # "prev":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private nodeCondition(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    const/4 v7, -0x1

    .line 1435
    iget-object v5, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1436
    .local v5, "nL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v6, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1438
    .local v6, "nR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz v5, :cond_0

    if-nez v6, :cond_2

    :cond_0
    iget-object v8, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-nez v8, :cond_2

    move v3, v7

    .line 1458
    :cond_1
    :goto_0
    return v3

    .line 1442
    :cond_2
    iget v2, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1443
    .local v2, "hN":I
    invoke-static {v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v1

    .line 1444
    .local v1, "hL0":I
    invoke-static {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v4

    .line 1451
    .local v4, "hR0":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .line 1452
    .local v3, "hNRepl":I
    sub-int v0, v1, v4

    .line 1454
    .local v0, "bal":I
    if-lt v0, v7, :cond_3

    const/4 v7, 0x1

    if-le v0, v7, :cond_4

    .line 1455
    :cond_3
    const/4 v3, -0x2

    goto :goto_0

    .line 1458
    :cond_4
    if-ne v2, v3, :cond_1

    const/4 v3, -0x3

    goto :goto_0
.end method

.method private pollExtremeEntry(C)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1328
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->beginMutation()Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    move-result-object v2

    .line 1329
    .local v2, "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    const/4 v1, 0x0

    .line 1331
    .local v1, "sizeDelta":I
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->mutable()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->pollExtremeEntryUnderRoot(CLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1332
    .local v0, "prev":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1333
    const/4 v1, -0x1

    .line 1337
    :cond_0
    invoke-interface {v2, v1}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    return-object v0

    .end local v0    # "prev":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :catchall_0
    move-exception v3

    invoke-interface {v2, v1}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    throw v3
.end method

.method private pollExtremeEntryUnderRoot(CLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Ljava/util/Map$Entry;
    .locals 7
    .param p1, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v3

    .line 1344
    .local v3, "right":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-nez v3, :cond_1

    .line 1346
    const/4 v6, 0x0

    .line 1356
    :goto_1
    return-object v6

    .line 1348
    :cond_1
    iget-wide v4, v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1349
    .local v4, "ovl":J
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1350
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    goto :goto_0

    .line 1352
    :cond_2
    iget-object v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-ne v3, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1354
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptRemoveExtreme(CLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/util/Map$Entry;

    move-result-object v6

    .line 1355
    .local v6, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    if-eq v6, v0, :cond_0

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "xi"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2882
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2884
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    .line 2888
    .local v8, "size":I
    new-instance v6, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;-><init>()V

    .line 2889
    .local v6, "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 2890
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 2891
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    .line 2892
    .local v9, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateUnderRoot(Ljava/lang/Object;Ljava/lang/Comparable;ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Ljava/lang/Object;

    .line 2889
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2895
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-direct {v0, v6, v8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 2896
    return-void
.end method

.method private rebalanceToLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 28
    .param p4, "hL0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;I)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1607
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p3, "nR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-enter p3

    .line 1608
    :try_start_0
    move-object/from16 v0, p3

    iget v0, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    move/from16 v27, v0

    .line 1609
    .local v27, "hR":I
    sub-int v3, p4, v27

    const/4 v4, -0x1

    if-lt v3, v4, :cond_0

    .line 1610
    monitor-exit p3

    .line 1630
    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_0
    return-object p2

    .line 1612
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedLeft()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v8

    .line 1613
    .local v8, "nRL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v9

    .line 1614
    .local v9, "hRL0":I
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v10

    .line 1615
    .local v10, "hRR0":I
    if-lt v10, v9, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v7, p3

    .line 1616
    invoke-direct/range {v3 .. v10}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rotateLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;ILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;II)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit p3

    goto :goto_0

    .line 1633
    .end local v8    # "nRL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v9    # "hRL0":I
    .end local v10    # "hRR0":I
    .end local v27    # "hR":I
    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1618
    .restart local v8    # "nRL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v9    # "hRL0":I
    .restart local v10    # "hRR0":I
    .restart local v27    # "hR":I
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_1
    :try_start_1
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    :try_start_2
    iget v0, v8, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    move/from16 v17, v0

    .line 1620
    .local v17, "hRL":I
    move/from16 v0, v17

    if-lt v10, v0, :cond_2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move-object/from16 v15, p3

    move-object/from16 v16, v8

    move/from16 v18, v10

    .line 1621
    invoke-direct/range {v11 .. v18}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rotateLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;ILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;II)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1623
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_2
    :try_start_4
    iget-object v3, v8, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v25

    .line 1624
    .local v25, "hRLR":I
    sub-int v26, v10, v25

    .line 1625
    .local v26, "b":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-lt v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v26

    if-gt v0, v3, :cond_5

    if-eqz v10, :cond_3

    if-nez v25, :cond_4

    :cond_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v3, :cond_5

    :cond_4
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, p4

    move-object/from16 v22, p3

    move-object/from16 v23, v8

    move/from16 v24, v10

    .line 1626
    invoke-direct/range {v18 .. v25}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rotateLeftOverRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;ILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;II)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1629
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_5
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1630
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v8, v10}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rebalanceToRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1629
    .end local v17    # "hRL":I
    .end local v25    # "hRLR":I
    .end local v26    # "b":I
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private rebalanceToRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 29
    .param p4, "hR0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;I)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1555
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p3, "nL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-enter p3

    .line 1556
    :try_start_0
    move-object/from16 v0, p3

    iget v0, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    move/from16 v28, v0

    .line 1557
    .local v28, "hL":I
    sub-int v3, v28, p4

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 1558
    monitor-exit p3

    .line 1597
    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_0
    return-object p2

    .line 1560
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v9

    .line 1561
    .local v9, "nLR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v8

    .line 1562
    .local v8, "hLL0":I
    invoke-static {v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v10

    .line 1563
    .local v10, "hLR0":I
    if-lt v8, v10, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1565
    invoke-direct/range {v3 .. v10}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rotateRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;IILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit p3

    goto :goto_0

    .line 1600
    .end local v8    # "hLL0":I
    .end local v9    # "nLR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v10    # "hLR0":I
    .end local v28    # "hL":I
    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1567
    .restart local v8    # "hLL0":I
    .restart local v9    # "nLR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .restart local v10    # "hLR0":I
    .restart local v28    # "hL":I
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_1
    :try_start_1
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1570
    :try_start_2
    iget v0, v9, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    move/from16 v18, v0

    .line 1571
    .local v18, "hLR":I
    move/from16 v0, v18

    if-lt v8, v0, :cond_2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, v8

    move-object/from16 v17, v9

    .line 1572
    invoke-direct/range {v11 .. v18}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rotateRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;IILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1588
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_2
    :try_start_4
    iget-object v3, v9, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v26

    .line 1589
    .local v26, "hLRL":I
    sub-int v27, v8, v26

    .line 1590
    .local v27, "b":I
    const/4 v3, -0x1

    move/from16 v0, v27

    if-lt v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-gt v0, v3, :cond_5

    if-eqz v8, :cond_3

    if-nez v26, :cond_4

    :cond_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v3, :cond_5

    :cond_4
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move/from16 v23, p4

    move/from16 v24, v8

    move-object/from16 v25, v9

    .line 1592
    invoke-direct/range {v19 .. v26}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rotateRightOverLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;IILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1595
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_5
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1597
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v9, v8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rebalanceToLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1595
    .end local v18    # "hLR":I
    .end local v26    # "hLRL":I
    .end local v27    # "b":I
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private rebalance_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1513
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedLeft()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v5

    .line 1514
    .local v5, "nL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v6

    .line 1516
    .local v6, "nR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz v5, :cond_0

    if-nez v6, :cond_2

    :cond_0
    iget-object v7, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 1517
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptUnlink_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1519
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    .line 1545
    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_1
    :goto_0
    return-object p2

    .line 1526
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_2
    iget v2, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1527
    .local v2, "hN":I
    invoke-static {v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v1

    .line 1528
    .local v1, "hL0":I
    invoke-static {v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v4

    .line 1529
    .local v4, "hR0":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 1530
    .local v3, "hNRepl":I
    sub-int v0, v1, v4

    .line 1532
    .local v0, "bal":I
    const/4 v7, 0x1

    if-le v0, v7, :cond_3

    .line 1533
    invoke-direct {p0, p1, p2, v5, v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rebalanceToRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    goto :goto_0

    .line 1534
    :cond_3
    const/4 v7, -0x1

    if-ge v0, v7, :cond_4

    .line 1535
    invoke-direct {p0, p1, p2, v6, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->rebalanceToLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    goto :goto_0

    .line 1536
    :cond_4
    if-eq v3, v2, :cond_5

    .line 1539
    iput v3, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1542
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    goto :goto_0

    .line 1545
    :cond_5
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private rotateLeftOverRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;ILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;II)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 16
    .param p3, "hL"    # I
    .param p6, "hRR"    # I
    .param p7, "hRLR"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;I",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;II)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1855
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p4, "nR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p5, "nRL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1856
    .local v10, "nodeOVL":J
    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1858
    .local v12, "rightOVL":J
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1859
    .local v7, "nPL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-virtual/range {p5 .. p5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedLeft()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v8

    .line 1860
    .local v8, "nRLL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-virtual/range {p5 .. p5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v9

    .line 1861
    .local v9, "nRLR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v5

    .line 1863
    .local v5, "hRLL":I
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->beginChange(J)J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1864
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->beginChange(J)J

    move-result-wide v14

    move-object/from16 v0, p4

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1867
    move-object/from16 v0, p2

    iput-object v8, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1868
    if-eqz v8, :cond_0

    .line 1869
    move-object/from16 v0, p2

    iput-object v0, v8, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1872
    :cond_0
    move-object/from16 v0, p4

    iput-object v9, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1873
    if-eqz v9, :cond_1

    .line 1874
    move-object/from16 v0, p4

    iput-object v0, v9, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1877
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1878
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1879
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1880
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1882
    move-object/from16 v0, p2

    if-ne v7, v0, :cond_2

    .line 1883
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1887
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1890
    move/from16 v0, p3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v4, v14, 0x1

    .line 1891
    .local v4, "hNRepl":I
    move-object/from16 v0, p2

    iput v4, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1892
    move/from16 v0, p7

    move/from16 v1, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v6, v14, 0x1

    .line 1893
    .local v6, "hRRepl":I
    move-object/from16 v0, p4

    iput v6, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1894
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    iput v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1896
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->endChange(J)J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1897
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->endChange(J)J

    move-result-wide v14

    move-object/from16 v0, p4

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1899
    sget-boolean v14, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v14, :cond_3

    sub-int v14, p6, p7

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 1885
    .end local v4    # "hNRepl":I
    .end local v6    # "hRRepl":I
    :cond_2
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0

    .line 1901
    .restart local v4    # "hNRepl":I
    .restart local v6    # "hRRepl":I
    :cond_3
    sub-int v2, v5, p3

    .line 1902
    .local v2, "balN":I
    const/4 v14, -0x1

    if-lt v2, v14, :cond_4

    const/4 v14, 0x1

    if-le v2, v14, :cond_5

    .line 1912
    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_4
    :goto_1
    return-object p2

    .line 1905
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_5
    if-eqz v8, :cond_6

    if-nez p3, :cond_7

    :cond_6
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v14, :cond_4

    .line 1908
    :cond_7
    sub-int v3, v6, v4

    .line 1909
    .local v3, "balRL":I
    const/4 v14, -0x1

    if-lt v3, v14, :cond_8

    const/4 v14, 0x1

    if-le v3, v14, :cond_9

    :cond_8
    move-object/from16 p2, p5

    .line 1910
    goto :goto_1

    .line 1912
    :cond_9
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    goto :goto_1
.end method

.method private rotateLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;ILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;II)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 8
    .param p3, "hL"    # I
    .param p6, "hRL"    # I
    .param p7, "hRR"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;I",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;II)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1713
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p4, "nR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p5, "nRL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-wide v4, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1715
    .local v4, "nodeOVL":J
    iget-object v3, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1717
    .local v3, "nPL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->beginChange(J)J

    move-result-wide v6

    iput-wide v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1720
    iput-object p5, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1721
    if-eqz p5, :cond_0

    .line 1722
    iput-object p2, p5, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1725
    :cond_0
    iput-object p2, p4, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1726
    iput-object p4, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1728
    if-ne v3, p2, :cond_2

    .line 1729
    iput-object p4, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1733
    :goto_0
    iput-object p1, p4, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1736
    invoke-static {p3, p6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 1737
    .local v2, "hNRepl":I
    iput v2, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1738
    invoke-static {v2, p7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p4, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1740
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->endChange(J)J

    move-result-wide v6

    iput-wide v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1742
    sub-int v0, p6, p3

    .line 1743
    .local v0, "balN":I
    const/4 v6, -0x1

    if-lt v0, v6, :cond_1

    const/4 v6, 0x1

    if-le v0, v6, :cond_3

    .line 1760
    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_1
    :goto_1
    return-object p2

    .line 1731
    .end local v0    # "balN":I
    .end local v2    # "hNRepl":I
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_2
    iput-object p4, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0

    .line 1747
    .restart local v0    # "balN":I
    .restart local v2    # "hNRepl":I
    :cond_3
    if-eqz p5, :cond_4

    if-nez p3, :cond_5

    :cond_4
    iget-object v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1751
    :cond_5
    sub-int v1, p7, v2

    .line 1752
    .local v1, "balR":I
    const/4 v6, -0x1

    if-lt v1, v6, :cond_6

    const/4 v6, 0x1

    if-le v1, v6, :cond_7

    :cond_6
    move-object p2, p4

    .line 1753
    goto :goto_1

    .line 1756
    :cond_7
    if-nez p7, :cond_8

    iget-object v6, p4, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-nez v6, :cond_8

    move-object p2, p4

    .line 1757
    goto :goto_1

    .line 1760
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    goto :goto_1
.end method

.method private rotateRightOverLeft_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;IILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 16
    .param p4, "hR"    # I
    .param p5, "hLL"    # I
    .param p7, "hLRL"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;II",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;I)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1770
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p3, "nL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p6, "nLR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1771
    .local v12, "nodeOVL":J
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1773
    .local v8, "leftOVL":J
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1774
    .local v11, "nPL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-virtual/range {p6 .. p6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedLeft()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v7

    .line 1775
    .local v7, "nLRL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-virtual/range {p6 .. p6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v10

    .line 1776
    .local v10, "nLRR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v10}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v4

    .line 1778
    .local v4, "hLRR":I
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->beginChange(J)J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1779
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->beginChange(J)J

    move-result-wide v14

    move-object/from16 v0, p3

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1782
    move-object/from16 v0, p2

    iput-object v10, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1783
    if-eqz v10, :cond_0

    .line 1784
    move-object/from16 v0, p2

    iput-object v0, v10, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1787
    :cond_0
    move-object/from16 v0, p3

    iput-object v7, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1788
    if-eqz v7, :cond_1

    .line 1789
    move-object/from16 v0, p3

    iput-object v0, v7, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1792
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1793
    move-object/from16 v0, p6

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1794
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1795
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1797
    move-object/from16 v0, p2

    if-ne v11, v0, :cond_2

    .line 1798
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1802
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1805
    move/from16 v0, p4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v6, v14, 0x1

    .line 1806
    .local v6, "hNRepl":I
    move-object/from16 v0, p2

    iput v6, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1807
    move/from16 v0, p5

    move/from16 v1, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v5, v14, 0x1

    .line 1808
    .local v5, "hLRepl":I
    move-object/from16 v0, p3

    iput v5, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1809
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p6

    iput v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1811
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->endChange(J)J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1812
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->endChange(J)J

    move-result-wide v14

    move-object/from16 v0, p3

    iput-wide v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1816
    sget-boolean v14, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v14, :cond_3

    sub-int v14, p5, p7

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 1800
    .end local v5    # "hLRepl":I
    .end local v6    # "hNRepl":I
    :cond_2
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0

    .line 1817
    .restart local v5    # "hLRepl":I
    .restart local v6    # "hNRepl":I
    :cond_3
    sget-boolean v14, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v14, :cond_5

    if-eqz p5, :cond_4

    if-nez v7, :cond_5

    :cond_4
    move-object/from16 v0, p3

    iget-object v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-nez v14, :cond_5

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 1826
    :cond_5
    sub-int v3, v4, p4

    .line 1827
    .local v3, "balN":I
    const/4 v14, -0x1

    if-lt v3, v14, :cond_6

    const/4 v14, 0x1

    if-le v3, v14, :cond_7

    .line 1845
    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_6
    :goto_1
    return-object p2

    .line 1833
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_7
    if-eqz v10, :cond_8

    if-nez p4, :cond_9

    :cond_8
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v14, :cond_6

    .line 1839
    :cond_9
    sub-int v2, v5, v6

    .line 1840
    .local v2, "balLR":I
    const/4 v14, -0x1

    if-lt v2, v14, :cond_a

    const/4 v14, 0x1

    if-le v2, v14, :cond_b

    :cond_a
    move-object/from16 p2, p6

    .line 1841
    goto :goto_1

    .line 1845
    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    goto :goto_1
.end method

.method private rotateRight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;IILorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;I)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 8
    .param p4, "hR"    # I
    .param p5, "hLL"    # I
    .param p7, "hLR"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;II",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;I)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1643
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "nParent":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p3, "nL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p6, "nLR":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-wide v4, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1645
    .local v4, "nodeOVL":J
    iget-object v3, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1647
    .local v3, "nPL":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->beginChange(J)J

    move-result-wide v6

    iput-wide v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1649
    iput-object p6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1650
    if-eqz p6, :cond_0

    .line 1651
    iput-object p2, p6, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1654
    :cond_0
    iput-object p2, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1655
    iput-object p3, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1657
    if-ne v3, p2, :cond_2

    .line 1658
    iput-object p3, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1662
    :goto_0
    iput-object p1, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->parent:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 1665
    invoke-static {p7, p4}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 1666
    .local v2, "hNRepl":I
    iput v2, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1667
    invoke-static {p5, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->height:I

    .line 1669
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->endChange(J)J

    move-result-wide v6

    iput-wide v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1678
    sub-int v1, p7, p4

    .line 1679
    .local v1, "balN":I
    const/4 v6, -0x1

    if-lt v1, v6, :cond_1

    const/4 v6, 0x1

    if-le v1, v6, :cond_3

    .line 1703
    .end local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_1
    :goto_1
    return-object p2

    .line 1660
    .end local v1    # "balN":I
    .end local v2    # "hNRepl":I
    .restart local p2    # "n":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_2
    iput-object p3, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0

    .line 1686
    .restart local v1    # "balN":I
    .restart local v2    # "hNRepl":I
    :cond_3
    if-eqz p6, :cond_4

    if-nez p4, :cond_5

    :cond_4
    iget-object v6, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1692
    :cond_5
    sub-int v0, p5, v2

    .line 1693
    .local v0, "balL":I
    const/4 v6, -0x1

    if-lt v0, v6, :cond_6

    const/4 v6, 0x1

    if-le v0, v6, :cond_7

    :cond_6
    move-object p2, p3

    .line 1694
    goto :goto_1

    .line 1698
    :cond_7
    if-nez p5, :cond_8

    iget-object v6, p3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-nez v6, :cond_8

    move-object p2, p3

    .line 1699
    goto :goto_1

    .line 1703
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->fixHeight_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p2

    goto :goto_1
.end method

.method private static shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "func"    # I
    .param p1, "prev"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 936
    packed-switch p0, :pswitch_data_0

    .line 941
    sget-boolean v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 938
    :pswitch_0
    if-nez p1, :cond_1

    .line 948
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :cond_1
    move v0, v1

    .line 938
    goto :goto_0

    .line 939
    :pswitch_2
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 942
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 943
    goto :goto_0

    .line 948
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static sizeDelta(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "func"    # I
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 962
    packed-switch p0, :pswitch_data_0

    .line 974
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    return v1

    .line 964
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_0
    if-eqz p1, :cond_1

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    add-int v1, v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 967
    :pswitch_1
    sget-boolean v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 968
    :cond_3
    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 971
    :pswitch_2
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move v1, v2

    goto :goto_0

    .line 974
    .end local p1    # "result":Ljava/lang/Object;
    :cond_4
    if-nez p2, :cond_0

    move v1, v2

    goto :goto_0

    .line 962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "func"    # I
    .param p3, "expected"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1020
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v2

    .line 1021
    .local v2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/4 v8, 0x0

    .line 1022
    .local v8, "sd":I
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->beginMutation()Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    move-result-object v9

    .line 1024
    .local v9, "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->mutable()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateUnderRoot(Ljava/lang/Object;Ljava/lang/Comparable;ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Ljava/lang/Object;

    move-result-object v7

    .line 1025
    .local v7, "result":Ljava/lang/Object;
    invoke-static {p2, v7, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->sizeDelta(ILjava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1028
    invoke-interface {v9, v8}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    return-object v7

    .end local v7    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    invoke-interface {v9, v8}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    throw v0
.end method

.method private static updateResult(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "func"    # I
    .param p1, "prev"    # Ljava/lang/Object;

    .prologue
    .line 958
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local p1    # "prev":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private updateUnderRoot(Ljava/lang/Object;Ljava/lang/Comparable;ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Ljava/lang/Object;
    .locals 13
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "func"    # I
    .param p4, "expected"    # Ljava/lang/Object;
    .param p5, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Comparable",
            "<-TK;>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1042
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p6, "holder":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->unsharedRight()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v9

    .line 1043
    .local v9, "right":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-nez v9, :cond_3

    .line 1045
    const/4 v2, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1046
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1062
    :goto_1
    return-object v12

    .line 1048
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptInsertIntoEmpty(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    :cond_2
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    .line 1054
    :cond_3
    iget-wide v10, v9, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->shrinkOVL:J

    .line 1055
    .local v10, "ovl":J
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1056
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->waitUntilShrinkCompleted(J)V
    invoke-static {v9, v10, v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->access$100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)V

    goto :goto_0

    .line 1058
    :cond_4
    move-object/from16 v0, p6

    iget-object v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-ne v9, v2, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 1060
    invoke-direct/range {v2 .. v11}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->attemptUpdate(Ljava/lang/Object;Ljava/lang/Comparable;ILjava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;J)Ljava/lang/Object;

    move-result-object v12

    .line 1061
    .local v12, "vo":Ljava/lang/Object;
    sget-object v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->SpecialRetry:Ljava/lang/Object;

    if-eq v12, v2, :cond_0

    goto :goto_1
.end method

.method private writeEntry(Ljava/io/ObjectOutputStream;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V
    .locals 1
    .param p1, "xo"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutputStream;",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2870
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz p2, :cond_1

    .line 2871
    iget-object v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->left:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->writeEntry(Ljava/io/ObjectOutputStream;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 2872
    iget-object v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2874
    iget-object v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2876
    :cond_0
    iget-object v0, p2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->writeEntry(Ljava/io/ObjectOutputStream;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 2878
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "xo"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2860
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2863
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->clone()Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 2865
    .local v0, "h":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2866
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->frozen()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->writeEntry(Ljava/io/ObjectOutputStream;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 2867
    return-void
.end method


# virtual methods
.method protected afterNodeUpdate_nl(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Object;)V
    .locals 0
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    return-void
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 781
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x4c

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    .line 756
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x4c

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 499
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 500
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->clone()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .local v0, "copy":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 477
    .end local v0    # "copy":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    :catch_0
    move-exception v1

    .line 478
    .local v1, "xx":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 481
    .end local v1    # "xx":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "copy":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->clone()Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    iput-object v2, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    .line 482
    return-object v0
.end method

.method protected comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_1

    .line 533
    check-cast p1, Ljava/lang/Comparable;

    .line 535
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 519
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->getImpl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 511
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2205
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2327
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    const/4 v8, 0x1

    move-object v1, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move v7, v4

    move-object v9, v2

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1924
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$EntrySet;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->extremeKeyOrThrow(C)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 775
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v6, 0x52

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x1

    .line 750
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/16 v6, 0x52

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->getImpl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2317
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 10
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2302
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v6

    move-object v1, p0

    move-object v3, v2

    move-object v5, p1

    move v7, p2

    move v8, v4

    move-object v9, v2

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 787
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v6, 0x4c

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 762
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x4c

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->read()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1919
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x52

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->extremeKeyOrThrow(C)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 769
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/16 v6, 0x52

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 744
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/4 v5, 0x1

    const/16 v6, 0x52

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2196
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$2;

    invoke-direct {v0, p0, p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$2;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1319
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->pollExtremeEntry(C)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1324
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->pollExtremeEntry(C)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1001
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1006
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1009
    :cond_0
    if-nez p2, :cond_1

    .line 1010
    const/4 v0, 0x0

    .line 1012
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 991
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->decodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x3

    invoke-static {p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->update(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2312
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 10
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2293
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 2294
    .local v3, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-interface {v3, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2297
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-virtual {p0, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2322
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 10
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2307
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v6, v5

    move v8, v7

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method
