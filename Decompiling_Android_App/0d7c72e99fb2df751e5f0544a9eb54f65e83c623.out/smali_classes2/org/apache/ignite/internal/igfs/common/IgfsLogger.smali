.class public final Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
.super Ljava/lang/Object;
.source "IgfsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/igfs/common/IgfsLogger$1;,
        Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;,
        Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CNTR:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final DELIM_FIELD:Ljava/lang/String; = ";"

.field public static final DELIM_FIELD_VAL:Ljava/lang/String; = ","

.field public static final HDR:Ljava/lang/String; = "Timestamp;ThreadID;PID;Type;Path;Mode;StreamId;BufSize;DataLen;Append;Overwrite;Replication;BlockSize;Position;ReadLen;SkipCnt;ReadLimit;UserTime;SystemTime;TotalBytes;DestPath;Recursive;List"

.field public static final TYPE_CLOSE_IN:I = 0x7

.field public static final TYPE_CLOSE_OUT:I = 0x8

.field public static final TYPE_DELETE:I = 0xc

.field public static final TYPE_DIR_LIST:I = 0xa

.field public static final TYPE_DIR_MAKE:I = 0x9

.field public static final TYPE_MARK:I = 0x5

.field public static final TYPE_OPEN_IN:I = 0x0

.field public static final TYPE_OPEN_OUT:I = 0x1

.field public static final TYPE_RANDOM_READ:I = 0x2

.field public static final TYPE_RENAME:I = 0xb

.field public static final TYPE_RESET:I = 0x6

.field public static final TYPE_SEEK:I = 0x3

.field public static final TYPE_SKIP:I = 0x4

.field private static final disabledLogger:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

.field private static final logLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static final loggers:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/igfs/common/IgfsLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private batchSize:I

.field private cnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private enabled:Z

.field private endpoint:Ljava/lang/String;

.field private entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private flushCond:Ljava/util/concurrent/locks/Condition;

.field private flushLock:Ljava/util/concurrent/locks/Lock;

.field private flushWorker:Ljava/lang/Thread;

.field private pid:I

.field private rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private useCnt:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->$assertionsDisabled:Z

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->CNTR:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->loggers:Lorg/jsr166/ConcurrentHashMap8;

    .line 96
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->logLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 99
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    invoke-direct {v0}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->disabledLogger:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "igfsName"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "batchSize"    # I

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const-string v1, "endpoint cannot be null"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    const-string v1, "dir cannot be null"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    if-lez p4, :cond_0

    move v1, v2

    :goto_0
    const-string v3, "batch size cannot be negative"

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 211
    iput-boolean v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->enabled:Z

    .line 213
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->endpoint:Ljava/lang/String;

    .line 214
    iput p4, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->batchSize:I

    .line 216
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jvmPid()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->pid:I

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v3, "dir must point to a directory"

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v3, "dir must exist"

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 223
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "igfs-log-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->file:Ljava/io/File;

    .line 225
    new-instance v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->entries:Ljava/util/Collection;

    .line 227
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->useCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 231
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;

    .line 232
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushCond:Ljava/util/concurrent/locks/Condition;

    .line 234
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;Lorg/apache/ignite/internal/igfs/common/IgfsLogger$1;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushWorker:Ljava/lang/Thread;

    .line 236
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushWorker:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 238
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushWorker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 239
    return-void

    .line 209
    .end local v0    # "dirFile":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->pid:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->batchSize:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushCond:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->entries:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$702(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->entries:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->file:Ljava/io/File;

    return-object v0
.end method

.method private addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    .prologue
    .line 464
    sget-boolean v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 469
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->entries:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 475
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->batchSize:I

    if-lt v0, v1, :cond_1

    .line 476
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 485
    :cond_1
    return-void

    .line 472
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 481
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static disabledLogger()Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->disabledLogger:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    return-object v0
.end method

