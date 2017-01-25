.class public Lorg/apache/ignite/internal/util/lang/GridFunc;
.super Ljava/lang/Object;
.source "GridFunc.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALWAYS_FALSE:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALWAYS_TRUE:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATOMIC_BOOL_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATOMIC_INT_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATOMIC_LONG_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATOMIC_REF_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CACHE_ENTRY_HAS_PEEK_VAL:Lorg/apache/ignite/lang/IgnitePredicate;

.field private static final CACHE_ENTRY_KEY:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final CACHE_ENTRY_NO_PEEK_VAL:Lorg/apache/ignite/lang/IgnitePredicate;

.field private static final CACHE_ENTRY_VAL_GET:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final CLAZZ:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final CONCURRENT_MAP_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CONCURRENT_SET_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final DEQUE_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_COLLECTION:Lorg/apache/ignite/lang/IgnitePredicate;

.field public static final EMPTY_STRING:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID2ID8:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IDENTITY:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final IDENTITY_PRED:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_NOT_NULL:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_NULL:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINKED_LIST_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LIST_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAP_ENTRY_KEY:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final MAP_ENTRY_VAL:Lorg/apache/ignite/lang/IgniteClosure;

.field private static final MAP_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final NILL:Lorg/apache/ignite/lang/IgniteOutClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<*>;"
        }
    .end annotation
.end field

.field private static final NODE2ID:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static final NODE2ID8:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOOP:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

.field public static final NOT_EMPTY_COLLECTION:Lorg/apache/ignite/lang/IgnitePredicate;

.field public static final NOT_EMPTY_STRING:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final P2P:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PRINT:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<*>;"
        }
    .end annotation
.end field

.field private static final PRINTLN:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<*>;"
        }
    .end annotation
.end field

.field private static final R2C:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Runnable;",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final UNFINISHED_FUTURE:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    .line 61
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NOOP:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IDENTITY:Lorg/apache/ignite/lang/IgniteClosure;

    .line 77
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$3;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IDENTITY_PRED:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 84
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$4;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$4;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ALWAYS_TRUE:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 95
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$5;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$5;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ALWAYS_FALSE:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 106
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$6;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$6;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->DEQUE_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 117
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$7;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$7;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IS_NULL:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 124
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$8;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IS_NOT_NULL:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 131
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$9;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$9;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->EMPTY_STRING:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 138
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$10;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$10;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NOT_EMPTY_STRING:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 145
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$11;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$11;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->EMPTY_COLLECTION:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 152
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$12;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$12;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NOT_EMPTY_COLLECTION:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 159
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$13;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$13;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->LIST_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 170
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$14;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$14;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->LINKED_LIST_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 181
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$15;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$15;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->SET_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 192
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$16;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$16;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_INT_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 203
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$17;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$17;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_LONG_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 214
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$18;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$18;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_BOOL_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 225
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$19;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$19;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_REF_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 236
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$20;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$20;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->MAP_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 247
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$21;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$21;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CONCURRENT_MAP_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 258
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$22;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$22;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CONCURRENT_SET_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    .line 269
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$23;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$23;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->PRINTLN:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 280
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$24;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$24;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->PRINT:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 291
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$25;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$25;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NILL:Lorg/apache/ignite/lang/IgniteOutClosure;

    .line 302
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$26;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$26;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->R2C:Lorg/apache/ignite/lang/IgniteClosure;

    .line 313
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$27;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$27;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->P2P:Lorg/apache/ignite/lang/IgniteClosure;

    .line 325
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$28;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$28;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CLAZZ:Lorg/apache/ignite/lang/IgniteClosure;

    .line 336
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$29;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$29;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->MAP_ENTRY_KEY:Lorg/apache/ignite/lang/IgniteClosure;

    .line 347
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$30;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$30;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CACHE_ENTRY_KEY:Lorg/apache/ignite/lang/IgniteClosure;

    .line 358
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$31;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$31;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->MAP_ENTRY_VAL:Lorg/apache/ignite/lang/IgniteClosure;

    .line 369
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$32;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$32;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CACHE_ENTRY_VAL_GET:Lorg/apache/ignite/lang/IgniteClosure;

    .line 381
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$33;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$33;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CACHE_ENTRY_HAS_PEEK_VAL:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 393
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$34;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$34;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CACHE_ENTRY_NO_PEEK_VAL:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 405
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$35;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$35;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NODE2ID:Lorg/apache/ignite/lang/IgniteClosure;

    .line 416
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$36;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$36;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NODE2ID8:Lorg/apache/ignite/lang/IgniteClosure;

    .line 427
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$37;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$37;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ID2ID8:Lorg/apache/ignite/lang/IgniteClosure;

    .line 438
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$38;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$38;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->UNFINISHED_FUTURE:Lorg/apache/ignite/lang/IgnitePredicate;

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5545
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const-string v1, "map"

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5548
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5549
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5554
    .end local p2    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object p2

    .restart local p2    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 5556
    :catch_0
    move-exception v0

    .line 5557
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public static addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<-TK;TV;>;TK;",
            "Ljava/util/concurrent/Callable",
            "<+TV;>;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5513
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TV;>;"
    const-string v2, "map"

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5516
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5517
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 5519
    .local v1, "v":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5524
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v1

    .line 5517
    :cond_0
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 5524
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 5526
    :catch_0
    move-exception v0

    .line 5527
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v2

    throw v2
.end method

.method public static addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 5479
    .local p0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v1, "map"

    const-string v3, "key"

    const-string v5, "val"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5481
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 5483
    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_0

    .line 5484
    move-object p2, v6

    .line 5486
    :cond_0
    return-object p2
.end method

