.class public Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;
.super Ljava/lang/Object;
.source "IgfsPerBlockLruEvictionPolicy.java"

# interfaces
.implements Lorg/apache/ignite/cache/eviction/EvictionPolicy;
.implements Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicyMXBean;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$1;,
        Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/eviction/EvictionPolicy",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
        "[B>;",
        "Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicyMXBean;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final curSize:Lorg/jsr166/LongAdder8;

.field private volatile excludePaths:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile excludePatterns:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private final excludeRecompile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile maxBlocks:I

.field private volatile maxSize:J

.field private final queue:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludeRecompile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 61
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->curSize:Lorg/jsr166/LongAdder8;

    .line 68
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "maxSize"    # J
    .param p3, "maxBlocks"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;-><init>(JILjava/util/Collection;)V

    .line 78
    return-void
.end method

.method public constructor <init>(JILjava/util/Collection;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "maxBlocks"    # I
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, "excludePaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludeRecompile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 61
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->curSize:Lorg/jsr166/LongAdder8;

    .line 88
    iput-wide p1, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxSize:J

    .line 89
    iput p3, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxBlocks:I

    .line 90
    iput-object p4, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePaths:Ljava/util/Collection;

    .line 91
    return-void
.end method

.method private changeSize(I)V
    .locals 4
    .param p1, "delta"    # I

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->curSize:Lorg/jsr166/LongAdder8;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 230
    :cond_0
    return-void
.end method

.method private peek(Lorg/apache/ignite/cache/eviction/EvictableEntry;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;)[B"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 189
    .local p1, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;

    .end local p1    # "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method private shrink()V
    .locals 10

    .prologue
    .line 196
    iget-wide v4, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxSize:J

    .line 197
    .local v4, "maxSize":J
    iget v3, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxBlocks:I

    .line 199
    .local v3, "maxBlocks":I
    iget-object v7, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v7}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v0

    .line 201
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    if-lez v3, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v7}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v7

    if-gt v7, v3, :cond_1

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    iget-object v7, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->curSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v7}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-lez v7, :cond_2

    .line 203
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v7}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cache/eviction/EvictableEntry;

    .line 205
    .local v1, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    if-nez v1, :cond_3

    .line 220
    .end local v1    # "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_2
    return-void

    .line 208
    .restart local v1    # "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->peek(Lorg/apache/ignite/cache/eviction/EvictableEntry;)[B

    move-result-object v6

    .line 210
    .local v6, "val":[B
    if-eqz v6, :cond_4

    .line 211
    array-length v7, v6

    neg-int v7, v7

    invoke-direct {p0, v7}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->changeSize(I)V

    .line 213
    :cond_4
    invoke-interface {v1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->evict()Z

    move-result v7

    if-nez v7, :cond_5

    .line 215
    invoke-interface {v1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta()Ljava/lang/Object;

    .line 217
    invoke-direct {p0, v1}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z

    .line 202
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->peek(Lorg/apache/ignite/cache/eviction/EvictableEntry;)[B

    move-result-object v6

    .line 117
    .local v6, "val":[B
    if-eqz v6, :cond_2

    array-length v0, v6

    .line 119
    .local v0, "blockSize":I
    :goto_0
    invoke-interface {p1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->meta()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;

    .line 122
    .local v2, "meta":Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
    if-nez v2, :cond_6

    .line 124
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v9, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v4

    .line 126
    .local v4, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;>;"
    new-instance v2, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;

    .end local v2    # "meta":Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
    invoke-direct {v2, v4, v0, v10}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;-><init>(Lorg/jsr166/ConcurrentLinkedDeque8$Node;ILorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$1;)V

    .line 128
    .restart local v2    # "meta":Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
    invoke-interface {p1, v2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->putMetaIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 130
    iget-object v8, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v8, v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 181
    :cond_1
    :goto_1
    return v7

    .end local v0    # "blockSize":I
    .end local v2    # "meta":Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
    .end local v4    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;>;"
    :cond_2
    move v0, v7

    .line 117
    goto :goto_0

    .line 135
    .restart local v0    # "blockSize":I
    .restart local v2    # "meta":Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
    .restart local v4    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;>;"
    :cond_3
    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 136
    invoke-interface {p1}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->isCached()Z

    move-result v9

    if-nez v9, :cond_4

    .line 138
    iget-object v8, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v8, v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    goto :goto_1

    .line 144
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->changeSize(I)V

    move v7, v8

    .line 146
    goto :goto_1

    .line 149
    :cond_5
    invoke-interface {p1, v4}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 154
    .end local v4    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;>;"
    :cond_6
    # invokes: Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->size()I
    invoke-static {v2}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->access$100(Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;)I

    move-result v5

    .line 156
    .local v5, "oldBlockSize":I
    # invokes: Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->node()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v2}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->access$000(Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v4

    .line 158
    .restart local v4    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;>;"
    iget-object v9, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v9, v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 160
    iget-object v9, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v9, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v3

    .line 162
    .local v3, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;>;"
    sub-int v1, v0, v5

    .line 164
    .local v1, "delta":I
    new-instance v9, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;

    invoke-direct {v9, v3, v0, v10}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;-><init>(Lorg/jsr166/ConcurrentLinkedDeque8$Node;ILorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$1;)V

    invoke-interface {p1, v2, v9}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->replaceMeta(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 166
    iget-object v9, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v9, v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 167
    sub-int/2addr v1, v0

    .line 170
    :cond_7
    if-eqz v1, :cond_1

    .line 171
    invoke-direct {p0, v1}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->changeSize(I)V

    .line 173
    if-lez v1, :cond_1

    move v7, v8

    .line 175
    goto :goto_1
.end method


# virtual methods
.method public exclude(Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 11
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 298
    sget-boolean v9, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 302
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludeRecompile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 304
    iget-object v1, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePaths:Ljava/util/Collection;

    .line 306
    .local v1, "excludePaths0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 307
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v10}, Ljava/util/HashSet;-><init>(IF)V

    .line 309
    .local v2, "excludePatterns0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/regex/Pattern;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, "excludePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v4

    .line 314
    .local v4, "ignore":Ljava/util/regex/PatternSyntaxException;
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid regex pattern: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 318
    .end local v0    # "excludePath":Ljava/lang/String;
    .end local v4    # "ignore":Ljava/util/regex/PatternSyntaxException;
    :cond_1
    iput-object v2, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePatterns:Ljava/util/Collection;

    .line 326
    .end local v1    # "excludePaths0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    if-eqz v2, :cond_5

    .line 327
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "pathStr":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/regex/Pattern;

    .line 330
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 335
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pathStr":Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    :goto_2
    return v7

    .line 321
    .end local v2    # "excludePatterns0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/regex/Pattern;>;"
    .restart local v1    # "excludePaths0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePatterns:Ljava/util/Collection;

    .restart local v2    # "excludePatterns0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/regex/Pattern;>;"
    goto :goto_1

    .line 324
    .end local v1    # "excludePaths0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v2    # "excludePatterns0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/regex/Pattern;>;"
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePatterns:Ljava/util/Collection;

    .restart local v2    # "excludePatterns0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/regex/Pattern;>;"
    goto :goto_1

    :cond_5
    move v7, v8

    .line 335
    goto :goto_2
.end method

.method public getCurrentBlocks()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentSize()J
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->curSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExcludePaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePaths:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBlocks()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxBlocks:I

    return v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxSize:J

    return-wide v0
.end method

.method public onEntryAccessed(ZLorg/apache/ignite/cache/eviction/EvictableEntry;)V
    .locals 3
    .param p1, "rmv"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    if-nez p1, :cond_2

    .line 96
    invoke-interface {p2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->isCached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->touch(Lorg/apache/ignite/cache/eviction/EvictableEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->shrink()V

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->removeMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;

    .line 105
    .local v0, "meta":Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    # invokes: Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->node()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v0}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->access$000(Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    # invokes: Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->size()I
    invoke-static {v0}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->access$100(Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;)I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->changeSize(I)V

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxSize:J

    .line 285
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxBlocks:I

    .line 286
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePaths:Ljava/util/Collection;

    .line 287
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePatterns:Ljava/util/Collection;

    .line 288
    return-void
.end method

.method public setExcludePaths(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "excludePaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePaths:Ljava/util/Collection;

    .line 261
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludeRecompile:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    return-void
.end method

.method public setMaxBlocks(I)V
    .locals 0
    .param p1, "maxBlocks"    # I

    .prologue
    .line 249
    iput p1, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxBlocks:I

    .line 250
    return-void
.end method

.method public setMaxSize(J)V
    .locals 1
    .param p1, "maxSize"    # J

    .prologue
    .line 239
    iput-wide p1, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxSize:J

    .line 240
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxSize:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 277
    iget v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->maxBlocks:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePaths:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->excludePatterns:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 280
    return-void
.end method
