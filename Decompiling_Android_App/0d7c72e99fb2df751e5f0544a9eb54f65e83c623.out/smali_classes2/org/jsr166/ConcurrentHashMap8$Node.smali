.class Lorg/jsr166/ConcurrentHashMap8$Node;
.super Ljava/lang/Object;
.source "ConcurrentHashMap8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# static fields
.field static final MAX_SPINS:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final hashOffset:J


# instance fields
.field volatile hash:I

.field final key:Ljava/lang/Object;

.field volatile next:Lorg/jsr166/ConcurrentHashMap8$Node;

.field volatile val:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 604
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    if-le v3, v2, :cond_0

    const/16 v2, 0x40

    :cond_0
    sput v2, Lorg/jsr166/ConcurrentHashMap8$Node;->MAX_SPINS:I

    .line 662
    :try_start_0
    # invokes: Lorg/jsr166/ConcurrentHashMap8;->getUnsafe()Lsun/misc/Unsafe;
    invoke-static {}, Lorg/jsr166/ConcurrentHashMap8;->access$000()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lorg/jsr166/ConcurrentHashMap8$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 663
    const-class v1, Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 664
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/jsr166/ConcurrentHashMap8$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "hash"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/jsr166/ConcurrentHashMap8$Node;->hashOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "next"    # Lorg/jsr166/ConcurrentHashMap8$Node;

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput p1, p0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 593
    iput-object p2, p0, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .line 594
    iput-object p3, p0, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .line 595
    iput-object p4, p0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 596
    return-void
.end method


# virtual methods
.method final casHash(II)Z
    .locals 6
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .prologue
    .line 600
    sget-object v0, Lorg/jsr166/ConcurrentHashMap8$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentHashMap8$Node;->hashOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V
    .locals 6
    .param p1, "tab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p2, "i"    # I

    .prologue
    const/high16 v5, -0x40000000    # -2.0f

    .line 625
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    array-length v4, p1

    if-ge p2, v4, :cond_2

    .line 626
    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsr166/ThreadLocalRandom8;->nextInt()I

    move-result v2

    .line 627
    .local v2, "r":I
    sget v3, Lorg/jsr166/ConcurrentHashMap8$Node;->MAX_SPINS:I

    .line 628
    .local v3, "spins":I
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v4

    if-ne v4, p0, :cond_2

    iget v0, p0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v0, "h":I
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 629
    if-ltz v3, :cond_1

    .line 630
    shl-int/lit8 v4, v2, 0x1

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x3

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xa

    xor-int/2addr v2, v4

    .line 631
    if-ltz v2, :cond_0

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    .line 632
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 634
    :cond_1
    or-int v4, v0, v5

    invoke-virtual {p0, v0, v4}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    invoke-static {p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v4

    if-ne v4, p0, :cond_3

    iget v4, p0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 639
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    .end local v0    # "h":I
    .end local v2    # "r":I
    .end local v3    # "spins":I
    :cond_2
    return-void

    .line 640
    .restart local v0    # "h":I
    .restart local v2    # "r":I
    .restart local v3    # "spins":I
    :catch_0
    move-exception v1

    .line 642
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 643
    :catch_1
    move-exception v4

    goto :goto_1

    .line 648
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 649
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method
