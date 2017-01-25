.class public Lorg/apache/ignite/thread/IgniteThreadFactory;
.super Ljava/lang/Object;
.source "IgniteThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final gridName:Ljava/lang/String;

.field private final threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "ignite"

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/ignite/thread/IgniteThreadFactory;->gridName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/ignite/thread/IgniteThreadFactory;->threadName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 59
    new-instance v0, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v1, p0, Lorg/apache/ignite/thread/IgniteThreadFactory;->gridName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ignite/thread/IgniteThreadFactory;->threadName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
