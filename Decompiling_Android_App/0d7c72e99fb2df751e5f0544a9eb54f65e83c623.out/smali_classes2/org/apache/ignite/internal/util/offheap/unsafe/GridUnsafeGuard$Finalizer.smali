.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;
.super Ljava/lang/Object;
.source "GridUnsafeGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Finalizer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final delegate:Ljava/lang/Runnable;

.field private prev:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Runnable;

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 345
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->delegate:Ljava/lang/Runnable;

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->previous(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .prologue
    .line 332
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->run()V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .prologue
    .line 332
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->previous()Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    move-result-object v0

    return-object v0
.end method

.method private previous()Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->prev:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    return-object v0
.end method

.method private previous(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V
    .locals 0
    .param p1, "prev"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .prologue
    .line 359
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->prev:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    .line 360
    return-void
.end method

.method private run()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;->delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 367
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
