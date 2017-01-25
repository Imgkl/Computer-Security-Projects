.class public Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
.super Ljava/lang/Object;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Lock"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final key:Ljava/lang/Object;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final owner:Ljava/lang/Thread;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4410
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;Ljava/lang/Object;Ljava/lang/Thread;)V
    .locals 2
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "owner"    # Ljava/lang/Thread;

    .prologue
    .line 4427
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4419
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 4428
    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->key:Ljava/lang/Object;

    .line 4429
    iput-object p3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->owner:Ljava/lang/Thread;

    .line 4430
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;Ljava/lang/Object;Ljava/lang/Thread;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Thread;
    .param p4, "x3"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 4411
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;Ljava/lang/Object;Ljava/lang/Thread;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    .prologue
    .line 4411
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->owner:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 4411
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->await()V

    return-void
.end method

.method private await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 4438
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 4439
    return-void
.end method


# virtual methods
.method public unlock()V
    .locals 3

    .prologue
    .line 4445
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->m:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->access$3800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    .line 4447
    .local v0, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->owner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4448
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eq v0, p0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4450
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4451
    return-void
.end method
