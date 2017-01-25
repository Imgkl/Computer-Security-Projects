.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
.super Ljava/lang/Object;
.source "GridUnsafeLru.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$1;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final addIdx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final cnt:S

.field private final lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private released:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rmvIdx:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(SLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 4
    .param p1, "cnt"    # S
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 58
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 60
    :cond_1
    new-array v1, p1, [Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    iput-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    .line 62
    iput-short p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->cnt:S

    .line 63
    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    if-ge v0, p1, :cond_2

    .line 66
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;-><init>(SLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$1;)V

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->addIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    div-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->rmvIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    return-void
.end method


# virtual methods
.method concurrency()S
    .locals 1

    .prologue
    .line 78
    iget-short v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->cnt:S

    return v0
.end method

.method destruct()V
    .locals 4

    .prologue
    .line 211
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->cnt:S

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->destruct()V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method entry(SJ)J
    .locals 2
    .param p1, "order"    # S
    .param p2, "qAddr"    # J

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;J)J

    move-result-wide v0

    return-wide v0
.end method

.method hash(SJ)I
    .locals 2
    .param p1, "order"    # S
    .param p2, "qAddr"    # J

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;J)I

    move-result v0

    return v0
.end method

.method memorySize()J
    .locals 6

    .prologue
    .line 97
    const-wide/16 v2, 0x0

    .line 99
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->memorySize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-wide v2
.end method

.method offer(IJI)J
    .locals 4
    .param p1, "part"    # I
    .param p2, "addr"    # J
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->addIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-short v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->cnt:S

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->offer(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method order(J)S
    .locals 1
    .param p1, "qAddr"    # J

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-static {p1, p2, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)S

    move-result v0

    return v0
.end method

.method partition(SJ)I
    .locals 2
    .param p1, "order"    # S
    .param p2, "qAddr"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;J)I

    move-result v0

    return v0
.end method

.method poll(J)V
    .locals 3
    .param p1, "qAddr"    # J

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-static {p1, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)S

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->poll(J)V

    .line 186
    return-void
.end method

.method prePoll()J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 167
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->rmvIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 170
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 171
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    add-int v7, v1, v0

    iget-short v8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->cnt:S

    rem-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->prePoll()J

    move-result-wide v2

    .line 173
    .local v2, "qAddr":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 177
    .end local v2    # "qAddr":J
    :goto_1
    return-wide v2

    .line 170
    .restart local v2    # "qAddr":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "qAddr":J
    :cond_1
    move-wide v2, v4

    .line 177
    goto :goto_1
.end method

.method remove(J)V
    .locals 3
    .param p1, "qAddr"    # J

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-static {p1, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)S

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->remove(J)V

    .line 205
    return-void
.end method

.method size()J
    .locals 6

    .prologue
    .line 85
    const-wide/16 v2, 0x0

    .line 87
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method touch(JJ)V
    .locals 3
    .param p1, "qAddr"    # J
    .param p3, "addr"    # J

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->lrus:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-static {p1, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)S

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->touch(JJ)V

    .line 196
    return-void
.end method
