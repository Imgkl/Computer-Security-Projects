.class Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "GridCacheWriteBehindStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatefulValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private flushCond:Ljava/util/concurrent/locks/Condition;

.field private storeOperation:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

.field private val:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 895
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;)V
    .locals 1
    .param p2, "storeOperation"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    .local p1, "val":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 910
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->flushCond:Ljava/util/concurrent/locks/Condition;

    .line 919
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->PUT:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->RMV:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 921
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->val:Ljavax/cache/Cache$Entry;

    .line 922
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->storeOperation:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    .line 923
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->NEW:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .line 924
    return-void
.end method

.method synthetic constructor <init>(Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/cache/Cache$Entry;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$1;

    .prologue
    .line 895
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;-><init>(Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .prologue
    .line 895
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Ljavax/cache/Cache$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .prologue
    .line 895
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->entry()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .prologue
    .line 895
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->status()Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 895
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->waitForFlush()V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;
    .param p1, "x1"    # Ljavax/cache/Cache$Entry;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .prologue
    .line 895
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->update(Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->status(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .prologue
    .line 895
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->signalFlushed()V

    return-void
.end method

.method private entry()Ljavax/cache/Cache$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->val:Ljavax/cache/Cache$Entry;

    return-object v0
.end method

.method private operation()Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .locals 1

    .prologue
    .line 937
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->storeOperation:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    return-object v0
.end method

.method private signalFlushed()V
    .locals 1

    .prologue
    .line 985
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->flushCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 986
    return-void
.end method

.method private status()Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .locals 1

    .prologue
    .line 944
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    return-object v0
.end method

.method private status(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V
    .locals 0
    .param p1, "valStatus"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .prologue
    .line 953
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .line 954
    return-void
.end method

.method private update(Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V
    .locals 0
    .param p1    # Ljavax/cache/Cache$Entry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "storeOperation"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .param p3, "valStatus"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 966
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    .local p1, "val":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->val:Ljavax/cache/Cache$Entry;

    .line 967
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->storeOperation:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    .line 968
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .line 969
    return-void
.end method

.method private waitForFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 977
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->flushCond:Ljava/util/concurrent/locks/Condition;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/locks/Condition;)V

    .line 978
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 990
    if-ne p0, p1, :cond_1

    .line 998
    :cond_0
    :goto_0
    return v1

    .line 993
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    if-nez v3, :cond_2

    move v1, v2

    .line 994
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 996
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 998
    .local v0, "other":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->val:Ljavax/cache/Cache$Entry;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->val:Ljavax/cache/Cache$Entry;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1003
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->val:Ljavax/cache/Cache$Entry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->val:Ljavax/cache/Cache$Entry;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1005
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->valStatus:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1007
    return v0

    .line 1003
    .end local v0    # "res":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
