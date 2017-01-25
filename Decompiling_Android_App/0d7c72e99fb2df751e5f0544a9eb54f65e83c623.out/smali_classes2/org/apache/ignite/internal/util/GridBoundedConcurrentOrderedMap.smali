.class public Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;
.super Ljava/util/concurrent/ConcurrentSkipListMap;
.source "GridBoundedConcurrentOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final cnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile lsnr:Lorg/apache/ignite/lang/IgniteBiInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 64
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->max:I

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 81
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->max:I

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Map;)V

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 101
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->max:I

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/util/SortedMap;)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    .local p2, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/SortedMap;)V

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 118
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->max:I

    .line 119
    return-void
.end method

.method private onPut()V
    .locals 7

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 171
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "c":I
    iget v5, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->max:I

    if-le v0, v5, :cond_2

    .line 173
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 180
    .local v2, "key":Ljava/lang/Object;, "TK;"
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-super {p0, v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "val":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_1

    .line 184
    sget-boolean v5, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 193
    .local v1, "ignored":Ljava/util/NoSuchElementException;
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 199
    .end local v1    # "ignored":Ljava/util/NoSuchElementException;
    :cond_2
    return-void

    .line 186
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "val":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->lsnr:Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 189
    .local v3, "lsnr":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 190
    invoke-interface {v3, v2, v4}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->clone()Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->clone()Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    .line 217
    .local v0, "map":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    iget v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->max:I

    iput v1, v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->max:I

    .line 219
    return-object v0
.end method

.method public evictionListener()Lorg/apache/ignite/lang/IgniteBiInClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->lsnr:Lorg/apache/ignite/lang/IgniteBiInClosure;

    return-object v0
.end method

.method public evictionListener(Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->lsnr:Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 128
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const-string v1, "k"

    const-string v2, "v"

    invoke-static {p1, v1, p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, "ret":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->onPut()V

    .line 147
    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const-string v1, "k"

    const-string v2, "v"

    invoke-static {p1, v1, p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "ret":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->onPut()V

    .line 160
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "old":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 234
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 245
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 247
    .local v0, "rmvd":Z
    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 250
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
