.class public Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
.super Ljava/lang/Object;
.source "GridSpinReadWriteLock.java"


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PENDING_WLOCKS_OFFS:J

.field private static final STATE_OFFS:J

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private volatile pendingWLocks:I

.field private final readLockEntryCnt:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:I

.field private writeLockEntryCnt:I

.field private writeLockOwner:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-class v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    .line 32
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->UNSAFE:Lsun/misc/Unsafe;

    .line 45
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    .line 47
    sget-object v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    const-string v3, "pendingWLocks"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock$1;-><init>(Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    return-void
.end method

.method private compareAndSet(JII)Z
    .locals 7
    .param p1, "offs"    # J
    .param p3, "expect"    # I
    .param p4, "update"    # I

    .prologue
    .line 406
    sget-object v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public readLock()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 81
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    .local v0, "cnt":I
    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 85
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-gtz v4, :cond_1

    iget v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-eq v4, v8, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 87
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 119
    :goto_0
    return-void

    .line 92
    :cond_2
    const/4 v3, 0x0

    .line 95
    .local v3, "interrupted":Z
    :cond_3
    :goto_1
    iget v1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    .line 97
    .local v1, "cur":I
    sget-boolean v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-ge v1, v8, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 99
    :cond_4
    if-eq v1, v8, :cond_5

    iget v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    if-lez v4, :cond_6

    .line 101
    :cond_5
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "ignored":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 107
    goto :goto_1

    .line 110
    .end local v2    # "ignored":Ljava/lang/InterruptedException;
    :cond_6
    sget-wide v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v4, v5, v1, v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    if-eqz v3, :cond_7

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 118
    :cond_7
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public readUnlock()V
    .locals 6

    .prologue
    .line 156
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 158
    .local v0, "cnt":I
    if-nez v0, :cond_0

    .line 159
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 162
    :cond_0
    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 163
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-gtz v2, :cond_2

    iget v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 165
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_3
    iget v1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    .line 173
    .local v1, "cur":I
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-gtz v1, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 175
    :cond_4
    sget-wide v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    const-class v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryReadLock()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 127
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, "cnt":I
    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 131
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-gtz v2, :cond_1

    iget v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-eq v2, v8, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 133
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v2, v3

    .line 147
    :goto_0
    return v2

    .line 139
    :cond_2
    iget v1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    .line 141
    .local v1, "cur":I
    if-eq v1, v8, :cond_3

    iget v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    if-lez v2, :cond_4

    .line 142
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :cond_4
    sget-wide v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v4, v5, v1, v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v2, v3

    .line 147
    goto :goto_0
.end method

.method public tryWriteLock()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 292
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 294
    .local v0, "threadId":J
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 295
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-eq v3, v6, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 297
    :cond_0
    iget v3, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    .line 311
    :goto_0
    return v2

    .line 302
    :cond_1
    sget-wide v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    invoke-direct {p0, v4, v5, v3, v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 305
    :cond_2
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    .line 306
    iput v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 311
    goto :goto_0
.end method

.method public tryWriteLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v14, -0x1

    const/4 v7, 0x1

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 324
    .local v8, "threadId":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v11, v8, v12

    if-nez v11, :cond_1

    .line 325
    sget-boolean v10, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-eq v10, v14, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 327
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    .line 368
    :goto_0
    return v7

    .line 335
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 337
    .local v6, "pendingWLocks0":I
    sget-wide v12, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6, v11}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 341
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    add-long v4, v12, v14

    .line 344
    .local v4, "end":J
    :cond_2
    sget-wide v12, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    const/4 v11, 0x0

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v11, v14}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 345
    sget-boolean v10, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .end local v4    # "end":J
    .end local v6    # "pendingWLocks0":I
    :catchall_0
    move-exception v7

    .line 362
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 364
    .restart local v6    # "pendingWLocks0":I
    sget-boolean v10, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v10, :cond_a

    if-gtz v6, :cond_a

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 347
    .restart local v4    # "end":J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    .line 348
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 364
    sget-boolean v10, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v10, :cond_6

    if-gtz v6, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 366
    :cond_6
    sget-wide v10, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v12, v6, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v6, v12}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    .line 353
    :cond_7
    const-wide/16 v12, 0xa

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 355
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v12

    cmp-long v11, v4, v12

    if-gtz v11, :cond_2

    .line 362
    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 364
    sget-boolean v7, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v7, :cond_9

    if-gtz v6, :cond_9

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 366
    :cond_9
    sget-wide v12, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v7, v6, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6, v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v10

    .line 368
    goto/16 :goto_0

    .line 366
    .end local v4    # "end":J
    :cond_a
    sget-wide v10, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v12, v6, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v6, v12}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 368
    throw v7
.end method

.method public writeLock()V
    .locals 10

    .prologue
    const/4 v8, -0x1

    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 190
    .local v4, "threadId":J
    iget-wide v6, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 191
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-eq v3, v8, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 193
    :cond_0
    iget v3, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    .line 234
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 202
    .local v2, "pendingWLocks0":I
    sget-wide v6, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v6, v7, v2, v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "interrupted":Z
    :goto_1
    sget-wide v6, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    const/4 v3, 0x0

    invoke-direct {p0, v6, v7, v3, v8}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 214
    goto :goto_1

    .line 219
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_2
    iget v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 221
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-gtz v2, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 223
    :cond_3
    sget-wide v6, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v3, v2, -0x1

    invoke-direct {p0, v6, v7, v2, v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    if-eqz v1, :cond_4

    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 230
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    iget-wide v6, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 232
    :cond_5
    iput-wide v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    .line 233
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    goto :goto_0
.end method

.method public writeLock0()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 242
    .local v2, "threadId":J
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 243
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->state:I

    if-eq v1, v6, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 245
    :cond_0
    iget v1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    .line 277
    :goto_0
    return-void

    .line 252
    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 254
    .local v0, "pendingWLocks0":I
    sget-wide v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_2
    sget-wide v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    const/4 v1, 0x0

    invoke-direct {p0, v4, v5, v1, v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    :cond_3
    iget v0, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->pendingWLocks:I

    .line 267
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-gtz v0, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 269
    :cond_4
    sget-wide v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->PENDING_WLOCKS_OFFS:J

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 275
    :cond_5
    iput-wide v2, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    .line 276
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    goto :goto_0
.end method

.method public writeLockedByCurrentThread()Z
    .locals 4

    .prologue
    .line 283
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeUnlock()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 378
    .local v2, "threadId":J
    iget-wide v6, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 379
    new-instance v4, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v4}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v4

    .line 381
    :cond_0
    iget v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    if-le v4, v1, :cond_2

    .line 382
    iget v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    .line 397
    :cond_1
    return-void

    .line 387
    :cond_2
    iput v5, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockEntryCnt:I

    .line 388
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockOwner:J

    .line 392
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLockEntryCnt:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    .line 394
    .local v1, "update":I
    :goto_0
    sget-wide v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->STATE_OFFS:J

    const/4 v6, -0x1

    invoke-direct {p0, v4, v5, v6, v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->compareAndSet(JII)Z

    move-result v0

    .line 396
    .local v0, "b":Z
    sget-boolean v4, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .end local v0    # "b":Z
    .end local v1    # "update":I
    :cond_3
    move v1, v5

    .line 392
    goto :goto_0
.end method
