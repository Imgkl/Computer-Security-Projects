.class public Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;
.super Ljava/lang/Object;
.source "GridNioBackPressureControl.java"


# static fields
.field private static threadProcMsg:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcMsg:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static threadProcessingMessage(Z)V
    .locals 3
    .param p0, "processing"    # Z

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 51
    .local v0, "th":Ljava/lang/Thread;
    instance-of v1, v0, Lorg/apache/ignite/thread/IgniteThread;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Lorg/apache/ignite/thread/IgniteThread;

    .end local v0    # "th":Ljava/lang/Thread;
    invoke-virtual {v0, p0}, Lorg/apache/ignite/thread/IgniteThread;->processingMessage(Z)V

    .line 55
    :goto_0
    return-void

    .line 54
    .restart local v0    # "th":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcMsg:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static threadProcessingMessage()Z
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 39
    .local v0, "th":Ljava/lang/Thread;
    instance-of v1, v0, Lorg/apache/ignite/thread/IgniteThread;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lorg/apache/ignite/thread/IgniteThread;

    .end local v0    # "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Lorg/apache/ignite/thread/IgniteThread;->processingMessage()Z

    move-result v1

    .line 42
    .restart local v0    # "th":Ljava/lang/Thread;
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcMsg:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method
