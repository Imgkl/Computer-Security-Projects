.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;
.super Ljava/lang/Object;
.source "GridUnsafeLru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LruStripe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NODE:I = 0x23


# instance fields
.field private head:J

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

.field private final order:S

.field private volatile size:J

.field private tail:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(SLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 1
    .param p1, "order"    # S
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    .line 253
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_1
    iput-short p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order:S

    .line 257
    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(SLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$1;)V
    .locals 0
    .param p1, "x0"    # S
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$1;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;-><init>(SLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;J)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;
    .param p1, "x1"    # J

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->partition(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;J)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;
    .param p1, "x1"    # J

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->hash(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;J)J
    .locals 3
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;
    .param p1, "x1"    # J

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->entry(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private entry(J)J
    .locals 5
    .param p1, "qAddr"    # J

    .prologue
    .line 609
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x1b

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private entry(JJ)V
    .locals 5
    .param p1, "qAddr"    # J
    .param p3, "addr"    # J

    .prologue
    .line 619
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x1b

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLong(JJ)V

    .line 620
    return-void
.end method

.method private hash(J)I
    .locals 5
    .param p1, "qAddr"    # J

    .prologue
    .line 529
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x6

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v0

    return v0
.end method

.method private hash(JI)V
    .locals 5
    .param p1, "qAddr"    # J
    .param p3, "hash"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x6

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeInt(JI)V

    .line 540
    return-void
.end method

.method private next(J)J
    .locals 5
    .param p1, "qAddr"    # J

    .prologue
    .line 589
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x13

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private next(JJ)V
    .locals 5
    .param p1, "qAddr"    # J
    .param p3, "next"    # J

    .prologue
    .line 599
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x13

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLong(JJ)V

    .line 600
    return-void
.end method

.method static order(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)S
    .locals 2
    .param p0, "qAddr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 268
    invoke-virtual {p2, p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readShort(J)S

    move-result v0

    return v0
.end method

.method private order(J)V
    .locals 3
    .param p1, "qAddr"    # J

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    iget-short v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order:S

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeShort(JS)V

    .line 500
    return-void
.end method

.method private partition(J)I
    .locals 5
    .param p1, "qAddr"    # J

    .prologue
    .line 509
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x2

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v0

    return v0
.end method

.method private partition(JI)V
    .locals 5
    .param p1, "qAddr"    # J
    .param p3, "part"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x2

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeInt(JI)V

    .line 520
    return-void
.end method

.method private polling(JZ)V
    .locals 5
    .param p1, "qAddr"    # J
    .param p3, "polling"    # Z

    .prologue
    .line 559
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0xa

    add-long/2addr v2, p1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeByte(JB)V

    .line 560
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private polling(J)Z
    .locals 5
    .param p1, "qAddr"    # J

    .prologue
    const/4 v0, 0x1

    .line 549
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0xa

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readByte(J)B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private previous(J)J
    .locals 5
    .param p1, "qAddr"    # J

    .prologue
    .line 569
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0xb

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private previous(JJ)V
    .locals 5
    .param p1, "qAddr"    # J
    .param p3, "prev"    # J

    .prologue
    .line 579
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0xb

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLong(JJ)V

    .line 580
    return-void
.end method

.method private unlink(J)V
    .locals 11
    .param p1, "qAddr"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 463
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 465
    :cond_1
    const-wide/16 v2, 0x0

    .line 466
    .local v2, "prev":J
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(J)J

    move-result-wide v0

    .line 468
    .local v0, "next":J
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 469
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    .line 478
    :goto_0
    cmp-long v4, v0, v8

    if-eqz v4, :cond_5

    .line 479
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->previous(JJ)V

    .line 486
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v6, 0x23

    invoke-virtual {v4, p1, p2, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->releaseSystem(JJ)V

    .line 488
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size:J

    .line 490
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_7

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 471
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->previous(J)J

    move-result-wide v2

    .line 473
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    cmp-long v4, v2, v8

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid previous link for stripe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-short v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 475
    :cond_4
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(JJ)V

    goto :goto_0

    .line 481
    :cond_5
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 483
    :cond_6
    iput-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    goto :goto_1

    .line 491
    :cond_7
    return-void
.end method


# virtual methods
.method destruct()V
    .locals 8

    .prologue
    .line 296
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 299
    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    .local v0, "n":J
    const-wide/16 v2, 0x0

    .local v2, "prev":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 300
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v6, 0x23

    invoke-virtual {v4, v2, v3, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->releaseSystem(JJ)V

    .line 299
    move-wide v2, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 303
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    return-void

    .line 303
    .end local v0    # "n":J
    .end local v2    # "prev":J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method memorySize()J
    .locals 4

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size:J

    const-wide/16 v2, 0x23

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method offer(IJI)J
    .locals 10
    .param p1, "part"    # I
    .param p2, "addr"    # J
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 317
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 320
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v6, 0x23

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocateSystem(JZ)J

    move-result-wide v2

    .line 322
    .local v2, "qAddr":J
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 323
    iput-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    .line 325
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    .line 327
    .local v0, "prev":J
    iput-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    .line 329
    cmp-long v4, v0, v8

    if-eqz v4, :cond_1

    .line 330
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(JJ)V

    .line 332
    :cond_1
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order(J)V

    .line 333
    invoke-direct {p0, v2, v3, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->partition(JI)V

    .line 334
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->polling(JZ)V

    .line 335
    invoke-direct {p0, v2, v3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->hash(JI)V

    .line 336
    invoke-direct {p0, v2, v3, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->entry(JJ)V

    .line 337
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->previous(JJ)V

    .line 338
    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(JJ)V

    .line 340
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2

    .end local v0    # "prev":J
    .end local v2    # "qAddr":J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method order()I
    .locals 1

    .prologue
    .line 275
    iget-short v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->order:S

    return v0
.end method

.method poll(J)V
    .locals 3
    .param p1, "qAddr"    # J

    .prologue
    .line 424
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 427
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->polling(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 429
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->unlink(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 434
    return-void
.end method

.method prePoll()J
    .locals 4

    .prologue
    .line 355
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 358
    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    .line 360
    .local v0, "n":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 361
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->polling(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->polling(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    .line 369
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 375
    .end local v0    # "n":J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method remove(J)V
    .locals 3
    .param p1, "qAddr"    # J

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 446
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->polling(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->unlink(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 455
    return-void

    .line 450
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->entry(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method size()J
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method touch(JJ)V
    .locals 9
    .param p1, "qAddr"    # J
    .param p3, "addr"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 386
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 389
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->entry(JJ)V

    .line 391
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    .line 392
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->previous(J)J

    move-result-wide v2

    .line 393
    .local v2, "prev":J
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(J)J

    move-result-wide v0

    .line 395
    .local v0, "next":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    .line 396
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(JJ)V

    .line 403
    :goto_0
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 404
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->previous(JJ)V

    .line 406
    :cond_0
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    invoke-direct {p0, v4, v5, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(JJ)V

    .line 407
    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, p2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->next(JJ)V

    .line 408
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J

    invoke-direct {p0, p1, p2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->previous(JJ)V

    .line 410
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->tail:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .end local v0    # "next":J
    .end local v2    # "prev":J
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 416
    return-void

    .line 398
    .restart local v0    # "next":J
    .restart local v2    # "prev":J
    :cond_2
    :try_start_1
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    .end local v0    # "next":J
    .end local v2    # "prev":J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 400
    .restart local v0    # "next":J
    .restart local v2    # "prev":J
    :cond_3
    :try_start_2
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru$LruStripe;->head:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