.method public static addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;TK;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 5446
    .local p0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    const-string v3, "map"

    const-string v4, "key"

    invoke-static {p0, v3, p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5448
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5450
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 5452
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5458
    invoke-interface {p0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5460
    .local v2, "v0":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    .line 5461
    move-object v1, v2

    .line 5464
    .end local v2    # "v0":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v1

    .line 5454
    :catch_0
    move-exception v0

    .line 5455
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v3

    throw v3
.end method

.method public static alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4355
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ALWAYS_FALSE:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4343
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ALWAYS_TRUE:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static and(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4665
    .local p0, "ps":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4666
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    .line 4686
    :goto_0
    return-object v4

    .line 4668
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 4670
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates(Ljava/lang/Iterable;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4671
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 4673
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgnitePredicate;

    .line 4674
    .local v3, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v3, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v3    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v2

    .line 4676
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4677
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4679
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4683
    .end local v2    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_3
    new-instance v4, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v4, v1}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto :goto_0

    .line 4686
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_4
    new-instance v4, Lorg/apache/ignite/internal/util/lang/GridFunc$107;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$107;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static varargs and([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 7
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4805
    .local p0, "ps":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4806
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    .line 4834
    :goto_0
    return-object v6

    .line 4808
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4809
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    goto :goto_0

    .line 4811
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4812
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    goto :goto_0

    .line 4814
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4815
    sget-boolean v6, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez p0, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 4817
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4819
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v5, v0, v1

    .line 4820
    .local v5, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v5, :cond_4

    .line 4821
    check-cast v5, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v5    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v4

    .line 4823
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4824
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4819
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4826
    .restart local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 4831
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_6
    new-instance v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v6, v2}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto :goto_0

    .line 4834
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v3    # "len$":I
    :cond_7
    new-instance v6, Lorg/apache/ignite/internal/util/lang/GridFunc$109;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$109;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto :goto_0
.end method

.method public static varargs and([Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 10
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "p1":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    .local p1, "p2":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4715
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4716
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    .line 4764
    :goto_0
    return-object v7

    .line 4718
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4719
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    goto :goto_0

    .line 4721
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    .line 4722
    .local v1, "e1":Z
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    .line 4724
    .local v2, "e2":Z
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 4725
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    goto :goto_0

    .line 4727
    :cond_3
    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    .line 4728
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    if-nez p1, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4730
    :cond_4
    array-length v7, p1

    if-ne v7, v9, :cond_5

    .line 4731
    aget-object v7, p1, v8

    goto :goto_0

    .line 4734
    :cond_5
    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 4735
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_6

    if-nez p0, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4737
    :cond_6
    array-length v7, p0

    if-ne v7, v9, :cond_7

    .line 4738
    aget-object v7, p0, v8

    goto :goto_0

    .line 4741
    :cond_7
    if-nez v1, :cond_8

    invoke-static {p0}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_8
    if-nez v2, :cond_9

    invoke-static {p1}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4742
    :cond_9
    new-instance v4, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 4744
    .local v4, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-nez v1, :cond_b

    .line 4745
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_a

    if-nez p0, :cond_a

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4747
    :cond_a
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_b

    aget-object v6, v0, v3

    .line 4748
    .local v6, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4747
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4752
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_b
    if-nez v2, :cond_d

    .line 4753
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_c

    if-nez p1, :cond_c

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4755
    :cond_c
    move-object v0, p1

    .restart local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v5, :cond_d

    aget-object v6, v0, v3

    .line 4756
    .restart local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4755
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4761
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_d
    new-instance v7, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v7, v4}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 4764
    .end local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_e
    new-instance v7, Lorg/apache/ignite/internal/util/lang/GridFunc$108;

    invoke-direct {v7, v1, p0, v2, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$108;-><init>(Z[Lorg/apache/ignite/lang/IgnitePredicate;Z[Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto/16 :goto_0
.end method

.method public static as(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3141
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$90;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$90;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static as(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;"
        }
    .end annotation

    .prologue
    .line 5175
    .local p0, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5177
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$119;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$119;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static as(Lorg/apache/ignite/internal/util/lang/GridPredicate3;)Lorg/apache/ignite/internal/util/lang/GridClosure3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/lang/GridPredicate3",
            "<-TX1;-TX2;-TX3;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridClosure3",
            "<TX1;TX2;TX3;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5300
    .local p0, "p":Lorg/apache/ignite/internal/util/lang/GridPredicate3;, "Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TX1;-TX2;-TX3;>;"
    const-string v0, "p"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5302
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$126;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$126;-><init>(Lorg/apache/ignite/internal/util/lang/GridPredicate3;)V

    return-object v0
.end method

.method public static as(Ljava/util/Iterator;)Lorg/apache/ignite/internal/util/lang/GridIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2836
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const-string v0, "iter"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2838
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static as(Lorg/apache/ignite/internal/util/lang/GridClosure3;)Lorg/apache/ignite/internal/util/lang/GridPredicate3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/lang/GridClosure3",
            "<-TT1;-TT2;-TT3;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/internal/util/lang/GridPredicate3",
            "<TT1;TT2;TT3;>;"
        }
    .end annotation

    .prologue
    .line 5229
    .local p0, "c":Lorg/apache/ignite/internal/util/lang/GridClosure3;, "Lorg/apache/ignite/internal/util/lang/GridClosure3<-TT1;-TT2;-TT3;Ljava/lang/Boolean;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5231
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$122;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$122;-><init>(Lorg/apache/ignite/internal/util/lang/GridClosure3;)V

    return-object v0
.end method

.method public static as(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/lang/IgniteBiClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TX1;-TX2;>;)",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TX1;TX2;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5280
    .local p0, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TX1;-TX2;>;"
    const-string v0, "p"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5282
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$125;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$125;-><init>(Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    return-object v0
.end method

.method public static as(Lorg/apache/ignite/lang/IgniteBiClosure;)Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<-TT1;-TT2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TT1;TT2;>;"
        }
    .end annotation

    .prologue
    .line 5212
    .local p0, "c":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<-TT1;-TT2;Ljava/lang/Boolean;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5214
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$121;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$121;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;)V

    return-object v0
.end method

.method public static as(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TX;>;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TX;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5262
    .local p0, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TX;>;"
    const-string v0, "p"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5264
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$124;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$124;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;)V

    return-object v0
.end method

.method public static as(Ljava/util/concurrent/Future;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;)",
            "Lorg/apache/ignite/lang/IgniteOutClosure;"
        }
    .end annotation

    .prologue
    .line 2658
    .local p0, "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const-string v0, "fut"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2660
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$77;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$77;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static as(Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .param p0, "p"    # Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;",
            ")",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5245
    const-string v0, "p"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5247
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$123;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$123;-><init>(Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;)V

    return-object v0
.end method

.method public static as(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5196
    .local p0, "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;Ljava/lang/Boolean;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5198
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$120;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$120;-><init>(Lorg/apache/ignite/lang/IgniteClosure;)V

    return-object v0
.end method

.method public static as0(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3179
    .local p0, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3181
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$92;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$92;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static as0(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TE1;-TE2;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TE1;TE2;>;>;"
        }
    .end annotation

    .prologue
    .line 2682
    .local p0, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TE1;-TE2;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$78;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$78;-><init>(Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    return-object v0
.end method

.method public static varargs asArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 7094
    .local p0, "t":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static asList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7105
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2855
    .local p0, "vals":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 6981
    .local p0, "k":Ljava/lang/Object;, "TK;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 6983
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6985
    return-object v0
.end method

.method public static asMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 7000
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 7002
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7003
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7005
    return-object v0
.end method

.method public static asMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 7022
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 7024
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7025
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7026
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7028
    return-object v0
.end method

.method public static asMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 7047
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 7049
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7050
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7051
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7052
    invoke-interface {v0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7054
    return-object v0
.end method

.method public static asMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 7075
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 7077
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7078
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7079
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7080
    invoke-interface {v0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7081
    invoke-interface {v0, p8, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7083
    return-object v0
.end method

.method public static asSet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7116
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs asSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7128
    .local p0, "t":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 7129
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 7134
    :goto_0
    return-object v0

    .line 7131
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7132
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 7134
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static avg(Ljava/lang/Iterable;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    const-string v5, "c"

    invoke-static {p0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    const-wide/16 v2, 0x0

    .line 919
    .local v2, "sum":D
    const/4 v0, 0x0

    .line 921
    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 922
    .local v4, "t":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 925
    goto :goto_0

    .line 927
    .end local v4    # "t":Ljava/lang/Number;
    :cond_0
    int-to-double v6, v0

    div-double v6, v2, v6

    return-wide v6
.end method

.method public static avgReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$48;-><init>()V

    return-object v0
.end method

.method public static awaitAll(JLorg/apache/ignite/lang/IgniteReducer;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 12
    .param p0, "timeout"    # J
    .param p2    # Lorg/apache/ignite/lang/IgniteReducer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p2, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TT;TR;>;"
    .local p3, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    .line 7885
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7918
    :cond_0
    :goto_0
    return-object v7

    .line 7888
    :cond_1
    cmp-long v8, p0, v10

    if-nez v8, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    .line 7891
    .local v0, "end":J
    :goto_1
    cmp-long v8, v0, v10

    if-gez v8, :cond_2

    .line 7892
    const-wide v0, 0x7fffffffffffffffL

    .line 7897
    :cond_2
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 7900
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    cmp-long v8, p0, v10

    if-lez v8, :cond_7

    .line 7901
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v0, v8

    .line 7903
    .local v4, "left":J
    cmp-long v8, v4, v10

    if-gtz v8, :cond_5

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v8

    if-nez v8, :cond_5

    .line 7904
    new-instance v7, Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timed out waiting for all futures: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 7888
    .end local v0    # "end":J
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "left":J
    :cond_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    add-long v0, v8, p0

    goto :goto_1

    .line 7906
    .restart local v0    # "end":J
    .restart local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "left":J
    :cond_5
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_6

    cmp-long v8, v4, v10

    if-gez v8, :cond_6

    .line 7907
    const-wide/16 v4, 0x0

    .line 7909
    :cond_6
    invoke-interface {v2, v4, v5}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;

    move-result-object v6

    .line 7914
    .end local v4    # "left":J
    .local v6, "t":Ljava/lang/Object;, "TT;"
    :goto_3
    if-eqz p2, :cond_3

    .line 7915
    invoke-interface {p2, v6}, Lorg/apache/ignite/lang/IgniteReducer;->collect(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7912
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_3

    .line 7918
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    :cond_8
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v7

    goto :goto_0
.end method

.method public static awaitAll(JLjava/util/Collection;)V
    .locals 2
    .param p0, "timeout"    # J
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 7869
    .local p2, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->awaitAll(JLorg/apache/ignite/lang/IgniteReducer;Ljava/util/Collection;)Ljava/lang/Object;

    .line 7870
    return-void
.end method

.method public static awaitAll(Ljava/util/Collection;)V
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 7858
    .local p0, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->awaitAll(JLorg/apache/ignite/lang/IgniteReducer;Ljava/util/Collection;)Ljava/lang/Object;

    .line 7859
    return-void
.end method

.method public static varargs awaitAll([Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .param p0    # [Lorg/apache/ignite/internal/IgniteInternalFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 7847
    .local p0, "futs":[Lorg/apache/ignite/internal/IgniteInternalFuture;, "[Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7848
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->awaitAll(Ljava/util/Collection;)V

    .line 7849
    :cond_0
    return-void
.end method

.method public static awaitOne(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7941
    .local p0, "futs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7942
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 7991
    :cond_0
    :goto_0
    return-object v2

    .line 7944
    :cond_1
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7946
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7948
    .local v7, "t":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    const/4 v0, 0x0

    .line 7950
    .local v0, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 7951
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    if-eqz v2, :cond_2

    .line 7952
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v8

    if-nez v8, :cond_0

    .line 7953
    if-nez v0, :cond_3

    .line 7954
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$142;

    .end local v0    # "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    invoke-direct {v0, v7, v6}, Lorg/apache/ignite/internal/util/lang/GridFunc$142;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 7962
    .restart local v0    # "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    :cond_3
    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1

    .line 7970
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :cond_4
    if-nez v0, :cond_5

    .line 7971
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto :goto_0

    .line 7973
    :cond_5
    const/4 v5, 0x0

    .line 7975
    .local v5, "interrupted":Z
    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 7977
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7979
    :catch_0
    move-exception v4

    .line 7980
    .local v4, "ignored":Ljava/lang/InterruptedException;
    const/4 v5, 0x1

    .line 7981
    goto :goto_2

    .line 7984
    .end local v4    # "ignored":Ljava/lang/InterruptedException;
    :cond_6
    if-eqz v5, :cond_7

    .line 7985
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 7987
    :cond_7
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 7989
    .local v1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    sget-boolean v8, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v8, :cond_8

    if-nez v1, :cond_8

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_8
    move-object v2, v1

    .line 7991
    goto :goto_0
.end method

.method public static varargs awaitOne([Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7930
    .local p0, "futs":[Lorg/apache/ignite/internal/IgniteInternalFuture;, "[Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->awaitOne(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public static breaker(Z)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "firstVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$39;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$39;-><init>(Z)V

    return-object v0
.end method

.method public static c2c()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3164
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$91;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$91;-><init>()V

    return-object v0
.end method

.method public static varargs cInvoke(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p0, "mtdName"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 536
    const-string v0, "mtdName"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$42;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$42;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs caInvoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 2
    .param p1, "mtdName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    const-string v1, "mtdName"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$47;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$47;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs caInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "mtdName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 646
    const-string v0, "o"

    const-string v1, "mtdName"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$45;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$45;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static cacheEntry2Get()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 7729
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CACHE_ENTRY_VAL_GET:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static cacheEntry2Key()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;TK;>;"
        }
    .end annotation

    .prologue
    .line 7704
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CACHE_ENTRY_KEY:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static cacheHasKeys(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 7744
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$139;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$139;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static cacheHasPeekValue()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 7761
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CACHE_ENTRY_HAS_PEEK_VAL:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static varargs ciInvoke(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .param p0, "mtdName"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 573
    const-string v0, "mtdName"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$43;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static clazz()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 806
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CLAZZ:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static varargs coInvoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 2
    .param p1, "mtdName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    const-string v1, "mtdName"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$46;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$46;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs coInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "mtdName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 610
    const-string v0, "o"

    const-string v1, "mtdName"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$44;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static compose(Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TD;+TB;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TB;TC;>;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TD;TC;>;"
        }
    .end annotation

    .prologue
    .line 5324
    .local p0, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TD;+TB;>;"
    .local p1, "g":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TB;TC;>;"
    const-string v0, "f"

    const-string v1, "g"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5326
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$127;

    invoke-direct {v0, p1, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$127;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteClosure;)V

    return-object v0
.end method

.method public static compose(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TY;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TX;+TY;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 5051
    .local p0, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TY;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TX;+TY;>;"
    const-string v0, "p"

    const-string v1, "f"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5053
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$113;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$113;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)V

    goto :goto_0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1442
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->concatReducer(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->reduce(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteReducer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static concat(ZLjava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p0, "cp"    # Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1752
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_2

    .line 1753
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1754
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1756
    .local v0, "l":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1776
    .end local v0    # "l":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :goto_0
    return-object v0

    .line 1761
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1763
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1765
    .local v1, "ret":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1766
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 1768
    goto :goto_0

    .line 1771
    .end local v1    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_2
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1772
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1774
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1776
    :cond_4
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$66;

    invoke-direct {v0, p2, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$66;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p0, "cp"    # Z
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1828
    .local p1, "c1":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "c2":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_6

    .line 1829
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1830
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1861
    :cond_0
    :goto_0
    return-object v0

    .line 1832
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1835
    :cond_2
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1838
    :cond_3
    sget-boolean v1, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1840
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1842
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1843
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1848
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_6
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1849
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1851
    :cond_7
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1852
    :cond_8
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, p2

    .line 1854
    .restart local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :goto_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_9
    move-object v0, p1

    .line 1852
    goto :goto_1

    .line 1859
    :cond_a
    sget-boolean v1, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-eqz p1, :cond_b

    if-nez p2, :cond_c

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1861
    :cond_c
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$67;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method public static concat(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Iterator",
            "<TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1946
    .local p0, "iters":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Iterator<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1949
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$68;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$68;-><init>(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public static varargs concat([Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1932
    .local p0, "iters":[Ljava/util/Iterator;, "[Ljava/util/Iterator<TT;>;"
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1933
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 1935
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1913
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    .local p1, "obj":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 1914
    :cond_0
    move-object v0, p1

    .line 1921
    .local v0, "newArr":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object v0

    .line 1916
    .end local v0    # "newArr":[Ljava/lang/Object;, "[TT;"
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1918
    .restart local v0    # "newArr":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static concatReducer(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .param p0, "delim"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1406
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$60;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static constant(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5119
    .local p0, "val":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$117;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$117;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static constant1(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT1;TR;>;"
        }
    .end annotation

    .prologue
    .line 5069
    .local p0, "val":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$114;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$114;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static constant2(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiClosure;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TT1;TT2;TR;>;"
        }
    .end annotation

    .prologue
    .line 5086
    .local p0, "val":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$115;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$115;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static constant3(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridClosure3;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lorg/apache/ignite/internal/util/lang/GridClosure3",
            "<TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    .prologue
    .line 5104
    .local p0, "val":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$116;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$116;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static contains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7161
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$134;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$134;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 7148
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "arr"    # [I
    .param p1, "val"    # I

    .prologue
    .line 7192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 7193
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 7194
    const/4 v1, 0x1

    .line 7197
    :goto_1
    return v1

    .line 7192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7197
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([JJ)Z
    .locals 5
    .param p0, "arr"    # [J
    .param p1, "val"    # J

    .prologue
    .line 7207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 7208
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 7209
    const/4 v1, 0x1

    .line 7212
    :goto_1
    return v1

    .line 7207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7212
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "arr"    # [Ljava/lang/Integer;
    .param p1, "val"    # Ljava/lang/Integer;

    .prologue
    .line 7222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 7223
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7224
    const/4 v1, 0x1

    .line 7227
    :goto_1
    return v1

    .line 7222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7227
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static containsAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "c2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v2, 0x0

    .line 6296
    if-nez p0, :cond_0

    .line 6304
    :goto_0
    return v2

    .line 6299
    :cond_0
    if-eqz p1, :cond_2

    .line 6300
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6301
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6304
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 6259
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "c2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6260
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6261
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6262
    const/4 v2, 0x1

    .line 6264
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;[TT;)Z"
        }
    .end annotation

    .prologue
    .line 6277
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "c2":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    array-length v4, p1

    if-lez v4, :cond_1

    .line 6278
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6279
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6280
    const/4 v4, 0x1

    .line 6282
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :goto_1
    return v4

    .line 6278
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6282
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static continuousReducer(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p0, "elem":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$52;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$52;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs copy(Ljava/util/Collection;Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 4
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5699
    .local p0, "to":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "from":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const-string v2, "to"

    const-string v3, "from"

    invoke-static {p0, v2, p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5701
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5702
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5703
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {v1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5704
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5708
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object p0
.end method

.method public static varargs copy(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;[TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5680
    .local p0, "to":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "from":[Ljava/lang/Object;, "[TT;"
    const-string v0, "to"

    const-string v1, "from"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5682
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->copy(Ljava/util/Collection;Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    .line 5684
    return-object p0
.end method

.method public static curry(ILorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteOutClosure;)Ljava/util/Collection;
    .locals 4
    .param p0, "cnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 7631
    .local p1, "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    .local p2, "pdc":Lorg/apache/ignite/lang/IgniteOutClosure;, "Lorg/apache/ignite/lang/IgniteOutClosure<TT;>;"
    const-string v2, "c"

    const-string v3, "pdc"

    invoke-static {p1, v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7632
    if-lez p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "cnt > 0"

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 7634
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7636
    .local v1, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_1

    .line 7637
    invoke-interface {p2}, Lorg/apache/ignite/lang/IgniteOutClosure;->apply()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7636
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7632
    .end local v0    # "i":I
    .end local v1    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 7639
    .restart local v0    # "i":I
    .restart local v1    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;>;"
    :cond_1
    return-object v1
.end method

.method public static curry(ILorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/lang/IgniteOutClosure;)Ljava/util/Collection;
    .locals 4
    .param p0, "cnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TT;>;",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7672
    .local p1, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;"
    .local p2, "pdc":Lorg/apache/ignite/lang/IgniteOutClosure;, "Lorg/apache/ignite/lang/IgniteOutClosure<TT;>;"
    const-string v2, "c"

    const-string v3, "pdc"

    invoke-static {p1, v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7673
    if-lez p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "cnt > 0"

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 7675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7677
    .local v1, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridAbsClosure;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_1

    .line 7678
    invoke-interface {p2}, Lorg/apache/ignite/lang/IgniteOutClosure;->apply()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7677
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7673
    .end local v0    # "i":I
    .end local v1    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridAbsClosure;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 7680
    .restart local v0    # "i":I
    .restart local v1    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridAbsClosure;>;"
    :cond_1
    return-object v1
.end method

.method public static curry(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;>;TT;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 7538
    .local p0, "iter":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;>;"
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    const-string v0, "iter"

    const-string v1, "arg"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7540
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$138;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$138;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static curry(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;>;",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 7558
    .local p0, "closures":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;>;"
    .local p1, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v4, "in"

    const-string v5, "args"

    invoke-static {p0, v4, p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7559
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "closures.size() == args.size()"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 7561
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7563
    .local v3, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7565
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteClosure;

    .line 7566
    .local v0, "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7559
    .end local v0    # "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .end local v3    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 7569
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .restart local v3    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;>;"
    :cond_1
    return-object v3
.end method

.method public static curry(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 7608
    .local p0, "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    .local p1, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v3, "c"

    const-string v4, "args"

    invoke-static {p0, v3, p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7610
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7612
    .local v2, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7613
    .local v0, "arg":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7616
    .end local v0    # "arg":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v2
.end method

.method public static curry(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TT;>;",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7651
    .local p0, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;"
    .local p1, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v3, "c"

    const-string v4, "args"

    invoke-static {p0, v3, p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7653
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7655
    .local v2, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridAbsClosure;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7656
    .local v0, "arg":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7659
    .end local v0    # "arg":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v2
.end method

.method public static curry(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TT;>;TT;)",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;"
        }
    .end annotation

    .prologue
    .line 2749
    .local p0, "f":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$82;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$82;-><init>(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static curry(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;TT;)",
            "Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;"
        }
    .end annotation

    .prologue
    .line 2733
    .local p0, "f":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$81;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$81;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static curry(Lorg/apache/ignite/lang/IgniteBiClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<-TT1;-TT2;TR;>;TT1;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT2;TR;>;"
        }
    .end annotation

    .prologue
    .line 2717
    .local p0, "f":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<-TT1;-TT2;TR;>;"
    .local p1, "e":Ljava/lang/Object;, "TT1;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$80;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$80;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static curry(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;TT;)",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2699
    .local p0, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$79;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$79;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static curry0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TT;>;>;",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7583
    .local p0, "in":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;>;"
    .local p1, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v4, "in"

    const-string v5, "args"

    invoke-static {p0, v4, p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7584
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "in.size() == args.size()"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 7586
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7588
    .local v3, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridAbsClosure;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7590
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteInClosure;

    .line 7591
    .local v0, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/lang/GridFunc;->curry(Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7584
    .end local v0    # "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .end local v3    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridAbsClosure;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 7594
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .restart local v3    # "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridAbsClosure;>;"
    :cond_1
    return-object v3
.end method

.method public static dedup(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v1, "c"

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 821
    .local v0, "set":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 823
    return-object v0
.end method

.method public static varargs drop(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Iterable;
    .locals 2
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2316
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const-string v1, "c"

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2318
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2325
    :cond_0
    return-object p0

    .line 2321
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2323
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2865
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyIterator;-><init>()V

    return-object v0
.end method

.method public static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "o1"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "o2"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7274
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static eqArray([Ljava/lang/Object;[Ljava/lang/Object;ZZ)Z
    .locals 11
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;
    .param p2, "sorted"    # Z
    .param p3, "dups"    # Z

    .prologue
    .line 7450
    if-ne p0, p1, :cond_0

    .line 7451
    const/4 v9, 0x1

    .line 7502
    :goto_0
    return v9

    .line 7453
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v9, p0

    array-length v10, p1

    if-eq v9, v10, :cond_2

    .line 7454
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 7457
    :cond_2
    array-length v9, p0

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 7458
    const/4 v9, 0x0

    aget-object v9, p0, v9

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 7460
    :cond_3
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_9

    aget-object v7, v0, v4

    .line 7461
    .local v7, "o1":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 7463
    .local v2, "found":Z
    if-eqz p2, :cond_6

    .line 7464
    invoke-static {p1, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_5

    const/4 v2, 0x1

    .line 7475
    .end local v4    # "i$":I
    :cond_4
    :goto_2
    if-nez v2, :cond_8

    .line 7476
    const/4 v9, 0x0

    goto :goto_0

    .line 7464
    .restart local v4    # "i$":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 7466
    :cond_6
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v6, :cond_4

    aget-object v8, v1, v3

    .line 7467
    .local v8, "o2":Ljava/lang/Object;
    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 7468
    const/4 v2, 0x1

    .line 7470
    goto :goto_2

    .line 7466
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 7460
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "o2":Ljava/lang/Object;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 7481
    .end local v2    # "found":Z
    .end local v7    # "o1":Ljava/lang/Object;
    :cond_9
    if-eqz p3, :cond_f

    .line 7482
    move-object v0, p1

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v5, :cond_f

    aget-object v8, v0, v4

    .line 7483
    .restart local v8    # "o2":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 7485
    .restart local v2    # "found":Z
    if-eqz p2, :cond_c

    .line 7486
    invoke-static {p0, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_b

    const/4 v2, 0x1

    .line 7497
    .end local v4    # "i$":I
    :cond_a
    :goto_5
    if-nez v2, :cond_e

    .line 7498
    const/4 v9, 0x0

    goto :goto_0

    .line 7486
    .restart local v4    # "i$":I
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 7488
    :cond_c
    move-object v1, p0

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v6, :cond_a

    aget-object v7, v1, v3

    .line 7489
    .restart local v7    # "o1":Ljava/lang/Object;
    invoke-static {v8, v7}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 7490
    const/4 v2, 0x1

    .line 7492
    goto :goto_5

    .line 7488
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 7482
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "o1":Ljava/lang/Object;
    :cond_e
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_4

    .end local v2    # "found":Z
    .end local v8    # "o2":Ljava/lang/Object;
    :cond_f
    move v3, v4

    .line 7502
    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static eqNodes(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "n1"    # Ljava/lang/Object;
    .param p1, "n2"    # Ljava/lang/Object;

    .prologue
    .line 7523
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p0, Lorg/apache/ignite/cluster/ClusterNode;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/apache/ignite/cluster/ClusterNode;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p0    # "n1":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "n2":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eqNotOrdered(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 13
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 7317
    if-ne p0, p1, :cond_1

    .line 7387
    :cond_0
    :goto_0
    return v9

    .line 7320
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v9, v10

    .line 7321
    goto :goto_0

    .line 7323
    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v12

    if-eq v11, v12, :cond_4

    move v9, v10

    .line 7324
    goto :goto_0

    .line 7329
    :cond_4
    instance-of v11, p0, Ljava/util/RandomAccess;

    if-nez v11, :cond_5

    instance-of v11, p1, Ljava/util/RandomAccess;

    if-eqz v11, :cond_a

    .line 7333
    :cond_5
    instance-of v11, p0, Ljava/util/RandomAccess;

    if-eqz v11, :cond_8

    .line 7334
    move-object v0, p1

    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, p0

    .line 7335
    check-cast v4, Ljava/util/List;

    .line 7342
    .local v4, "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_1
    const/4 v7, 0x0

    .line 7345
    .local v7, "p":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v8

    .line 7347
    .local v8, "size":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 7348
    .local v6, "o1":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 7350
    .local v1, "found":Z
    move v2, v7

    .local v2, "i":I
    :goto_2
    if-ge v2, v8, :cond_7

    .line 7351
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v6}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 7352
    const/4 v1, 0x1

    .line 7354
    if-ne v2, v7, :cond_7

    .line 7355
    add-int/lit8 v7, v7, 0x1

    .line 7361
    :cond_7
    if-nez v1, :cond_6

    move v9, v10

    .line 7362
    goto :goto_0

    .line 7338
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "o1":Ljava/lang/Object;
    .end local v7    # "p":I
    .end local v8    # "size":I
    :cond_8
    move-object v0, p0

    .restart local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, p1

    .line 7339
    check-cast v4, Ljava/util/List;

    .restart local v4    # "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_1

    .line 7350
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "o1":Ljava/lang/Object;
    .restart local v7    # "p":I
    .restart local v8    # "size":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7365
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "o1":Ljava/lang/Object;
    .end local v7    # "p":I
    .end local v8    # "size":I
    :cond_a
    instance-of v11, p0, Ljava/util/Set;

    if-eqz v11, :cond_c

    instance-of v11, p1, Ljava/util/Set;

    if-eqz v11, :cond_c

    .line 7368
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7369
    .local v5, "o":Ljava/lang/Object;
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    move v9, v10

    .line 7370
    goto :goto_0

    .line 7377
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7378
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    move v9, v10

    .line 7379
    goto/16 :goto_0

    .line 7381
    .end local v5    # "o":Ljava/lang/Object;
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7382
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    move v9, v10

    .line 7383
    goto/16 :goto_0
.end method

.method public static eqNotOrdered(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "m1":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "m2":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 7399
    if-ne p0, p1, :cond_1

    .line 7434
    :cond_0
    :goto_0
    return v4

    .line 7402
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v4, v5

    .line 7403
    goto :goto_0

    .line 7405
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    move v4, v5

    .line 7406
    goto :goto_0

    .line 7408
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7409
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 7410
    .local v2, "v1":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7412
    .local v3, "v2":Ljava/lang/Object;, "TV;"
    if-eq v2, v3, :cond_0

    .line 7415
    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    :cond_6
    move v4, v5

    .line 7416
    goto :goto_0

    .line 7418
    :cond_7
    instance-of v6, v2, Ljava/util/Collection;

    if-eqz v6, :cond_8

    instance-of v6, v3, Ljava/util/Collection;

    if-eqz v6, :cond_8

    .line 7419
    check-cast v2, Ljava/util/Collection;

    .end local v2    # "v1":Ljava/lang/Object;, "TV;"
    check-cast v3, Ljava/util/Collection;

    .end local v3    # "v2":Ljava/lang/Object;, "TV;"
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eqNotOrdered(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 7420
    goto :goto_0

    .line 7423
    .restart local v2    # "v1":Ljava/lang/Object;, "TV;"
    .restart local v3    # "v2":Ljava/lang/Object;, "TV;"
    :cond_8
    instance-of v6, v2, Ljava/util/Map;

    if-eqz v6, :cond_9

    instance-of v6, v3, Ljava/util/Map;

    if-eqz v6, :cond_9

    .line 7424
    check-cast v2, Ljava/util/Map;

    .end local v2    # "v1":Ljava/lang/Object;, "TV;"
    check-cast v3, Ljava/util/Map;

    .end local v3    # "v2":Ljava/lang/Object;, "TV;"
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eqNotOrdered(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 7425
    goto :goto_0

    .line 7428
    .restart local v2    # "v1":Ljava/lang/Object;, "TV;"
    .restart local v3    # "v2":Ljava/lang/Object;, "TV;"
    :cond_9
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 7429
    goto :goto_0
.end method

.method public static eqOrdered(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7285
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 7301
    :cond_0
    :goto_0
    return v3

    .line 7288
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 7291
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 7294
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7295
    .local v0, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7297
    .local v1, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 7301
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-ne v4, v5, :cond_4

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4489
    .local p0, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$103;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$103;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs eventNode(Ljava/lang/String;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7776
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$140;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$140;-><init>(Ljava/lang/String;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto :goto_0
.end method

.method public static eventNode(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7802
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$141;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$141;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static varargs exist(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 6459
    const-string v4, "c"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6461
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6472
    :cond_0
    :goto_0
    return v2

    .line 6463
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 6464
    goto :goto_0

    .line 6465
    :cond_2
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 6466
    goto :goto_0

    .line 6468
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6469
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 6470
    goto :goto_0
.end method

.method public static varargs exist(Ljava/util/Map;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "K:TK1;V1:",
            "Ljava/lang/Object;",
            "V:TV1;>(",
            "Ljava/util/Map",
            "<TK;TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 6548
    const-string v4, "m"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6550
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6561
    :cond_0
    :goto_0
    return v2

    .line 6552
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 6553
    goto :goto_0

    .line 6554
    :cond_2
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 6555
    goto :goto_0

    .line 6557
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6558
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 6559
    goto :goto_0
.end method

.method public static varargs exist([Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 1
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 6486
    .local p0, "c":[Ljava/lang/Object;, "[TV;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6488
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->exist(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    return v0
.end method

.method public static factory(Ljava/lang/Class;)Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5134
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5136
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$118;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$118;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs filterList(Ljava/util/List;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;
    .locals 5
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2247
    .local p0, "c":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    const-string v4, "c"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2251
    if-nez p1, :cond_1

    .line 2252
    move-object v2, p0

    .line 2254
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_3

    .line 2255
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAny(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2257
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2260
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v2    # "res":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2262
    .restart local v2    # "res":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2263
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-static {v3, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAny(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2264
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2267
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    return-object v2
.end method

.method public static varargs find(Ljava/lang/Iterable;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TV;>;TY;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TV;TY;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)TY;"
        }
    .end annotation

    .prologue
    .line 6214
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p1, "dfltVal":Ljava/lang/Object;, "TY;"
    .local p2, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TV;TY;>;"
    .local p3, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v2, "c"

    const-string v3, "f"

    invoke-static {p0, v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6216
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6217
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6226
    .end local p1    # "dfltVal":Ljava/lang/Object;, "TY;"
    :cond_0
    :goto_0
    return-object p1

    .line 6219
    .restart local p1    # "dfltVal":Ljava/lang/Object;, "TY;"
    :cond_1
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6220
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6221
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAny(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6222
    invoke-interface {p2, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public static varargs find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TV;>;TV;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6171
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p1, "dfltVal":Ljava/lang/Object;, "TV;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v2, "c"

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6173
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6174
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6175
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAny(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6180
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public static varargs find([Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">([TV;TY;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TV;TY;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)TY;"
        }
    .end annotation

    .prologue
    .line 6244
    .local p0, "c":[Ljava/lang/Object;, "[TV;"
    .local p1, "dfltVal":Ljava/lang/Object;, "TY;"
    .local p2, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TV;TY;>;"
    .local p3, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v0, "c"

    const-string v1, "f"

    invoke-static {p0, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6246
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->find(Ljava/lang/Iterable;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs find([Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6195
    .local p0, "c":[Ljava/lang/Object;, "[TV;"
    .local p1, "dfltVal":Ljava/lang/Object;, "TV;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6197
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static first(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v1, 0x0

    .line 4558
    if-nez p0, :cond_1

    .line 4563
    :cond_0
    :goto_0
    return-object v1

    .line 4561
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4563
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static first(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 4573
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4574
    const/4 v0, 0x0

    .line 4576
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static firstEntry(Ljava/util/Map;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4646
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4648
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static firstKey(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;*>;)TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4632
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;*>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4634
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static firstValue(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4619
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4621
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static flat(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<TT;>;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2913
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<TT;>;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$86;-><init>(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public static varargs flat0([Ljava/lang/Object;)Ljava/util/Collection;
    .locals 8
    .param p0, "objs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3031
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3050
    :cond_0
    return-object v1

    .line 3034
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-nez p0, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 3036
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3038
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 3039
    .local v6, "obj":Ljava/lang/Object;
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_4

    .line 3040
    check-cast v6, Ljava/util/Collection;

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-interface {v1, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 3038
    .end local v3    # "i$":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 3041
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v7, v6, Ljava/lang/Iterable;

    if-eqz v7, :cond_5

    .line 3042
    check-cast v6, Ljava/lang/Iterable;

    .end local v6    # "obj":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3043
    .local v5, "o":Ljava/lang/Object;
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3044
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Ljava/lang/Object;
    .restart local v3    # "i$":I
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v7, v6, [Ljava/lang/Object;

    if-eqz v7, :cond_6

    .line 3045
    check-cast v6, [Ljava/lang/Object;

    .end local v6    # "obj":Ljava/lang/Object;
    check-cast v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3046
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3048
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Ljava/lang/Object;
    .restart local v3    # "i$":I
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_6
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static flatCollections(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Collection",
            "<TT;>;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2884
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Collection<TT;>;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2887
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$85;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$85;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static flatIterators(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Iterator",
            "<TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2972
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Iterator<TT;>;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$87;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$87;-><init>(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public static varargs fold(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgniteBiClosure;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgniteBiClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TD;>;TB;[",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<-TD;-TB;TB;>;)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6704
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TD;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "fs":[Lorg/apache/ignite/lang/IgniteBiClosure;, "[Lorg/apache/ignite/lang/IgniteBiClosure<-TD;-TB;TB;>;"
    const-string v6, "c"

    invoke-static {p0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6706
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 6707
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6708
    .local v1, "e":Ljava/lang/Object;, "TD;"
    sget-boolean v6, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 6710
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgniteBiClosure;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 6711
    .local v2, "f":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<-TD;-TB;TB;>;"
    invoke-interface {v2, v1, p1}, Lorg/apache/ignite/lang/IgniteBiClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6710
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6714
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgniteBiClosure;
    .end local v1    # "e":Ljava/lang/Object;, "TD;"
    .end local v2    # "f":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<-TD;-TB;TB;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-object p1
.end method

.method public static varargs fold([Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgniteBiClosure;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgniteBiClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">([TD;TB;[",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<-TD;-TB;TB;>;)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6733
    .local p0, "c":[Ljava/lang/Object;, "[TD;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "fs":[Lorg/apache/ignite/lang/IgniteBiClosure;, "[Lorg/apache/ignite/lang/IgniteBiClosure<-TD;-TB;TB;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6735
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->fold(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgniteBiClosure;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forAll(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6503
    const-string v4, "c"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6505
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6516
    :goto_0
    return v2

    .line 6507
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 6508
    goto :goto_0

    .line 6509
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6510
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6511
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    move v2, v3

    .line 6516
    goto :goto_0
.end method

.method public static varargs forAll(Ljava/util/Map;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "K:TK1;V1:",
            "Ljava/lang/Object;",
            "V:TV1;>(",
            "Ljava/util/Map",
            "<TK;TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6577
    const-string v4, "m"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6579
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6588
    :goto_0
    return v2

    .line 6581
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 6582
    goto :goto_0

    .line 6583
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6584
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6585
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    move v2, v3

    .line 6588
    goto :goto_0
.end method

.method public static varargs forAll([Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 1
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 6530
    .local p0, "c":[Ljava/lang/Object;, "[TV;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6532
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->forAll(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    return v0
.end method

.method public static varargs forAny(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6604
    const-string v4, "c"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6606
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6619
    :cond_0
    :goto_0
    return v2

    .line 6608
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 6609
    goto :goto_0

    .line 6610
    :cond_2
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6612
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 6613
    goto :goto_0

    .line 6615
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6616
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 6617
    goto :goto_0
.end method

.method public static varargs forAny(Ljava/util/Map;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "K:TK1;V1:",
            "Ljava/lang/Object;",
            "V:TV1;>(",
            "Ljava/util/Map",
            "<TK;TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 6656
    const-string v4, "m"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6658
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6671
    :cond_0
    :goto_0
    return v2

    .line 6660
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 6661
    goto :goto_0

    .line 6662
    :cond_2
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6663
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6664
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 6665
    goto :goto_0

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    move v2, v3

    .line 6671
    goto :goto_0
.end method

.method public static varargs forAny([Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 1
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 6636
    .local p0, "c":[Ljava/lang/Object;, "[TV;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6638
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->forAny(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    return v0
.end method

.method public static varargs forEach(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteInClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 4
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TX;>;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TX;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TX;>;)V"
        }
    .end annotation

    .prologue
    .line 5645
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TX;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TX;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TX;>;"
    const-string v2, "c"

    const-string v3, "f"

    invoke-static {p0, v2, p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5647
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5648
    .local v1, "x":Ljava/lang/Object;, "TX;"
    invoke-static {v1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5649
    invoke-interface {p1, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    goto :goto_0

    .line 5650
    .end local v1    # "x":Ljava/lang/Object;, "TX;"
    :cond_1
    return-void
.end method

.method public static varargs forEach(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteInClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 5
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 5752
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;>;"
    const-string v3, "m"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5754
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5755
    if-eqz p1, :cond_1

    .line 5756
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5757
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    .line 5759
    .local v2, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    invoke-static {v2, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5760
    invoke-interface {p1, v2}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    goto :goto_0

    .line 5764
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public static varargs forEach([Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteInClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 2
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TX;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TX;>;)V"
        }
    .end annotation

    .prologue
    .line 5666
    .local p0, "c":[Ljava/lang/Object;, "[TX;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TX;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TX;>;"
    const-string v0, "c"

    const-string v1, "f"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5668
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/util/typedef/F;->forEach(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteInClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 5669
    return-void
.end method

.method public static forMap(Ljava/util/Map;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 5343
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const-string v0, "m"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5345
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$128;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$128;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 5367
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    const-string v0, "m"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5369
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$129;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$129;-><init>(Ljava/util/Map;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static gavg(Ljava/lang/Iterable;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    const-string v5, "c"

    invoke-static {p0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    const-wide/16 v2, 0x0

    .line 1037
    .local v2, "sum":D
    const/4 v0, 0x0

    .line 1039
    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 1040
    .local v4, "t":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v2, v6

    .line 1042
    add-int/lit8 v0, v0, 0x1

    .line 1043
    goto :goto_0

    .line 1045
    .end local v4    # "t":Ljava/lang/Number;
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    return-wide v6
.end method

.method public static gavgReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$50;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$50;-><init>()V

    return-object v0
.end method

.method public static havg(Ljava/lang/Iterable;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    const-string v5, "c"

    invoke-static {p0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    const-wide/16 v2, 0x0

    .line 1126
    .local v2, "sum":D
    const/4 v0, 0x0

    .line 1128
    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 1130
    .local v4, "t":Ljava/lang/Number;
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 1132
    add-int/lit8 v0, v0, 0x1

    .line 1133
    goto :goto_0

    .line 1135
    .end local v4    # "t":Ljava/lang/Number;
    :cond_0
    int-to-double v6, v0

    div-double/2addr v6, v2

    return-wide v6
.end method

.method public static havgReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$54;-><init>()V

    return-object v0
.end method

.method public static id2id8()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2352
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ID2ID8:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static id8s(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1526
    .local p0, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1527
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1529
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->id2id8()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static idForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2433
    const-string v0, "nodeId"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2435
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$74;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$74;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public static idForNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2451
    .local p0, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    .line 2456
    :goto_0
    return-object v0

    .line 2454
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2456
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$75;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$75;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static varargs idForNodeIds([Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "nodeIds"    # [Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2472
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    .line 2475
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$76;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$76;-><init>([Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public static identity()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 5156
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IDENTITY:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static identityPredicate()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5165
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IDENTITY_PRED:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static identityReducer(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "elem":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$53;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$53;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static in(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5402
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$131;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$131;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static in([Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5572
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->in(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    goto :goto_0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4522
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4524
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$105;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$105;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs intersects(Ljava/lang/Iterable;[Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;[",
            "Ljava/util/Collection",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 7830
    .local p0, "s1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "s2":[Ljava/util/Collection;, "[Ljava/util/Collection<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7831
    .local v1, "e1":Ljava/lang/Object;, "TE;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/Collection;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 7832
    .local v5, "s":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v5, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7833
    const/4 v6, 0x1

    .line 7837
    .end local v0    # "arr$":[Ljava/util/Collection;
    .end local v1    # "e1":Ljava/lang/Object;, "TE;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :goto_1
    return v6

    .line 7831
    .restart local v0    # "arr$":[Ljava/util/Collection;
    .restart local v1    # "e1":Ljava/lang/Object;, "TE;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "s":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7837
    .end local v0    # "arr$":[Ljava/util/Collection;
    .end local v1    # "e1":Ljava/lang/Object;, "TE;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static isAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 5845
    .local p0, "t":Ljava/lang/Object;, "TT;"
    .local p1, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;>;"
    if-eqz p1, :cond_1

    .line 5846
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgnitePredicate;

    .line 5847
    .local v1, "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5848
    const/4 v2, 0x0

    .line 5850
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static varargs isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 5826
    .local p0, "t":Ljava/lang/Object;, "TT;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz p1, :cond_1

    .line 5827
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 5828
    .local v3, "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5829
    const/4 v4, 0x0

    .line 5831
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :goto_1
    return v4

    .line 5827
    .restart local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5831
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static isAll2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TA;-TB;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 5905
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5906
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 5908
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 5909
    .local v1, "r":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5910
    const/4 v2, 0x0

    .line 5914
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAll2(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TA;-TB;>;)Z"
        }
    .end annotation

    .prologue
    .line 5868
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;"
    if-eqz p2, :cond_0

    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isAll2(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgniteBiPredicate;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;[",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TA;-TB;>;)Z"
        }
    .end annotation

    .prologue
    .line 5887
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgniteBiPredicate;, "[Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAll3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/util/lang/GridPredicate3",
            "<-TA;-TB;-TC;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 5954
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;>;"
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5955
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 5957
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/lang/GridPredicate3;

    .line 5958
    .local v1, "r":Lorg/apache/ignite/internal/util/lang/GridPredicate3;, "Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridPredicate3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5959
    const/4 v2, 0x0

    .line 5963
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/ignite/internal/util/lang/GridPredicate3;, "Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static varargs isAll3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/util/lang/GridPredicate3;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Lorg/apache/ignite/internal/util/lang/GridPredicate3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;[",
            "Lorg/apache/ignite/internal/util/lang/GridPredicate3",
            "<-TA;-TB;-TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 5934
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "p":[Lorg/apache/ignite/internal/util/lang/GridPredicate3;, "[Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;"
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAlwaysFalse(Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 1
    .param p0, "p"    # Lorg/apache/ignite/lang/IgnitePredicate;

    .prologue
    .line 4388
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ALWAYS_FALSE:Lorg/apache/ignite/lang/IgnitePredicate;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 3
    .param p0, "p"    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4399
    if-eqz p0, :cond_0

    array-length v2, p0

    if-ne v2, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isAlwaysTrue(Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 1
    .param p0, "p"    # Lorg/apache/ignite/lang/IgnitePredicate;

    .prologue
    .line 4366
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ALWAYS_TRUE:Lorg/apache/ignite/lang/IgnitePredicate;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 3
    .param p0, "p"    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4377
    if-eqz p0, :cond_0

    array-length v2, p0

    if-ne v2, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue(Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isAny(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 6000
    .local p0, "t":Ljava/lang/Object;, "TT;"
    .local p1, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;>;"
    if-eqz p1, :cond_1

    .line 6001
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgnitePredicate;

    .line 6002
    .local v1, "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6003
    const/4 v2, 0x1

    .line 6005
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs isAny(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    .locals 5
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 5979
    .local p0, "t":Ljava/lang/Object;, "TT;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz p1, :cond_1

    .line 5980
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 5981
    .local v3, "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5982
    const/4 v4, 0x1

    .line 5984
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :goto_1
    return v4

    .line 5980
    .restart local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5984
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isAny2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TA;-TB;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 6041
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6042
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 6044
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 6045
    .local v1, "r":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6046
    const/4 v2, 0x1

    .line 6050
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs isAny2(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgniteBiPredicate;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;[",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TA;-TB;>;)Z"
        }
    .end annotation

    .prologue
    .line 6023
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgniteBiPredicate;, "[Lorg/apache/ignite/lang/IgniteBiPredicate<-TA;-TB;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAny2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAny3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/util/lang/GridPredicate3",
            "<-TA;-TB;-TC;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 6090
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;>;"
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6091
    sget-boolean v2, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 6093
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/lang/GridPredicate3;

    .line 6094
    .local v1, "r":Lorg/apache/ignite/internal/util/lang/GridPredicate3;, "Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridPredicate3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6095
    const/4 v2, 0x1

    .line 6099
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/ignite/internal/util/lang/GridPredicate3;, "Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs isAny3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/util/lang/GridPredicate3;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Lorg/apache/ignite/internal/util/lang/GridPredicate3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;[",
            "Lorg/apache/ignite/internal/util/lang/GridPredicate3",
            "<-TA;-TB;-TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 6070
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "p":[Lorg/apache/ignite/internal/util/lang/GridPredicate3;, "[Lorg/apache/ignite/internal/util/lang/GridPredicate3<-TA;-TB;-TC;>;"
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAny3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3912
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .restart local p0    # "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3845
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3922
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 3932
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "c"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3892
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "c"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3882
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "c"    # [J
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3902
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 3855
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyCollection()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4447
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->EMPTY_COLLECTION:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static isEmptyOrNulls([Ljava/lang/Object;)Z
    .locals 6
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x1

    .line 3865
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3872
    :cond_0
    :goto_0
    return v4

    .line 3868
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 3869
    .local v1, "element":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_2

    .line 3870
    const/4 v4, 0x0

    goto :goto_0

    .line 3868
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isEmptyString()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4428
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->EMPTY_STRING:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static isNotEmptyCollection()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4457
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NOT_EMPTY_COLLECTION:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static isNotEmptyString()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4437
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NOT_EMPTY_STRING:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static isNull()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4409
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IS_NULL:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static varargs iterable(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4125
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static varargs iterator(Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Iterator;
    .locals 2
    .param p2, "readOnly"    # Z
    .param p3    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT1;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT1;TT2;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT1;>;)",
            "Ljava/util/Iterator",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 4257
    .local p0, "c":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT1;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT1;TT2;>;"
    .local p3, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    const-string v0, "c"

    const-string v1, "trans"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4259
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4260
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    .line 4262
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$101;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$101;-><init>(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Z)V

    goto :goto_0
.end method

.method public static varargs iterator(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 2
    .param p2, "readOnly"    # Z
    .param p3    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT1;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT1;TT2;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT1;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 4167
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT1;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT1;TT2;>;"
    .local p3, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    const-string v0, "c"

    const-string v1, "trans"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4169
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4170
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    .line 4172
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$100;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$100;-><init>(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Z)V

    goto :goto_0
.end method

.method public static varargs iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 1
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4145
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IDENTITY:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-static {p0, v0, p1, p2}, Lorg/apache/ignite/internal/util/typedef/F;->iterator(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public static jobResults(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1466
    .local p0, "res":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1476
    :cond_0
    return-object v0

    .line 1469
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1471
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1473
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 1474
    .local v2, "r":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static last(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 6
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4587
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    if-nez p0, :cond_1

    .line 4588
    const/4 v2, 0x0

    .line 4608
    :cond_0
    :goto_0
    return-object v2

    .line 4590
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez p0, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 4592
    :cond_2
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_3

    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_3

    move-object v1, p0

    .line 4593
    check-cast v1, Ljava/util/List;

    .line 4595
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 4597
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    instance-of v5, p0, Ljava/util/NavigableSet;

    if-eqz v5, :cond_4

    move-object v3, p0

    .line 4598
    check-cast v3, Ljava/util/NavigableSet;

    .line 4600
    .local v3, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    invoke-interface {v3}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 4603
    .end local v3    # "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    :cond_4
    const/4 v2, 0x0

    .line 4605
    .local v2, "last":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v2    # "last":Ljava/lang/Object;, "TT;"
    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4606
    .local v4, "t":Ljava/lang/Object;, "TT;"
    move-object v2, v4

    .restart local v2    # "last":Ljava/lang/Object;, "TT;"
    goto :goto_1
.end method

.method public static limit(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;I)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3059
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3060
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3062
    :cond_1
    if-nez p1, :cond_2

    .line 3063
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3065
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$88;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$88;-><init>(Ljava/util/Collection;I)V

    goto :goto_0
.end method

.method public static limit(Ljava/util/Set;I)Ljava/util/Set;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;I)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3099
    .local p0, "col":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3100
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3102
    :cond_1
    if-nez p1, :cond_2

    .line 3103
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 3105
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$89;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$89;-><init>(Ljava/util/Set;I)V

    goto :goto_0
.end method

.method public static limit(I)Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 6140
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$133;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$133;-><init>(I)V

    return-object v0
.end method

.method public static localNode(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "locNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$40;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$40;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public static lose(Ljava/util/Collection;ZI)Ljava/util/Collection;
    .locals 8
    .param p1, "cp"    # Z
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;ZI)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2074
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v6, "c"

    invoke-static {p0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2075
    if-ltz p2, :cond_1

    const/4 v6, 0x1

    :goto_0
    const-string v7, "num >= 0"

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 2079
    if-nez p1, :cond_3

    .line 2080
    move-object v4, p0

    .line 2082
    .local v4, "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    if-lt p2, v6, :cond_2

    .line 2083
    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    .line 2111
    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 2075
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2085
    .restart local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_2
    const/4 v0, 0x0

    .line 2087
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2088
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2090
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-ge v0, p2, :cond_6

    .line 2091
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 2098
    .end local v0    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    if-lt p2, v6, :cond_4

    .line 2099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 2101
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2103
    .restart local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 2105
    .restart local v0    # "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 2106
    .local v5, "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    if-lt v0, p2, :cond_5

    .line 2107
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move v0, v1

    .line 2108
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .restart local v1    # "i":I
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_6
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public static lose(Ljava/util/Collection;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T:TT0;>(",
            "Ljava/util/Collection",
            "<TT;>;Z",
            "Ljava/util/Collection",
            "<TT0;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2018
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "filter":Ljava/util/Collection;, "Ljava/util/Collection<TT0;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2020
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/F0;->in(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->lose(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs lose(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 5
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2035
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const-string v4, "c"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    if-nez p1, :cond_3

    .line 2040
    move-object v2, p0

    .line 2042
    .local v2, "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2043
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 2058
    :cond_0
    return-object v2

    .line 2044
    :cond_1
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2045
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2046
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2047
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2050
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v2    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2052
    .restart local v2    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2053
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2054
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-static {v3, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2055
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static varargs lose(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 6
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2129
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const-string v4, "m"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2133
    if-nez p1, :cond_3

    .line 2134
    move-object v3, p0

    .line 2136
    .local v3, "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2137
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2152
    :cond_0
    return-object v3

    .line 2138
    :cond_1
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2139
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2141
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2144
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 2146
    .restart local v3    # "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2147
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2148
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static varargs loseKeys(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2173
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TK;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/util/lang/GridFunc$69;

    invoke-direct {v2, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$69;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;)V

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->lose(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static loseList(Ljava/util/List;ZLjava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p1, "cp"    # Z
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;Z",
            "Ljava/util/Collection",
            "<-TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2214
    .local p0, "c":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "filter":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    const-string v3, "c"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2218
    if-nez p1, :cond_1

    .line 2219
    move-object v1, p0

    .line 2221
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_0

    .line 2222
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2233
    :cond_0
    return-object v1

    .line 2225
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2227
    .restart local v1    # "res":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2228
    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2229
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static loseSet(Ljava/util/Set;ZLjava/util/Collection;)Ljava/util/Set;
    .locals 4
    .param p1, "cp"    # Z
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;Z",
            "Ljava/util/Collection",
            "<-TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2282
    .local p0, "c":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p2, "filter":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    const-string v3, "c"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2286
    if-nez p1, :cond_1

    .line 2287
    move-object v1, p0

    .line 2289
    .local v1, "res":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-eqz p2, :cond_0

    .line 2290
    invoke-interface {v1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2301
    :cond_0
    return-object v1

    .line 2293
    .end local v1    # "res":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2295
    .restart local v1    # "res":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2296
    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2297
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static varargs loseValues(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2195
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/util/lang/GridFunc$70;

    invoke-direct {v2, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$70;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;)V

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->lose(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static mapEntry2Key()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;TK;>;"
        }
    .end annotation

    .prologue
    .line 7692
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->MAP_ENTRY_KEY:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static mapEntry2Value()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 7716
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->MAP_ENTRY_VAL:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static mapKey(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 7259
    .local p0, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$137;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$137;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static mapValue(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 7241
    .local p0, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$136;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$136;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static varargs method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 13
    .param p1, "mtdName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 758
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v10, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p0, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 759
    :cond_0
    sget-boolean v10, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    if-nez p1, :cond_1

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 761
    :cond_1
    const/4 v2, 0x0

    .line 763
    .local v2, "cnt":I
    const/4 v7, 0x0

    .line 765
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v8, v1, v5

    .line 766
    .local v8, "mtd":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 767
    add-int/lit8 v2, v2, 0x1

    .line 769
    move-object v7, v8

    .line 765
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 772
    .end local v8    # "mtd":Ljava/lang/reflect/Method;
    :cond_3
    if-nez v2, :cond_4

    .line 773
    new-instance v10, Ljava/lang/NoSuchMethodException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x23

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 778
    :cond_4
    const/4 v10, 0x1

    if-ne v2, v10, :cond_5

    .line 797
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :goto_1
    return-object v7

    .line 781
    .restart local v1    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    :cond_5
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 782
    sget-boolean v10, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v10, :cond_6

    if-nez p2, :cond_6

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 784
    :cond_6
    array-length v10, p2

    new-array v9, v10, [Ljava/lang/Class;

    .line 786
    .local v9, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 788
    .local v3, "i":I
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    const/4 v5, 0x0

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v0, v1, v5

    .line 791
    .local v0, "arg":Ljava/lang/Object;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v4

    .line 788
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 794
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0, p1, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto :goto_1

    .line 797
    .end local v4    # "i":I
    .end local v9    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v1, "arr$":[Ljava/lang/reflect/Method;
    :cond_8
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto :goto_1
.end method

.method public static newAtomicBoolean()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4043
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_BOOL_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newAtomicInt()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4005
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_INT_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newAtomicLong()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4017
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_LONG_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newAtomicRef()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4031
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->ATOMIC_REF_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newCMap()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4097
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CONCURRENT_MAP_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newCSet()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 4109
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->CONCURRENT_SET_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newDeque()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3980
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->DEQUE_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newLinkedList()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/LinkedList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4056
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->LINKED_LIST_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newList()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3993
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->LIST_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newMap()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4083
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->MAP_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static newSet()Lorg/apache/ignite/lang/IgniteCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4069
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->SET_FACTORY:Lorg/apache/ignite/lang/IgniteCallable;

    return-object v0
.end method

.method public static nill()Lorg/apache/ignite/lang/IgniteOutClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 519
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NILL:Lorg/apache/ignite/lang/IgniteOutClosure;

    return-object v0
.end method

.method public static node2id()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2334
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NODE2ID:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static node2id8()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2343
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NODE2ID8:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static nodeAttributes(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p1, "attr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1544
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-string v3, "nodes"

    const-string v4, "attr"

    invoke-static {p0, v3, p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1546
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1548
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1549
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v2, p1}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1551
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    return-object v0
.end method

.method public static nodeForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2364
    const-string v0, "nodeId"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2366
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$71;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$71;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public static nodeForNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2383
    .local p0, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2384
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    .line 2388
    :goto_0
    return-object v0

    .line 2386
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2388
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$72;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$72;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static varargs nodeForNodeIds([Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "nodeIds"    # [Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">([",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2404
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    .line 2407
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$73;-><init>([Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public static nodeForNodes(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2502
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs nodeForNodes([Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "nodes"    # [Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2515
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>([Lorg/apache/ignite/cluster/ClusterNode;)V

    return-object v0
.end method

.method public static nodeId8s(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1508
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1511
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->node2id8()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static nodeIds(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1490
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1493
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static noop()Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1

    .prologue
    .line 6155
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->NOOP:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    return-object v0
.end method

.method public static varargs not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4472
    .local p0, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$102;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$102;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto :goto_0
.end method

.method public static notContains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7178
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$135;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$135;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4506
    .local p0, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$104;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$104;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5422
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$132;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$132;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static notIn([Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5586
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/lang/GridFunc;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    goto :goto_0
.end method

.method public static notInstanceOf(Ljava/lang/Class;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4541
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4543
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$106;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$106;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static notNull()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4419
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->IS_NOT_NULL:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static or(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4862
    .local p0, "ps":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4863
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    .line 4879
    :goto_0
    return-object v3

    .line 4865
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4867
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates(Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4868
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 4870
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgnitePredicate;

    .line 4871
    .local v2, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz v2, :cond_2

    .line 4872
    check-cast v2, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v2    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4876
    :cond_3
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v3, v1}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto :goto_0

    .line 4879
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_4
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridFunc$110;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$110;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static varargs or([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 6
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5001
    .local p0, "ps":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5002
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    .line 5020
    :goto_0
    return-object v5

    .line 5004
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5005
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    goto :goto_0

    .line 5007
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5008
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 5010
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez p0, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 5012
    :cond_3
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 5013
    .local v4, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v4, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v4    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5012
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5017
    :cond_4
    new-instance v5, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v5, v2}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto :goto_0

    .line 5020
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v1    # "i$":I
    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v3    # "len$":I
    :cond_5
    new-instance v5, Lorg/apache/ignite/internal/util/lang/GridFunc$112;

    invoke-direct {v5, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$112;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto :goto_0
.end method

.method public static varargs or([Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 10
    .param p0    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "p1":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    .local p1, "p2":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4909
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4910
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    .line 4961
    :goto_0
    return-object v7

    .line 4912
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4913
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    goto :goto_0

    .line 4915
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4916
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    goto :goto_0

    .line 4918
    :cond_3
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    .line 4919
    .local v1, "e1":Z
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    .line 4921
    .local v2, "e2":Z
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 4922
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysFalse()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    goto :goto_0

    .line 4924
    :cond_4
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    .line 4925
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_5

    if-nez p1, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4927
    :cond_5
    array-length v7, p1

    if-ne v7, v9, :cond_6

    .line 4928
    aget-object v7, p1, v8

    goto :goto_0

    .line 4931
    :cond_6
    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 4932
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_7

    if-nez p0, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4934
    :cond_7
    array-length v7, p0

    if-ne v7, v9, :cond_8

    .line 4935
    aget-object v7, p0, v8

    goto :goto_0

    .line 4938
    :cond_8
    if-nez v1, :cond_9

    invoke-static {p0}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_9
    if-nez v2, :cond_a

    invoke-static {p1}, Lorg/apache/ignite/internal/util/F0;->isAllNodePredicates([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4939
    :cond_a
    new-instance v4, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 4941
    .local v4, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    if-nez v1, :cond_c

    .line 4942
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_b

    if-nez p0, :cond_b

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4944
    :cond_b
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_c

    aget-object v6, v0, v3

    .line 4945
    .local v6, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4944
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4949
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_c
    if-nez v2, :cond_e

    .line 4950
    sget-boolean v7, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v7, :cond_d

    if-nez p1, :cond_d

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 4952
    :cond_d
    move-object v0, p1

    .restart local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v5, :cond_e

    aget-object v6, v0, v3

    .line 4953
    .restart local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    check-cast v6, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    .end local v6    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;->nodeIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4952
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4958
    .end local v0    # "arr$":[Lorg/apache/ignite/lang/IgnitePredicate;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_e
    new-instance v7, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;

    invoke-direct {v7, v4}, Lorg/apache/ignite/internal/util/lang/GridNodePredicate;-><init>(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 4961
    .end local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    :cond_f
    new-instance v7, Lorg/apache/ignite/internal/util/lang/GridFunc$111;

    invoke-direct {v7, v1, p0, v2, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$111;-><init>(Z[Lorg/apache/ignite/lang/IgnitePredicate;Z[Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto/16 :goto_0
.end method

.method public static pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lorg/apache/ignite/internal/util/lang/IgnitePair",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6357
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/IgnitePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/IgnitePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static partition(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TV;>;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<TV;>;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 6387
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v4, "c"

    const-string v5, "p"

    invoke-static {p0, v4, p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6389
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6390
    .local v0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6392
    .local v1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6393
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v3}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6394
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6396
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6399
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    return-object v4
.end method

.method public static partition(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<-TK;-TV;>;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 6433
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<-TK;-TV;>;"
    const-string v4, "m"

    const-string v5, "p"

    invoke-static {p0, v4, p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6435
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6436
    .local v2, "m1":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6438
    .local v3, "m2":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6439
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6442
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6445
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_1
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    return-object v4
.end method

.method public static partition([Ljava/lang/Object;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<TV;>;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 6415
    .local p0, "c":[Ljava/lang/Object;, "[TV;"
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const-string v0, "c"

    const-string v1, "p"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6417
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->partition(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public static predicate()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 479
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->P2P:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static print(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1586
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$62;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$62;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static print()Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1635
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->PRINT:Lorg/apache/ignite/lang/IgniteInClosure;

    return-object v0
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .param p0, "pre"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "post"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1646
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$65;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$65;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static printf(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .param p0, "fmt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1621
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$64;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$64;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static println(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1572
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$61;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$61;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static println()Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1562
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->PRINTLN:Lorg/apache/ignite/lang/IgniteInClosure;

    return-object v0
.end method

.method public static println(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .param p0, "pre"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "post"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1603
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$63;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$63;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static qavg(Ljava/lang/Iterable;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 971
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    const-string v7, "c"

    invoke-static {p0, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    const-wide/16 v4, 0x0

    .line 975
    .local v4, "sum":D
    const/4 v2, 0x0

    .line 977
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    .line 978
    .local v6, "t":Ljava/lang/Number;
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 980
    .local v0, "d":D
    mul-double v8, v0, v0

    add-double/2addr v4, v8

    .line 982
    add-int/lit8 v2, v2, 0x1

    .line 983
    goto :goto_0

    .line 985
    .end local v0    # "d":D
    .end local v6    # "t":Ljava/lang/Number;
    :cond_0
    int-to-double v8, v2

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    return-wide v8
.end method

.method public static qavgReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$49;-><init>()V

    return-object v0
.end method

.method public static r2c()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Runnable;",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3155
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->R2C:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public static rand(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1665
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v5, "c"

    invoke-static {p0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v5

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/jsr166/ThreadLocalRandom8;->nextInt(I)I

    move-result v3

    .line 1669
    .local v3, "n":I
    const/4 v0, 0x0

    .line 1671
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1672
    .local v4, "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-ne v0, v3, :cond_0

    .line 1673
    return-object v4

    :cond_0
    move v0, v1

    .line 1674
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1676
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public static rand(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1719
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "l"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1721
    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jsr166/ThreadLocalRandom8;->nextInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs rand([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1733
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1735
    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Lorg/jsr166/ThreadLocalRandom8;->nextInt(I)I

    move-result v0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static randConcurrent(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1687
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v7, "c"

    invoke-static {p0, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1689
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    .line 1691
    .local v5, "size":I
    if-nez v5, :cond_1

    .line 1692
    const/4 v6, 0x0

    .line 1707
    :cond_0
    :goto_0
    return-object v6

    .line 1694
    :cond_1
    invoke-static {}, Lorg/jsr166/ThreadLocalRandom8;->current()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/jsr166/ThreadLocalRandom8;->nextInt(I)I

    move-result v3

    .line 1696
    .local v3, "n":I
    const/4 v0, 0x0

    .line 1698
    .local v0, "i":I
    const/4 v4, 0x0

    .line 1700
    .local v4, "res":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "res":Ljava/lang/Object;, "TT;"
    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1701
    .local v6, "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-eq v0, v3, :cond_0

    .line 1704
    move-object v4, v6

    .restart local v4    # "res":Ljava/lang/Object;, "TT;"
    move v0, v1

    .line 1705
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .end local v4    # "res":Ljava/lang/Object;, "TT;"
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v6, v4

    .line 1707
    goto :goto_0
.end method

.method public static range(II)Ljava/util/List;
    .locals 6
    .param p0, "fromIncl"    # I
    .param p1, "toExcl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1322
    if-ltz p0, :cond_1

    move v2, v3

    :goto_0
    const-string v5, "fromIncl >= 0"

    invoke-static {v2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1323
    if-ltz p1, :cond_2

    move v2, v3

    :goto_1
    const-string v5, "toExcl >= 0"

    invoke-static {v2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1324
    if-lt p1, p0, :cond_3

    :goto_2
    const-string v2, "toExcl > fromIncl"

    invoke-static {v3, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1326
    if-ne p1, p0, :cond_4

    .line 1327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1334
    :cond_0
    return-object v1

    :cond_1
    move v2, v4

    .line 1322
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1323
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1324
    goto :goto_2

    .line 1329
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, p1, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1331
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v0, p0

    .local v0, "i":I
    :goto_3
    if-ge v0, p1, :cond_0

    .line 1332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static reduce(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteReducer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TX;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<-TX;TY;>;)TY;"
        }
    .end annotation

    .prologue
    .line 5600
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TX;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<-TX;TY;>;"
    const-string v2, "c"

    const-string v3, "f"

    invoke-static {p0, v2, p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5602
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5603
    .local v1, "x":Ljava/lang/Object;, "TX;"
    invoke-interface {p1, v1}, Lorg/apache/ignite/lang/IgniteReducer;->collect(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5606
    .end local v1    # "x":Ljava/lang/Object;, "TX;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static reduce(Ljava/util/Map;Lorg/apache/ignite/internal/util/lang/IgniteReducer2;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TX;+TY;>;",
            "Lorg/apache/ignite/internal/util/lang/IgniteReducer2",
            "<-TX;-TY;TR;>;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5621
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TX;+TY;>;"
    .local p1, "f":Lorg/apache/ignite/internal/util/lang/IgniteReducer2;, "Lorg/apache/ignite/internal/util/lang/IgniteReducer2<-TX;-TY;TR;>;"
    const-string v2, "m"

    const-string v3, "f"

    invoke-static {p0, v2, p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5623
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5624
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TX;+TY;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/ignite/internal/util/lang/IgniteReducer2;->collect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5627
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TX;+TY;>;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/lang/IgniteReducer2;->apply()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "locNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$41;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$41;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public static retain(Ljava/util/Collection;ZI)Ljava/util/Collection;
    .locals 7
    .param p1, "cp"    # Z
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;ZI)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2566
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const-string v5, "c"

    invoke-static {p0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2567
    if-ltz p2, :cond_0

    const/4 v5, 0x1

    :goto_0
    const-string v6, "num >= 0"

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 2571
    if-nez p1, :cond_1

    .line 2572
    move-object v4, p0

    .line 2574
    .local v4, "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    if-ge p2, v5, :cond_2

    .line 2575
    const/4 v0, 0x0

    .line 2577
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2578
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2580
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lt v0, p2, :cond_3

    .line 2581
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 2567
    .end local v0    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2586
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2588
    .restart local v4    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2590
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2591
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2590
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2594
    .end local v0    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_2
    return-object v4

    .restart local v1    # "i":I
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public static retain(Ljava/util/Collection;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T:TT0;>(",
            "Ljava/util/Collection",
            "<TT;>;Z",
            "Ljava/util/Collection",
            "<+TT0;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2531
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "filter":Ljava/util/Collection;, "Ljava/util/Collection<+TT0;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2533
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/F0;->in(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->retain(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs retain(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2549
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2551
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->lose(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs retain(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2612
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->lose(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varargs retainKeys(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2629
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TK;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->loseKeys(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varargs retainValues(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 3
    .param p1, "cp"    # Z
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;Z[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2646
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TV;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->loseValues(Ljava/util/Map;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static returnIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;TK;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3960
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    const-string v1, "map"

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3963
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 3965
    :catch_0
    move-exception v0

    .line 3966
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public static singleReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 1145
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$51;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$51;-><init>()V

    return-object v0
.end method

.method public static varargs size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 3219
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I
    .locals 2
    .param p0    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 3233
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    if-nez p0, :cond_1

    .line 3234
    const/4 v0, 0x0

    .line 3245
    :cond_0
    return v0

    .line 3236
    :cond_1
    const/4 v0, 0x0

    .line 3238
    .local v0, "n":I
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3239
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3240
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs size([Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)I
    .locals 1
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 3204
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3206
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method

.method public static varargs split(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/IgnitePair;
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T:TT0;>(",
            "Ljava/util/Collection",
            "<TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/IgnitePair",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    const/4 v4, 0x0

    .line 6320
    if-nez p0, :cond_0

    .line 6321
    invoke-static {v4, v4}, Lorg/apache/ignite/internal/util/lang/GridFunc;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v4

    .line 6345
    :goto_0
    return-object v4

    .line 6323
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v4

    goto :goto_0

    .line 6326
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/lang/GridFunc;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v4

    goto :goto_0

    .line 6329
    :cond_2
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/lang/GridFunc;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v4

    goto :goto_0

    .line 6332
    :cond_3
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v4

    goto :goto_0

    .line 6335
    :cond_4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6336
    .local v0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6338
    .local v1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6339
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-static {v3, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6340
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6342
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6345
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_6
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v4

    goto :goto_0
.end method

.method public static string()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5384
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$130;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$130;-><init>()V

    return-object v0
.end method

.method public static sumBigDecimal(Ljava/lang/Iterable;)Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/math/BigDecimal;>;"
    const-string v3, "c"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 879
    .local v1, "sum":Ljava/math/BigDecimal;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    .line 880
    .local v2, "t":Ljava/math/BigDecimal;
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 881
    goto :goto_0

    .line 883
    .end local v2    # "t":Ljava/math/BigDecimal;
    :cond_0
    return-object v1
.end method

.method public static sumBigDecimalReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1346
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$58;-><init>()V

    return-object v0
.end method

.method public static sumBigInt(Ljava/lang/Iterable;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/math/BigInteger;>;"
    const-string v3, "c"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 899
    .local v1, "sum":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 900
    .local v2, "t":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 901
    goto :goto_0

    .line 903
    .end local v2    # "t":Ljava/math/BigInteger;
    :cond_0
    return-object v1
.end method

.method public static sumBigIntegerReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$59;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$59;-><init>()V

    return-object v0
.end method

.method public static sumDouble(Ljava/lang/Iterable;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    const-string v1, "c"

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    const-wide/16 v2, 0x0

    .line 859
    .local v2, "sum":D
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 860
    .local v4, "t":D
    add-double/2addr v2, v4

    .line 861
    goto :goto_0

    .line 863
    .end local v4    # "t":D
    :cond_0
    return-wide v2
.end method

.method public static sumDoubleReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$57;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$57;-><init>()V

    return-object v0
.end method

.method public static sumInt(Ljava/lang/Iterable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    const-string v3, "c"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    const/4 v1, 0x0

    .line 839
    .local v1, "sum":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 840
    .local v2, "t":I
    add-int/2addr v1, v2

    .line 841
    goto :goto_0

    .line 843
    .end local v2    # "t":I
    :cond_0
    return v1
.end method

.method public static sumIntReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1243
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$55;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$55;-><init>()V

    return-object v0
.end method

.method public static sumLongReducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1267
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$56;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$56;-><init>()V

    return-object v0
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            ">(TV1;TV2;TV3;)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<TV1;TV2;TV3;>;"
        }
    .end annotation

    .prologue
    .line 6795
    .local p0, "v1":Ljava/lang/Object;, "TV1;"
    .local p1, "v2":Ljava/lang/Object;, "TV2;"
    .local p2, "v3":Ljava/lang/Object;, "TV3;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple4;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            ">(TV1;TV2;TV3;TV4;)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple4",
            "<TV1;TV2;TV3;TV4;>;"
        }
    .end annotation

    .prologue
    .line 6813
    .local p0, "v1":Ljava/lang/Object;, "TV1;"
    .local p1, "v2":Ljava/lang/Object;, "TV2;"
    .local p2, "v3":Ljava/lang/Object;, "TV3;"
    .local p3, "v4":Ljava/lang/Object;, "TV4;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/lang/GridTuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple5;
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            "V5:",
            "Ljava/lang/Object;",
            ">(TV1;TV2;TV3;TV4;TV5;)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple5",
            "<TV1;TV2;TV3;TV4;TV5;>;"
        }
    .end annotation

    .prologue
    .line 6833
    .local p0, "v1":Ljava/lang/Object;, "TV1;"
    .local p1, "v2":Ljava/lang/Object;, "TV2;"
    .local p2, "v3":Ljava/lang/Object;, "TV3;"
    .local p3, "v4":Ljava/lang/Object;, "TV4;"
    .local p4, "v5":Ljava/lang/Object;, "TV5;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/lang/GridTuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple6;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            "V5:",
            "Ljava/lang/Object;",
            "V6:",
            "Ljava/lang/Object;",
            ">(TV1;TV2;TV3;TV4;TV5;TV6;)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple6",
            "<TV1;TV2;TV3;TV4;TV5;TV6;>;"
        }
    .end annotation

    .prologue
    .line 6855
    .local p0, "v1":Ljava/lang/Object;, "TV1;"
    .local p1, "v2":Ljava/lang/Object;, "TV2;"
    .local p2, "v3":Ljava/lang/Object;, "TV3;"
    .local p3, "v4":Ljava/lang/Object;, "TV4;"
    .local p4, "v5":Ljava/lang/Object;, "TV5;"
    .local p5, "v6":Ljava/lang/Object;, "TV6;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/lang/GridTuple6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 6746
    .local p0, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridTuple;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(TV1;TV2;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 6769
    .local p0, "v1":Ljava/lang/Object;, "TV1;"
    .local p1, "v2":Ljava/lang/Object;, "TV2;"
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t1()Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 6756
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple;-><init>()V

    return-object v0
.end method

.method public static t2()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 6780
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-direct {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>()V

    return-object v0
.end method

.method public static t3()Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<TV1;TV2;TV3;>;"
        }
    .end annotation

    .prologue
    .line 6879
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>()V

    return-object v0
.end method

.method public static t4()Lorg/apache/ignite/internal/util/lang/GridTuple4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/lang/GridTuple4",
            "<TV1;TV2;TV3;TV4;>;"
        }
    .end annotation

    .prologue
    .line 6892
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple4;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple4;-><init>()V

    return-object v0
.end method

.method public static t5()Lorg/apache/ignite/internal/util/lang/GridTuple5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            "V5:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/lang/GridTuple5",
            "<TV1;TV2;TV3;TV4;TV5;>;"
        }
    .end annotation

    .prologue
    .line 6906
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple5;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple5;-><init>()V

    return-object v0
.end method

.method public static t6()Lorg/apache/ignite/internal/util/lang/GridTuple6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            "V5:",
            "Ljava/lang/Object;",
            "V6:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/lang/GridTuple6",
            "<TV1;TV2;TV3;TV4;TV5;TV6;>;"
        }
    .end annotation

    .prologue
    .line 6921
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTuple6;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple6;-><init>()V

    return-object v0
.end method

.method public static varargs transform(Ljava/util/Collection;Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 8
    .param p3    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TY;>;",
            "Ljava/lang/Iterable",
            "<+TX;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TX;TY;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TX;>;)",
            "Ljava/util/Collection",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 5726
    .local p0, "to":Ljava/util/Collection;, "Ljava/util/Collection<TY;>;"
    .local p1, "from":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TX;>;"
    .local p2, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TX;TY;>;"
    .local p3, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TX;>;"
    const-string v1, "to"

    const-string v3, "from"

    const-string v5, "f"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5728
    invoke-static {p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5729
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 5730
    .local v7, "x":Ljava/lang/Object;, "TX;"
    invoke-static {v7, p3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5731
    invoke-interface {p2, v7}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5735
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "x":Ljava/lang/Object;, "TX;"
    :cond_1
    return-object p0
.end method

.method public static transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TX;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TX;TY;>;)",
            "Ljava/util/Collection",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 5776
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TX;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TX;TY;>;"
    const-string v3, "c"

    const-string v4, "f"

    invoke-static {p0, v3, p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5778
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5780
    .local v0, "d":Ljava/util/Collection;, "Ljava/util/Collection<TY;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5781
    .local v2, "x":Ljava/lang/Object;, "TX;"
    invoke-interface {p1, v2}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5783
    .end local v2    # "x":Ljava/lang/Object;, "TX;"
    :cond_0
    return-object v0
.end method

.method public static varargs transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TX;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TX;TY;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TX;>;)",
            "Ljava/util/Collection",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 6117
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TX;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TX;TY;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TX;>;"
    const-string v3, "c"

    const-string v4, "f"

    invoke-static {p0, v3, p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6119
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6121
    .local v0, "d":Ljava/util/Collection;, "Ljava/util/Collection<TY;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6122
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6123
    .local v2, "x":Ljava/lang/Object;, "TX;"
    invoke-static {v2, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6124
    invoke-interface {p1, v2}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6128
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "x":Ljava/lang/Object;, "TX;"
    :cond_1
    return-object v0
.end method

.method public static transform([Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">([TX;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TX;TY;>;)",
            "Ljava/util/Collection",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 5809
    .local p0, "c":[Ljava/lang/Object;, "[TX;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TX;TY;>;"
    const-string v0, "c"

    const-string v1, "f"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5811
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, p1, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs transformList(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;
    .locals 2
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT1;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT1;TT2;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT1;>;)",
            "Ljava/util/List",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 3381
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT1;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT1;TT2;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    const-string v0, "c"

    const-string v1, "trans"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3383
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3386
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p0, v1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->retain(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static varargs transformSet(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Set;
    .locals 2
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT1;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT1;TT2;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT1;>;)",
            "Ljava/util/Set",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 3401
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT1;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT1;TT2;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    const-string v0, "c"

    const-string v1, "trans"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3403
    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3404
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 3406
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {p0, v1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->retain(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static triple(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTriple;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lorg/apache/ignite/internal/util/lang/GridTriple",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6370
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs tv([Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTupleV;
    .locals 1
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 6865
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6867
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTupleV;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridTupleV;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static unfinishedFutures()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 8000
    sget-object v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->UNFINISHED_FUTURE:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public static upcast(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TR;R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5794
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5796
    return-object p0
.end method

.method public static varargs view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3262
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3263
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 3267
    .end local p0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_1
    :goto_0
    return-object p0

    .line 3265
    .restart local p0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3267
    :cond_3
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;

    invoke-direct {v0, p1, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$93;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static varargs view(Ljava/util/Map;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            "K:TK0;V0:",
            "Ljava/lang/Object;",
            "V:TV0;>(",
            "Ljava/util/Map",
            "<TK;TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3424
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TK;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3425
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 3429
    .end local p0    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    :goto_0
    return-object p0

    .line 3427
    .restart local p0    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3429
    :cond_3
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$96;

    invoke-direct {v0, p1, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$96;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static varargs viewAsMap(Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            "K:TK0;V0:",
            "Ljava/lang/Object;",
            "V:TV0;>(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TK;TV;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3748
    .local p0, "c":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "mapClo":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TK;TV;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TK;>;"
    const-string v0, "trans"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3750
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3751
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 3755
    :goto_0
    return-object v0

    .line 3753
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3755
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    invoke-direct {v0, p2, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$99;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;)V

    goto :goto_0
.end method

.method public static viewListReadOnly(Ljava/util/List;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT1;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT1;TT2;>;)",
            "Ljava/util/List",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 3341
    .local p0, "c":Ljava/util/List;, "Ljava/util/List<+TT1;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT1;TT2;>;"
    const-string v0, "trans"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3343
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3348
    :goto_0
    return-object v0

    .line 3346
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3348
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;

    invoke-direct {v0, p1, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$95;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static varargs viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT1;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT1;TT2;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT1;>;)",
            "Ljava/util/Collection",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 3305
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT1;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT1;TT2;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT1;>;"
    const-string v0, "trans"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3307
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3308
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3312
    :goto_0
    return-object v0

    .line 3310
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3312
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$94;-><init>(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto :goto_0
.end method

.method public static varargs viewReadOnly(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteBiClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            "K:TK0;V0:",
            "Ljava/lang/Object;",
            "V:TV0;V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/ignite/lang/IgniteBiClosure",
            "<TK;TV;TV1;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV1;>;"
        }
    .end annotation

    .prologue
    .line 3626
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteBiClosure;, "Lorg/apache/ignite/lang/IgniteBiClosure<TK;TV;TV1;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TK;>;"
    const-string v0, "trans"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3628
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3629
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 3633
    :goto_0
    return-object v0

    .line 3631
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3633
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$98;

    invoke-direct {v0, p2, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$98;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    goto :goto_0
.end method

.method public static varargs viewReadOnly(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            "K:TK0;V0:",
            "Ljava/lang/Object;",
            "V:TV0;V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TV;TV1;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV1;>;"
        }
    .end annotation

    .prologue
    .line 3507
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TV;TV1;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TK;>;"
    const-string v0, "trans"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3509
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAlwaysFalse([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3510
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 3514
    :goto_0
    return-object v0

    .line 3512
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3514
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;

    invoke-direct {v0, p2, p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$97;-><init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;)V

    goto :goto_0
.end method

.method public static wavg(Ljava/util/Collection;Ljava/util/Collection;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 1091
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    .local p1, "w":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    const-string v10, "c"

    const-string v11, "w"

    invoke-static {p0, v10, p1, v11}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    :goto_0
    const-string v11, "c.size() == w.size()"

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1094
    const-wide/16 v6, 0x0

    .line 1095
    .local v6, "sumC":D
    const-wide/16 v8, 0x0

    .line 1097
    .local v8, "sumW":D
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1098
    .local v4, "iterC":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1100
    .local v5, "iterW":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1101
    sget-boolean v10, Lorg/apache/ignite/internal/util/lang/GridFunc;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1092
    .end local v4    # "iterC":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    .end local v5    # "iterW":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    .end local v6    # "sumC":D
    .end local v8    # "sumW":D
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 1103
    .restart local v4    # "iterC":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    .restart local v5    # "iterW":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    .restart local v6    # "sumC":D
    .restart local v8    # "sumW":D
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1104
    .local v0, "dc":D
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 1106
    .local v2, "dw":D
    add-double/2addr v8, v2

    .line 1107
    mul-double v10, v2, v0

    add-double/2addr v6, v10

    .line 1108
    goto :goto_1

    .line 1110
    .end local v0    # "dc":D
    .end local v2    # "dw":D
    :cond_2
    div-double v10, v6, v8

    return-wide v10
.end method

.method public static wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 7818
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static yield(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 2769
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    const-string v0, "c"

    const-string v1, "f"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2771
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$83;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$83;-><init>(Lorg/apache/ignite/lang/IgniteClosure;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static yield(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2788
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;"
    const-string v0, "c"

    const-string v1, "f"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2790
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$84;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$84;-><init>(Lorg/apache/ignite/lang/IgniteInClosure;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static yield([Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-TT;TR;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 2823
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-TT;TR;>;"
    const-string v0, "c"

    const-string v1, "f"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2825
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->yield(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static yield([Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteInClosure;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-TT;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2807
    .local p0, "c":[Ljava/lang/Object;, "[TT;"
    .local p1, "f":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-TT;>;"
    const-string v0, "c"

    const-string v1, "f"

    invoke-static {p0, v0, p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2809
    invoke-static {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->yield(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TK;>;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 6935
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p1, "dfltVal":Ljava/lang/Object;, "TV;"
    const-string v3, "keys"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6937
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 6939
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6940
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6943
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    return-object v2
.end method

.method public static zip(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljava/util/Collection",
            "<+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 6957
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p1, "vals":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    const-string v4, "keys"

    const-string v5, "vals"

    invoke-static {p0, v4, p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6958
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "keys.size() == vals.size()"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 6960
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 6962
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6964
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6965
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6958
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 6968
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    .restart local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    return-object v3
.end method
