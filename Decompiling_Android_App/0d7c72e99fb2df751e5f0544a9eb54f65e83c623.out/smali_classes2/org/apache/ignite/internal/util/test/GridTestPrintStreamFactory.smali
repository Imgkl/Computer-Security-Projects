.class public final Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;
.super Ljava/lang/Object;
.source "GridTestPrintStreamFactory.java"


# static fields
.field private static errCnt:J

.field private static outCnt:J

.field private static final sysErr:Ljava/io/PrintStream;

.field private static final sysOut:Ljava/io/PrintStream;

.field private static testErr:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

.field private static testOut:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysOut:Ljava/io/PrintStream;

    .line 30
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysErr:Ljava/io/PrintStream;

    .line 39
    sput-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->outCnt:J

    .line 42
    sput-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->errCnt:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static declared-synchronized acquireErr()Lorg/apache/ignite/internal/util/test/GridTestPrintStream;
    .locals 6

    .prologue
    .line 96
    const-class v1, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testErr:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    sget-object v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysErr:Ljava/io/PrintStream;

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;-><init>(Ljava/io/PrintStream;)V

    sput-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testErr:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    .line 99
    :cond_0
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->errCnt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 100
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testErr:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 102
    :cond_1
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->errCnt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->errCnt:J

    .line 104
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testErr:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acquireOut()Lorg/apache/ignite/internal/util/test/GridTestPrintStream;
    .locals 6

    .prologue
    .line 77
    const-class v1, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testOut:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    sget-object v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysOut:Ljava/io/PrintStream;

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;-><init>(Ljava/io/PrintStream;)V

    sput-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testOut:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    .line 80
    :cond_0
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->outCnt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testOut:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 83
    :cond_1
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->outCnt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->outCnt:J

    .line 85
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->testOut:Lorg/apache/ignite/internal/util/test/GridTestPrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStdErr()Ljava/io/PrintStream;
    .locals 2

    .prologue
    .line 66
    const-class v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysErr:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStdOut()Ljava/io/PrintStream;
    .locals 2

    .prologue
    .line 57
    const-class v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysOut:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized releaseErr()V
    .locals 6

    .prologue
    .line 123
    const-class v1, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->errCnt:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    sput-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->errCnt:J

    .line 125
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->errCnt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysErr:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit v1

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseOut()V
    .locals 6

    .prologue
    .line 112
    const-class v1, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->outCnt:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    sput-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->outCnt:J

    .line 114
    sget-wide v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->outCnt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStreamFactory;->sysOut:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit v1

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
