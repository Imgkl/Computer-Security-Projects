.class public Lorg/apache/ignite/thread/IgniteThread;
.super Ljava/lang/Thread;
.source "IgniteThread.java"


# static fields
.field private static final DFLT_GRP:Ljava/lang/ThreadGroup;

.field private static final threadCntr:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private procMsg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "ignite"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/thread/IgniteThread;->DFLT_GRP:Ljava/lang/ThreadGroup;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/ignite/thread/IgniteThread;->threadCntr:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    sget-object v0, Lorg/apache/ignite/thread/IgniteThread;->DFLT_GRP:Ljava/lang/ThreadGroup;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "grp"    # Ljava/lang/ThreadGroup;
    .param p2, "gridName"    # Ljava/lang/String;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    sget-object v0, Lorg/apache/ignite/thread/IgniteThread;->threadCntr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p2}, Lorg/apache/ignite/thread/IgniteThread;->createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 3
    .param p1, "worker"    # Lorg/apache/ignite/internal/util/worker/GridWorker;

    .prologue
    .line 51
    sget-object v0, Lorg/apache/ignite/thread/IgniteThread;->DFLT_GRP:Ljava/lang/ThreadGroup;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/worker/GridWorker;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/worker/GridWorker;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method private static createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "num"    # J
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "gridName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x25

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public processingMessage(Z)V
    .locals 0
    .param p1, "procMsg"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/apache/ignite/thread/IgniteThread;->procMsg:Z

    .line 95
    return-void
.end method

.method public processingMessage()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/ignite/thread/IgniteThread;->procMsg:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    const-class v0, Lorg/apache/ignite/thread/IgniteThread;

    const-string v1, "name"

    invoke-virtual {p0}, Lorg/apache/ignite/thread/IgniteThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
