.class public Lorg/apache/ignite/internal/util/GridDebug;
.super Ljava/lang/Object;
.source "GridDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridDebug$Item;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

.field private static final LOGS_PATH:Ljava/lang/String;

.field private static allowLog:Z

.field private static final charset:Ljava/nio/charset/Charset;

.field private static final out:Ljava/io/FileOutputStream;

.field private static final que:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/apache/ignite/internal/util/GridDebug$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile start:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 35
    const-class v3, Lorg/apache/ignite/internal/util/GridDebug;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lorg/apache/ignite/internal/util/GridDebug;->$assertionsDisabled:Z

    .line 37
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss,SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/ignite/internal/util/GridDebug;->DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

    .line 47
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lorg/apache/ignite/internal/util/GridDebug;->charset:Ljava/nio/charset/Charset;

    .line 57
    sput-object v4, Lorg/apache/ignite/internal/util/GridDebug;->LOGS_PATH:Ljava/lang/String;

    .line 64
    sget-object v2, Lorg/apache/ignite/internal/util/GridDebug;->LOGS_PATH:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 65
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/apache/ignite/internal/util/GridDebug;->LOGS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd_HH-mm-ss-"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "log":Ljava/io/File;
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridDebug;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 71
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v2, Lorg/apache/ignite/internal/util/GridDebug;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "log":Ljava/io/File;
    :cond_2
    sput-object v4, Lorg/apache/ignite/internal/util/GridDebug;->out:Ljava/io/FileOutputStream;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method static synthetic access$000(JLjava/lang/String;J[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 35
    invoke-static/range {p0 .. p5}, Lorg/apache/ignite/internal/util/GridDebug;->formatEntry(JLjava/lang/String;J[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized allowWriteLog(Z)V
    .locals 2
    .param p0, "allow"    # Z

    .prologue
    .line 94
    const-class v0, Lorg/apache/ignite/internal/util/GridDebug;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lorg/apache/ignite/internal/util/GridDebug;->allowLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs debug([Ljava/lang/Object;)V
    .locals 2
    .param p0, "x"    # [Ljava/lang/Object;

    .prologue
    .line 123
    sget-object v1, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 125
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/GridDebug$Item;>;"
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Lorg/apache/ignite/internal/util/GridDebug$Item;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/util/GridDebug$Item;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-void
.end method

.method public static dump()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridDebug;->dump(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 180
    return-void
.end method

.method public static dump(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/apache/ignite/internal/util/GridDebug$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "que":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/GridDebug$Item;>;"
    if-nez p0, :cond_1

    .line 200
    :cond_0
    return-void

    .line 192
    :cond_1
    const/4 v2, -0x1

    .line 194
    .local v2, "start":I
    const/4 v3, 0x0

    .line 196
    .local v3, "x":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridDebug$Item;

    .line 197
    .local v0, "i":Lorg/apache/ignite/internal/util/GridDebug$Item;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "x":I
    .local v4, "x":I
    if-le v3, v2, :cond_2

    .line 198
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_2
    move v3, v4

    .line 199
    .end local v4    # "x":I
    .restart local v3    # "x":I
    goto :goto_0
.end method

.method public static dumpStack()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 164
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/ignite/internal/util/GridDebug$1;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/GridDebug$1;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static dumpWithReset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridDebug;->dumpWithReset(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dumpWithReset(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/util/concurrent/ConcurrentLinkedQueue;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/apache/ignite/internal/util/GridDebug$Item;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "q2":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/GridDebug$Item;>;"
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 234
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/GridDebug$Item;>;"
    if-nez v0, :cond_1

    .line 239
    :goto_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridDebug;->dump(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 241
    const-string v1, ""

    return-object v1

    .line 237
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static varargs dumpWithStop([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # [Ljava/lang/Object;

    .prologue
    .line 209
    invoke-static {p0}, Lorg/apache/ignite/internal/util/GridDebug;->debug([Ljava/lang/Object;)V

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridDebug;->dumpWithReset(Ljava/util/concurrent/ConcurrentLinkedQueue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs formatEntry(JLjava/lang/String;J[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "ts"    # J
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "threadId"    # J
    .param p5, "data"    # [Ljava/lang/Object;

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/GridDebug;->DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "><~DBG~><"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hangIfStopped()V
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    const-wide/32 v0, 0x493e0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static queue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/apache/ignite/internal/util/GridDebug$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public static reset()V
    .locals 3

    .prologue
    .line 248
    sget-object v1, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 250
    .local v0, "old":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/GridDebug$Item;>;"
    if-eqz v0, :cond_0

    .line 251
    sget-object v1, Lorg/apache/ignite/internal/util/GridDebug;->que:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    :cond_0
    return-void
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/ignite/internal/util/GridDebug;->start:J

    .line 147
    return-void
.end method

.method public static timing(Ljava/lang/String;)V
    .locals 6
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lorg/apache/ignite/internal/util/GridDebug;->start:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public static varargs declared-synchronized write([Ljava/lang/Object;)V
    .locals 11
    .param p0, "x"    # [Ljava/lang/Object;

    .prologue
    .line 103
    const-class v8, Lorg/apache/ignite/internal/util/GridDebug;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridDebug;->allowLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    monitor-exit v8

    return-void

    .line 106
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 109
    .local v7, "th":Ljava/lang/Thread;
    :try_start_2
    sget-object v9, Lorg/apache/ignite/internal/util/GridDebug;->out:Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridDebug;->formatEntry(JLjava/lang/String;J[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/GridDebug;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 110
    sget-object v0, Lorg/apache/ignite/internal/util/GridDebug;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v6

    .line 113
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "th":Ljava/lang/Thread;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method
