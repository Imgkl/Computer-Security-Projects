.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
.super Ljava/util/AbstractMap;
.source "SnapTreeMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;
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
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final descending:Z

.field private final m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient maxCmp:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private final maxIncl:Z

.field private final maxKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient minCmp:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private final minIncl:Z

.field private final minKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZ)V
    .locals 0
    .param p4, "minIncl"    # Z
    .param p7, "maxIncl"    # Z
    .param p8, "descending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap",
            "<TK;TV;>;TK;",
            "Ljava/lang/Comparable",
            "<-TK;>;ZTK;",
            "Ljava/lang/Comparable",
            "<-TK;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2350
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "m":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "minKey":Ljava/lang/Object;, "TK;"
    .local p3, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p5, "maxKey":Ljava/lang/Object;, "TK;"
    .local p6, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2351
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    .line 2352
    iput-object p2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minKey:Ljava/lang/Object;

    .line 2353
    iput-object p3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    .line 2354
    iput-boolean p4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    .line 2355
    iput-object p5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxKey:Ljava/lang/Object;

    .line 2356
    iput-object p6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    .line 2357
    iput-boolean p7, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    .line 2358
    iput-boolean p8, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    .line 2359
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Comparable;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Comparable;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2330
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    .prologue
    .line 2330
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2330
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    .prologue
    .line 2330
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    .prologue
    .line 2330
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    .prologue
    .line 2330
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    .prologue
    .line 2330
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    return v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    .prologue
    .line 2330
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    return v0
.end method

