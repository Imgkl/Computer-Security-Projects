.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
.super Ljava/lang/Object;
.source "GridUnsafeGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Operation"
.end annotation


# static fields
.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_DEALLOCATED:I = 0x2

.field private static final STATE_MAY_DEALLOCATE:I = 0x1

.field private static final compoundUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final finUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;",
            ">;"
        }
    .end annotation
.end field

.field private static final stateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile compound:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

.field private volatile finHead:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

.field private id:J

.field private volatile next:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private reentries:I

.field private volatile state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 198
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    const-class v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    const-string v2, "finHead"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->finUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 202
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    const-class v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    const-string v2, "compound"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->compoundUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 206
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    const-string v1, "state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->stateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->allowDeallocate()V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I

    return v0
.end method

.method static synthetic access$208(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I

    return v0
.end method

.method static synthetic access$210(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->previous(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->next(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->state:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->finish()V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->next:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->id:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V

    return-void
.end method

.method private add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V
    .locals 3
    .param p1, "c"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->compound:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .line 289
    .local v0, "existing":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;
    if-nez v0, :cond_1

    .line 290
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->compoundUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->compound:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .line 296
    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;->merge(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V

    goto :goto_0
.end method

.method private add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V
    .locals 2
    .param p1, "fin"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .prologue
    .line 235
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->finHead:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .line 237
    .local v0, "prev":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;
    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V

    .line 239
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->finUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    return-void
.end method

.method private allowDeallocate()V
    .locals 2

    .prologue
    .line 310
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->stateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->lazySet(Ljava/lang/Object;I)V

    .line 311
    return-void
.end method

.method private deallocated()Z
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 248
    sget-object v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->stateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->compound:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .line 253
    .local v0, "c":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;
    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;->deallocate()V

    .line 256
    sget-object v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->compoundUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->finHead:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .line 261
    .local v1, "fin":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;
    if-eqz v1, :cond_0

    .line 263
    sget-object v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->finUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    :cond_3
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V

    .line 268
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->access$1400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    move-result-object v1

    .line 270
    if-nez v1, :cond_3

    goto :goto_0
.end method

.method private next(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    .locals 0
    .param p1, "next"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 317
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->next:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .line 318
    return-void
.end method

.method private previous(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    .locals 4
    .param p1, "prev"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .prologue
    .line 303
    iget-wide v0, p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->id:J

    .line 304
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 322
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->next:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .line 324
    .local v6, "next0":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    const-string v2, "identity"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "next"

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v1, v8, v10

    if-gez v1, :cond_1

    const-string v5, "other..."

    goto :goto_0

    :cond_1
    move-object v5, v6

    goto :goto_0
.end method