.method public static logger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    .locals 4
    .param p0, "endpoint"    # Ljava/lang/String;
    .param p1, "igfsName"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "batchSize"    # I

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 166
    const-string p0, ""

    .line 168
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->logLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 171
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->loggers:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v2, p0}, Lorg/jsr166/ConcurrentHashMap8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .line 173
    .local v0, "log":Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .end local v0    # "log":Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    .restart local v0    # "log":Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->loggers:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v2, p0, v0}, Lorg/jsr166/ConcurrentHashMap8;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    .line 178
    .local v1, "log0":Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    if-eqz v1, :cond_1

    .line 179
    move-object v0, v1

    .line 182
    .end local v1    # "log0":Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    :cond_1
    iget-object v2, v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->useCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->logLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .end local v0    # "log":Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->logLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public static nextId()J
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->CNTR:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "close":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->useCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    .line 429
    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->logLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 432
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->useCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    .line 433
    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->loggers:Lorg/jsr166/ConcurrentHashMap8;

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->endpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    const/4 v0, 0x1

    .line 439
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->logLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 443
    :cond_1
    if-eqz v0, :cond_2

    .line 444
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushWorker:Ljava/lang/Thread;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 447
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushWorker:Ljava/lang/Thread;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->entries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 455
    :cond_2
    return-void

    .line 439
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->logLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 449
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isLogEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->enabled:Z

    return v0
.end method

.method public logAppend(JLorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;I)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p5, "bufSize"    # I

    .prologue
    .line 290
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 292
    return-void
.end method

.method public logCloseIn(JJJJ)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "userTime"    # J
    .param p5, "readTime"    # J
    .param p7, "total"    # J

    .prologue
    .line 358
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 360
    return-void
.end method

.method public logCloseOut(JJJJ)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "userTime"    # J
    .param p5, "writeTime"    # J
    .param p7, "total"    # J

    .prologue
    .line 371
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 373
    return-void
.end method

.method public logCreate(JLorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;ZIIJ)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p5, "overwrite"    # Z
    .param p6, "bufSize"    # I
    .param p7, "replication"    # I
    .param p8, "blockSize"    # J

    .prologue
    .line 277
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 279
    return-void
.end method

.method public logDelete(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;Z)V
    .locals 23
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p3, "recursive"    # Z

    .prologue
    .line 418
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/16 v3, 0xc

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 420
    return-void
.end method

.method public logListDirectory(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;[Ljava/lang/String;)V
    .locals 23
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p3, "files"    # [Ljava/lang/String;

    .prologue
    .line 394
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/16 v3, 0xa

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v22, p3

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 396
    return-void
.end method

.method public logMakeDirectory(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;)V
    .locals 23
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;

    .prologue
    .line 382
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/16 v3, 0x9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 384
    return-void
.end method

.method public logMark(JJ)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "readLimit"    # J

    .prologue
    .line 335
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 337
    return-void
.end method

.method public logOpen(JLorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;IJ)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p5, "bufSize"    # I
    .param p6, "dataLen"    # J

    .prologue
    .line 260
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 262
    return-void
.end method

.method public logRandomRead(JJI)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "pos"    # J
    .param p5, "readLen"    # I

    .prologue
    .line 302
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 304
    return-void
.end method

.method public logRename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 23
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p3, "destPath"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 406
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/16 v3, 0xb

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/IgfsPath;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 408
    return-void
.end method

.method public logReset(J)V
    .locals 23
    .param p1, "streamId"    # J

    .prologue
    .line 345
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 347
    return-void
.end method

.method public logSeek(JJ)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "pos"    # J

    .prologue
    .line 313
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 315
    return-void
.end method

.method public logSkip(JJ)V
    .locals 23
    .param p1, "streamId"    # J
    .param p3, "skipCnt"    # J

    .prologue
    .line 324
    new-instance v1, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v22}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->addEntry(Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;)V

    .line 326
    return-void
.end method
