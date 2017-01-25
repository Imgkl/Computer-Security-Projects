.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;
.super Ljava/lang/Object;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    }
.end annotation


# instance fields
.field private final m:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4374
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->m:Lorg/jsr166/ConcurrentHashMap8;

    .line 4410
    return-void
.end method

.method static synthetic access$3800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;)Lorg/jsr166/ConcurrentHashMap8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    .prologue
    .line 4372
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->m:Lorg/jsr166/ConcurrentHashMap8;

    return-object v0
.end method


# virtual methods
.method public lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4385
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 4387
    .local v3, "th":Ljava/lang/Thread;
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    invoke-direct {v1, p0, p1, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;Ljava/lang/Object;Ljava/lang/Thread;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 4390
    .local v1, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->m:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v5, p1, v1}, Lorg/jsr166/ConcurrentHashMap8;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    .line 4392
    .local v2, "l2":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    if-nez v2, :cond_0

    .line 4396
    .end local v1    # "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :goto_1
    return-object v1

    .line 4395
    .restart local v1    # "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :cond_0
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->owner:Ljava/lang/Thread;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->access$3600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;)Ljava/lang/Thread;

    move-result-object v5

    if-ne v5, v3, :cond_1

    move-object v1, v4

    .line 4396
    goto :goto_1

    .line 4399
    :cond_1
    :try_start_0
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->await()V
    invoke-static {v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->access$3700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4401
    :catch_0
    move-exception v0

    .line 4402
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