.method private firstEntryOrNull()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2552
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method private firstKeyOrNull()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2542
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private inRange(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2382
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lastEntryOrNull()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2557
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method private lastKeyOrNull()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2547
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private maxDir()C
    .locals 1

    .prologue
    .line 2399
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x52

    goto :goto_0
.end method

.method private minDir()C
    .locals 1

    .prologue
    .line 2395
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4c

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "xi"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 2847
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2849
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    .line 2850
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxKey:Ljava/lang/Object;

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    .line 2851
    return-void

    .line 2849
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_0

    .line 2850
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    goto :goto_1
.end method

.method private requireInRange(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 2386
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2389
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2392
    :cond_1
    return-void
.end method

.method private subMapImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 1
    .param p2, "fromIncl"    # Z
    .param p4, "toIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2764
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    .line 2765
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V

    .line 2767
    :cond_0
    if-eqz p3, :cond_1

    .line 2768
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V

    .line 2770
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method private subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 12
    .param p2, "fromIncl"    # Z
    .param p4, "toIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2777
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_1

    const/4 v10, 0x0

    .line 2778
    .local v10, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_0
    if-nez p3, :cond_2

    const/4 v11, 0x0

    .line 2780
    .local v11, "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_1
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 2781
    invoke-interface {v10, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    .line 2782
    .local v9, "c":I
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v0, :cond_3

    if-lez v9, :cond_4

    .line 2783
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2777
    .end local v9    # "c":I
    .end local v10    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v11    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v10

    goto :goto_0

    .line 2778
    .restart local v10    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v11

    goto :goto_1

    .line 2782
    .restart local v9    # "c":I
    .restart local v11    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_3
    if-ltz v9, :cond_0

    .line 2787
    .end local v9    # "c":I
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minKey:Ljava/lang/Object;

    .line 2788
    .local v2, "minK":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    .line 2789
    .local v3, "minC":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    .line 2790
    .local v4, "minI":Z
    iget-object v5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxKey:Ljava/lang/Object;

    .line 2791
    .local v5, "maxK":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    .line 2792
    .local v6, "maxC":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-boolean v7, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    .line 2794
    .local v7, "maxI":Z
    if-eqz p1, :cond_5

    .line 2795
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v0, :cond_7

    .line 2796
    move-object v2, p1

    .line 2797
    move-object v3, v10

    .line 2798
    move v4, p2

    .line 2805
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 2806
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v0, :cond_8

    .line 2807
    move-object v5, p3

    .line 2808
    move-object v6, v11

    .line 2809
    move/from16 v7, p4

    .line 2817
    :cond_6
    :goto_3
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-boolean v8, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZ)V

    return-object v0

    .line 2800
    :cond_7
    move-object v5, p1

    .line 2801
    move-object v6, v10

    .line 2802
    move v7, p2

    goto :goto_2

    .line 2811
    :cond_8
    move-object v2, p3

    .line 2812
    move-object v3, v11

    .line 2813
    move/from16 v4, p4

    goto :goto_3
.end method

.method private tooHigh(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2373
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    if-nez v2, :cond_1

    .line 2377
    :cond_0
    :goto_0
    return v1

    .line 2376
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 2377
    .local v0, "c":I
    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private tooLow(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2364
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    if-nez v2, :cond_1

    .line 2368
    :cond_0
    :goto_0
    return v1

    .line 2367
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 2368
    .local v0, "c":I
    if-gtz v0, :cond_2

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 2610
    if-nez p1, :cond_0

    .line 2611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2613
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2616
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2613
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2616
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->firstEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 2622
    if-nez p1, :cond_0

    .line 2623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2625
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2628
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2625
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2628
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->firstKeyOrNull()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2520
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 2521
    .local v0, "fromM":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-eqz v1, :cond_0

    .line 2522
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 2524
    .end local v0    # "fromM":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2418
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2419
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2421
    :cond_0
    move-object v0, p1

    .line 2422
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->inRange(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2429
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->encodeNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
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
    .line 2841
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descendingMap()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descendingMap()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descendingMap()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2822
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minKey:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxKey:Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    iget-boolean v8, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;Ljava/lang/Comparable;ZLjava/lang/Object;Ljava/lang/Comparable;ZZ)V

    return-object v0

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
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
    .line 2460
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$EntrySubSet;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2659
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2530
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minDir()C

    move-result v5

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$2300(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 2586
    if-nez p1, :cond_0

    .line 2587
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2589
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2592
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2589
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2592
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->lastEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 2598
    if-nez p1, :cond_0

    .line 2599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2601
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2604
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2601
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2604
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->lastKeyOrNull()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 2436
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2437
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2439
    :cond_0
    move-object v0, p1

    .line 2440
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->inRange(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->headMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->headMap(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->headMap(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->headMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2752
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->headMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2731
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2734
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2634
    if-nez p1, :cond_0

    .line 2635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2637
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2640
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2637
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2640
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->firstEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, p1, v2, v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2646
    if-nez p1, :cond_0

    .line 2647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2649
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2652
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2649
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2652
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->firstKeyOrNull()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, p1, v2, v0, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    const/4 v5, 0x1

    .line 2406
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/16 v6, 0x4c

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

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
    .line 2827
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2665
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2535
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxDir()C

    move-result v5

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$2300(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2562
    if-nez p1, :cond_0

    .line 2563
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2565
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2568
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2565
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2568
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->lastEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, v0, v2, p1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2574
    if-nez p1, :cond_0

    .line 2575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2577
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2580
    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_1
    :goto_0
    return-object v0

    .line 2577
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2580
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->lastKeyOrNull()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, v0, v2, p1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapInRange(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
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
    .line 2832
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;

    invoke-direct {v0, p0, p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap$1;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2672
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2673
    .local v7, "snapshot":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v7, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    :cond_1
    return-object v7
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2683
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2684
    .local v7, "snapshot":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v7, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2685
    :cond_1
    return-object v7
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2445
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V

    .line 2446
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2694
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V

    .line 2695
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 2452
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2455
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2701
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2712
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V

    .line 2713
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2706
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->requireInRange(Ljava/lang/Object;)V

    .line 2707
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 5

    .prologue
    .line 2411
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$800(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->frozen()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2412
    .local v0, "root":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->maxIncl:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->computeFrozenSize(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)I

    move-result v1

    return v1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2747
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2723
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2724
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2726
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tailMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tailMap(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tailMap(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2330
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tailMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2757
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->tailMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2739
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2742
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;->subMapImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method
