.class Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorThreadDumpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorDumpThreadJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/Void;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<[",
        "Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;",
        "[J>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/Void;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "debug"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Void;ZLorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Void;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$1;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;-><init>(Ljava/lang/Void;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;->run(Ljava/lang/Void;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/Void;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 6
    .param p1, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[",
            "Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;",
            "[J>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 57
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getThreadMx()Ljava/lang/management/ThreadMXBean;

    move-result-object v2

    .line 59
    .local v2, "mx":Ljava/lang/management/ThreadMXBean;
    invoke-interface {v2, v4, v4}, Ljava/lang/management/ThreadMXBean;->dumpAllThreads(ZZ)[Ljava/lang/management/ThreadInfo;

    move-result-object v1

    .line 61
    .local v1, "info":[Ljava/lang/management/ThreadInfo;
    array-length v4, v1

    new-array v3, v4, [Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;

    .line 63
    .local v3, "visorInfo":[Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 64
    aget-object v4, v1, v0

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->from(Ljava/lang/management/ThreadInfo;)Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;

    move-result-object v4

    aput-object v4, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v4, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-interface {v2}, Ljava/lang/management/ThreadMXBean;->findDeadlockedThreads()[J

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
