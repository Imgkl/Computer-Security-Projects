.class public Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridOffHeapProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private final offheap:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 40
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap:Lorg/jsr166/ConcurrentHashMap8;

    .line 52
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 53
    return-void
.end method

.method private keyBytes(Ljava/lang/Object;[B)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "keyBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 105
    sget-boolean v0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    .end local p2    # "keyBytes":[B
    :goto_0
    return-object p2

    .restart local p2    # "keyBytes":[B
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v0, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object p2

    goto :goto_0
.end method

.method private maskNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-string p1, "gg-dflt-offheap-swap"

    .line 120
    .end local p1    # "spaceName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    return-object v0
.end method


# virtual methods
.method public allocatedSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 329
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->allocatedSize()J

    move-result-wide v2

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;ILjava/lang/Object;[B)Z
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 137
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-eqz v0, :cond_0

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->keyBytes(Ljava/lang/Object;[B)[B

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->contains(II[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public create(Ljava/lang/String;IJJLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V
    .locals 11
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "parts"    # I
    .param p3, "init"    # J
    .param p5, "max"    # J
    .param p7, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    const/16 v2, 0x400

    const/high16 v3, 0x3f400000    # 0.75f

    const/16 v8, 0x200

    move v1, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMapFactory;->unsafePartitionedMap(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 71
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v1, p1, v0}, Lorg/jsr166/ConcurrentHashMap8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    .line 73
    .local v10, "old":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-eqz v10, :cond_0

    .line 74
    invoke-interface {v10}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->destruct()V

    .line 75
    :cond_0
    return-void
.end method

.method public enableEviction(Ljava/lang/String;ILjava/lang/Object;[B)V
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 189
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-eqz v0, :cond_0

    .line 190
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->keyBytes(Ljava/lang/Object;[B)[B

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->enableEviction(II[B)V

    .line 191
    :cond_0
    return-void
.end method

.method public entriesCount(Ljava/lang/String;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 304
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->size()J

    move-result-wide v2

    goto :goto_0
.end method

.method public entriesCount(Ljava/lang/String;Ljava/util/Set;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 317
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {v0, p2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->size(Ljava/util/Set;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;ILjava/lang/Object;[B)[B
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 154
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->keyBytes(Ljava/lang/Object;[B)[B

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->get(II[B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;ILjava/lang/Object;[BLjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .param p5, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->get(Ljava/lang/String;ILjava/lang/Object;[B)[B

    move-result-object v0

    .line 208
    .local v0, "valBytes":[B
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
    .end local p5    # "ldr":Ljava/lang/ClassLoader;
    :goto_0
    return-object v1

    .restart local p5    # "ldr":Ljava/lang/ClassLoader;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    if-nez p5, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object p5

    .end local p5    # "ldr":Ljava/lang/ClassLoader;
    :cond_1
    invoke-interface {v1, v0, p5}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public iterator(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 276
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    new-instance v1, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v1

    goto :goto_0
.end method

.method public iterator(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 342
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    new-instance v1, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v1

    goto :goto_0
.end method

.method public iterator(Ljava/lang/String;Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/util/typedef/CX2",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "c":Lorg/apache/ignite/internal/util/typedef/CX2;, "Lorg/apache/ignite/internal/util/typedef/CX2<Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;TT;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 292
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_1

    new-instance v1, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;ILjava/lang/Object;[B[B)V
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .param p5, "valBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 244
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    .line 245
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write data to off-heap space, no space registered for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->keyBytes(Ljava/lang/Object;[B)[B

    move-result-object v2

    invoke-interface {v0, p2, v1, v2, p5}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->put(II[B[B)Z

    .line 249
    return-void
.end method

.method public remove(Ljava/lang/String;ILjava/lang/Object;[B)[B
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 227
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->keyBytes(Ljava/lang/Object;[B)[B

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->remove(II[B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public removex(Ljava/lang/String;ILjava/lang/Object;[B)Z
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 264
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-eqz v0, :cond_0

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->keyBytes(Ljava/lang/Object;[B)[B

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->removex(II[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 3
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->stop(Z)V

    .line 81
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentHashMap8;->values()Lorg/jsr166/ConcurrentHashMap8$ValuesView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentHashMap8$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    .line 82
    .local v1, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    invoke-interface {v1}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->destruct()V

    goto :goto_0

    .line 83
    .end local v1    # "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    :cond_0
    return-void
.end method

.method public valuePointer(Ljava/lang/String;ILjava/lang/Object;[B)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "[B)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->offheap(Ljava/lang/String;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;

    move-result-object v0

    .line 173
    .local v0, "m":Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->keyBytes(Ljava/lang/Object;[B)[B

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;->valuePointer(II[B)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    goto :goto_0
.end method
