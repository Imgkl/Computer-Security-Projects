.class public Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
.super Ljava/lang/Object;
.source "IgniteTxEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# annotations
.annotation runtime Lorg/apache/ignite/internal/IgniteCodeGeneratingFail;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cacheId:I

.field private conflictExpireTime:J

.field private conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private volatile dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private volatile entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private entryProcessorsCol:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private expiryPlcBytes:[B

.field private explicitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private filtersPassed:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private filtersSet:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private grpLock:Z

.field private key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private locMapped:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private transient locked:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private nodeId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private prepared:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private transferExpiryPlc:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private transformClosBytes:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ttl:J

.field private tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private txKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 3
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p3, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p5, "ttl"    # J
    .param p7, "conflictExpireTime"    # J
    .param p9, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p10, "conflictVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "JJ",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 182
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 183
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p9, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 186
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0, p3, p4, v2, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 188
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 189
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    .line 190
    iput-wide p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    .line 191
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 193
    invoke-interface {p9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 195
    invoke-interface {p9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    .line 196
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;JLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 3
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p3, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p6, "invokeArgs"    # [Ljava/lang/Object;
    .param p7, "ttl"    # J
    .param p9, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p10, "filters"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p11, "conflictVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "J",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .local p5, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p9, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 228
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 229
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0, p3, p4, v2, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 230
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 231
    iput-wide p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    .line 232
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 233
    iput-object p11, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 235
    if-eqz p5, :cond_4

    .line 236
    invoke-virtual {p0, p5, p6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->addEntryProcessor(Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V

    .line 238
    :cond_4
    invoke-interface {p9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 240
    invoke-interface {p9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    .line 241
    return-void
.end method


# virtual methods
.method public addEntryProcessor(Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V
    .locals 2
    .param p2, "invokeArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    .line 538
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    new-instance v1, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-direct {v1, p1, p2}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    .line 543
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 544
    return-void
.end method

.method public applyEntryProcessors(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 11
    .param p1, "cacheVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 559
    const/4 v10, 0x0

    .line 560
    .local v10, "val":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 562
    .local v7, "keyVal":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    move-object v3, v7

    move-object v5, v10

    .end local v7    # "keyVal":Ljava/lang/Object;
    .end local v10    # "val":Ljava/lang/Object;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 564
    .local v9, "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    .line 566
    .local v0, "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/cache/processor/EntryProcessor;

    .line 568
    .local v8, "processor":Ljavax/cache/processor/EntryProcessor;
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v8, v0, v1}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 572
    .restart local v10    # "val":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .end local v0    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "processor":Ljavax/cache/processor/EntryProcessor;
    .end local v10    # "val":Ljava/lang/Object;
    :goto_1
    move-object v3, v7

    move-object v5, v10

    .line 577
    goto :goto_0

    .line 574
    :catch_0
    move-exception v1

    move-object v10, v5

    :goto_2
    move-object v7, v3

    goto :goto_1

    .line 579
    .end local v9    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    return-object v1

    .line 574
    .restart local v0    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v8    # "processor":Ljavax/cache/processor/EntryProcessor;
    .restart local v9    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    .restart local v10    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public cacheId()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    return v0
.end method

.method public cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    return-object v0
.end method

.method public cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 427
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 429
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid entry assigned to tx entry [txEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ctxNear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ctxDht="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 432
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 433
    return-void
.end method

.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->deployClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public cleanCopy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;-><init>()V

    .line 287
    .local v0, "cp":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 288
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    iput v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    .line 289
    iput-object p1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 291
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;-><init>()V

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 293
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 294
    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteValue()Z

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadValue()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 295
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    .line 296
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    iput-wide v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    .line 297
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    iput-wide v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    .line 298
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 299
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->grpLock:Z

    iput-boolean v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->grpLock:Z

    .line 300
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 301
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 303
    return-object v0
.end method

.method public conflictExpireTime()J
    .locals 2

    .prologue
    .line 502
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    return-wide v0
.end method

.method public conflictExpireTime(J)V
    .locals 1
    .param p1, "conflictExpireTime"    # J

    .prologue
    .line 509
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    .line 510
    return-void
.end method

.method public conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public conflictVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "conflictVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 639
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 640
    return-void
.end method

.method public context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 963
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 965
    .local v0, "clsLdr":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 968
    .local v1, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method

.method public dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public dhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 331
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 332
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 953
    const/16 v0, 0x64

    return v0
.end method

.method public entryProcessors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    return-object v0
.end method

.method public entryProcessors(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "entryProcessorsCol":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    .line 591
    return-void
.end method

.method public expiry()Ljavax/cache/expiry/ExpiryPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    return-object v0
.end method

.method public expiry(Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 0
    .param p1, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 756
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 757
    return-void
.end method

.method public explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public explicitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "explicitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 618
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 619
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 958
    const/16 v0, 0xb

    return v0
.end method

.method public filters([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 0
    .param p1, "filters"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 653
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 654
    return-void
.end method

.method public filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public filtersPassed(Z)V
    .locals 0
    .param p1, "filtersPassed"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersPassed:Z

    .line 668
    return-void
.end method

.method public filtersPassed()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersPassed:Z

    return v0
.end method

.method public filtersSet(Z)V
    .locals 0
    .param p1, "filtersSet"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersSet:Z

    .line 682
    return-void
.end method

.method public filtersSet()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersSet:Z

    return v0
.end method

.method public groupLockEntry(Z)V
    .locals 0
    .param p1, "grpLock"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->grpLock:Z

    .line 278
    return-void
.end method

.method public groupLockEntry()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->grpLock:Z

    return v0
.end method

.method hasPreviousValue()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasValue()Z

    move-result v0

    return v0
.end method

.method public hasReadValue()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadValue()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasValue()Z

    move-result v0

    return v0
.end method

.method public hasWriteValue()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteValue()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 2

    .prologue
    .line 611
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public locallyMapped(Z)V
    .locals 0
    .param p1, "locMapped"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locMapped:Z

    .line 262
    return-void
.end method

.method public locallyMapped()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locMapped:Z

    return v0
.end method

.method public locked()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locked:Z

    return v0
.end method

.method public markLocked()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locked:Z

    .line 346
    return-void
.end method

.method markPrepared()Z
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method markValid()V
    .locals 5

    .prologue
    .line 380
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteValue()Z

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadValue()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 381
    return-void
.end method

.method public marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Z)V
    .locals 6
    .param p2, "transferExpiry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<**>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v4, :cond_1

    .line 691
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 692
    .local v3, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v3, :cond_0

    .line 693
    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    invoke-virtual {p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 691
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 699
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    .line 701
    :cond_2
    if-eqz p2, :cond_3

    .line 702
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transferExpiryPlc:Z

    .line 704
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 706
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 708
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transferExpiryPlc:Z

    if-eqz v4, :cond_5

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;-><init>(Ljavax/cache/expiry/ExpiryPolicy;)V

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlcBytes:[B

    .line 709
    return-void

    .line 702
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 708
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 317
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId:Ljava/util/UUID;

    .line 318
    return-void
.end method

.method public op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v0

    return-object v0
.end method

.method public op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V
    .locals 1
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .prologue
    .line 604
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 605
    return-void
.end method

.method public previousOperation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v0

    return-object v0
.end method

.method public previousValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->prevVal:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 852
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 854
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 948
    :goto_0
    return v0

    .line 857
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 948
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 859
    :pswitch_0
    const-string v0, "cacheId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    .line 861
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 862
    goto :goto_0

    .line 864
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 867
    :pswitch_1
    const-string v0, "conflictExpireTime"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    .line 869
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 870
    goto :goto_0

    .line 872
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 875
    :pswitch_2
    const-string v0, "conflictVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 877
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 878
    goto :goto_0

    .line 880
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 883
    :pswitch_3
    const-string v0, "expiryPlcBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlcBytes:[B

    .line 885
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 886
    goto :goto_0

    .line 888
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 891
    :pswitch_4
    const-string v0, "explicitVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 893
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 894
    goto :goto_0

    .line 896
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 899
    :pswitch_5
    const-string v0, "filters"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    const-class v3, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readObjectArray(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 901
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 902
    goto/16 :goto_0

    .line 904
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 907
    :pswitch_6
    const-string v0, "grpLock"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->grpLock:Z

    .line 909
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 910
    goto/16 :goto_0

    .line 912
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 915
    :pswitch_7
    const-string v0, "key"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 917
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 918
    goto/16 :goto_0

    .line 920
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 923
    :pswitch_8
    const-string/jumbo v0, "transformClosBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    .line 925
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 926
    goto/16 :goto_0

    .line 928
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 931
    :pswitch_9
    const-string/jumbo v0, "ttl"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    .line 933
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 934
    goto/16 :goto_0

    .line 936
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 939
    :pswitch_a
    const-string/jumbo v0, "val"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    .line 941
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 942
    goto/16 :goto_0

    .line 944
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public readValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 4
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 527
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 528
    return-void
.end method

.method setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 3
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 352
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteValue()Z

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadValue()Z

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 353
    return-void
.end method

.method setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 2
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasWriteValue()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->hasReadValue()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 361
    return-void
.end method

.method setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V
    .locals 1
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p3, "hasWriteVal"    # Z
    .param p4, "hasReadVal"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 372
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V

    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 979
    const-class v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    const-string/jumbo v2, "xidVer"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-static {v1, p0, v2, v0}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 488
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    return-wide v0
.end method

.method public ttl(J)V
    .locals 1
    .param p1, "ttl"    # J

    .prologue
    .line 495
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    .line 496
    return-void
.end method

.method public txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    return-object v0
.end method

.method public unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLjava/lang/ClassLoader;)V
    .locals 7
    .param p2, "near"    # Z
    .param p3, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;Z",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<**>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-nez v5, :cond_1

    .line 721
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 723
    .local v1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p2, :cond_5

    .line 724
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 728
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 732
    .end local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    if-nez v5, :cond_2

    .line 733
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    invoke-interface {v5, v6, p3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessorsCol:Ljava/util/Collection;

    .line 735
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v5, :cond_6

    .line 736
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 744
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-interface {v5, v6, p3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 746
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5, v6, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 748
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlcBytes:[B

    if-eqz v5, :cond_4

    .line 749
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlcBytes:[B

    invoke-interface {v5, v6, p3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/cache/expiry/ExpiryPolicy;

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 750
    :cond_4
    return-void

    .line 725
    .restart local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    .line 726
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    goto :goto_0

    .line 738
    .end local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 739
    .local v4, "p":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-eqz v4, :cond_7

    .line 740
    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 738
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V
    .locals 2
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "writeVal"    # Z
    .param p3, "readVal"    # Z

    .prologue
    .line 518
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 519
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 770
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 847
    :goto_0
    return v0

    .line 774
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 777
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 847
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 779
    :pswitch_0
    const-string v0, "cacheId"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 780
    goto :goto_0

    .line 782
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 785
    :pswitch_1
    const-string v0, "conflictExpireTime"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 786
    goto :goto_0

    .line 788
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 791
    :pswitch_2
    const-string v0, "conflictVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 792
    goto :goto_0

    .line 794
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 797
    :pswitch_3
    const-string v0, "expiryPlcBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiryPlcBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 798
    goto :goto_0

    .line 800
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 803
    :pswitch_4
    const-string v0, "explicitVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 804
    goto :goto_0

    .line 806
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 809
    :pswitch_5
    const-string v2, "filters"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    :goto_2
    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v0, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeObjectArray(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 811
    goto :goto_0

    .line 809
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 813
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 816
    :pswitch_6
    const-string v0, "grpLock"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->grpLock:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 817
    goto :goto_0

    .line 819
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 822
    :pswitch_7
    const-string v0, "key"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 823
    goto/16 :goto_0

    .line 825
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 828
    :pswitch_8
    const-string/jumbo v0, "transformClosBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->transformClosBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 829
    goto/16 :goto_0

    .line 831
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 834
    :pswitch_9
    const-string/jumbo v0, "ttl"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 835
    goto/16 :goto_0

    .line 837
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 840
    :pswitch_a
    const-string/jumbo v0, "val"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->val:Lorg/apache/ignite/internal/processors/cache/transactions/TxEntryValueHolder;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 841
    goto/16 :goto_0

    .line 843
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
