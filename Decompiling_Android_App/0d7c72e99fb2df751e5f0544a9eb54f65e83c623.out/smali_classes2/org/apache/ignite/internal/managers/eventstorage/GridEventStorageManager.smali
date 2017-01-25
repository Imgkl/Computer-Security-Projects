.class public Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridEventStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;,
        Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY:[I


# instance fields
.field private final busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final cfgInclEvtTypes:[I

.field private volatile inclEvtTypes:[I

.field private final isDaemon:Z

.field private final len:I

.field private final lsnrs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private msgLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;

.field private volatile recordableEvts:[Z

.field private volatile userRecordableEvts:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-class v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    .line 54
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->EMPTY:[I

    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 14
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 100
    const/4 v11, 0x1

    new-array v11, v11, [Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    const/4 v12, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {p0, p1, v11}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 57
    new-instance v11, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v11}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 60
    new-instance v11, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 102
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v11

    iput-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 104
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v11

    iput-boolean v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isDaemon:Z

    .line 106
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeEventTypes()[I

    move-result-object v1

    .line 108
    .local v1, "cfgInclEvtTypes0":[I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 109
    sget-object v11, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->EMPTY:[I

    iput-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->cfgInclEvtTypes:[I

    .line 122
    :goto_0
    const/4 v6, 0x0

    .line 124
    .local v6, "maxIdx":I
    sget-object v0, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_3

    aget v8, v0, v2

    .line 125
    .local v8, "type":I
    if-le v8, v6, :cond_0

    .line 126
    move v6, v8

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxIdx":I
    .end local v8    # "type":I
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->copy([I)[I

    move-result-object v1

    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 115
    const/4 v11, 0x0

    aget v11, v1, v11

    if-gez v11, :cond_2

    .line 116
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid event type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 118
    :cond_2
    array-length v11, v1

    invoke-direct {p0, v1, v11}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->compact([II)[I

    move-result-object v11

    iput-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->cfgInclEvtTypes:[I

    goto :goto_0

    .line 131
    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "maxIdx":I
    :cond_3
    sget-boolean v11, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v11, :cond_4

    const/16 v11, 0x3e8

    if-le v6, v11, :cond_4

    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid max index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 136
    :cond_4
    add-int/lit8 v11, v6, 0x1

    iput v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    .line 138
    iget v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    new-array v7, v11, [Z

    .line 139
    .local v7, "recordableEvts":[Z
    iget v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    new-array v10, v11, [Z

    .line 141
    .local v10, "userRecordableEvts":[Z
    new-instance v4, Ljava/util/HashSet;

    iget-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->cfgInclEvtTypes:[I

    const/4 v12, 0x0

    new-array v12, v12, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v11, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntList([I[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v4, "inclEvtTypes0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    array-length v5, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_9

    aget v8, v0, v2

    .line 147
    .restart local v8    # "type":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 149
    .local v9, "userRecordable":Z
    if-eqz v9, :cond_5

    .line 150
    const/4 v11, 0x1

    aput-boolean v11, v10, v8

    .line 153
    :cond_5
    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isInternalEvent(I)Z

    move-result v11

    if-nez v11, :cond_6

    if-eqz v9, :cond_7

    .line 154
    :cond_6
    const/4 v11, 0x1

    aput-boolean v11, v7, v8

    .line 156
    :cond_7
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 157
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Event recordable status [type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", recordable="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-boolean v13, v7, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", userRecordable="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-boolean v13, v10, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 146
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 162
    .end local v8    # "type":I
    .end local v9    # "userRecordable":Z
    :cond_9
    iput-object v7, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->recordableEvts:[Z

    .line 163
    iput-object v10, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    .line 165
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    .line 167
    .local v3, "inclEvtTypes":[I
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 169
    iput-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I

    .line 170
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgnitePredicate;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->query(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->enterBusy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method private binarySearch([II)Z
    .locals 3
    .param p1, "arr"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "val"    # I

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p1

    const/16 v2, 0x80

    if-gt v1, v2, :cond_2

    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/F;->contains([II)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private compact([II)[I
    .locals 5
    .param p1, "arr"    # [I
    .param p2, "len"    # I

    .prologue
    .line 399
    sget-boolean v3, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 400
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isNonDecreasingArray([II)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 402
    :cond_1
    array-length v3, p1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 403
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->copyIfExceeded([II)[I

    move-result-object v3

    .line 412
    :goto_0
    return-object v3

    .line 405
    :cond_2
    const/4 v1, 0x1

    .line 407
    .local v1, "newLen":I
    const/4 v0, 0x1

    .local v0, "i":I
    move v2, v1

    .end local v1    # "newLen":I
    .local v2, "newLen":I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 408
    aget v3, p1, v0

    add-int/lit8 v4, v2, -0x1

    aget v4, p1, v4

    if-eq v3, v4, :cond_4

    .line 409
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "newLen":I
    .restart local v1    # "newLen":I
    aget v3, p1, v0

    aput v3, p1, v2

    .line 407
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "newLen":I
    .restart local v2    # "newLen":I
    goto :goto_1

    .line 412
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->copyIfExceeded([II)[I

    move-result-object v3

    goto :goto_0

    :cond_4
    move v1, v2

    .end local v2    # "newLen":I
    .restart local v1    # "newLen":I
    goto :goto_2
.end method

.method private copy([I)[I
    .locals 1
    .param p1, "arr"    # [I

    .prologue
    .line 987
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 989
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method private copy([Z)[Z
    .locals 1
    .param p1, "arr"    # [Z

    .prologue
    .line 997
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 999
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    return-object v0
.end method

.method private enterBusy()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    return v0
.end method

.method private getOrCreate(Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 3
    .param p1, "type"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 601
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    if-nez v1, :cond_0

    .line 602
    new-instance v1, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;

    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;-><init>()V

    .line 604
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 606
    .local v0, "prev":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    if-eqz v0, :cond_0

    .line 607
    move-object v1, v0

    .line 610
    .end local v0    # "prev":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 612
    :cond_1
    return-object v1
.end method

.method private isHiddenEvent(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 425
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInternalEvent(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 438
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/events/EventType;->EVTS_DISCOVERY_ALL:[I

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->contains([II)Z

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

.method private isUserRecordable0(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->binarySearch([II)Z

    move-result v0

    return v0
.end method

.method private leaveBusy()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 200
    return-void
.end method

.method private notifyListeners(Ljava/util/Collection;Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "evt"    # Lorg/apache/ignite/events/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;",
            ">;",
            "Lorg/apache/ignite/events/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 734
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 735
    sget-boolean v3, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 737
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 739
    .local v2, "lsnr":Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    :try_start_0
    invoke-interface {v2, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;->onEvent(Lorg/apache/ignite/events/Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception in listener notification for event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 746
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lsnr":Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    :cond_2
    return-void
.end method

.method private notifyListeners(Lorg/apache/ignite/events/Event;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 722
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->notifyListeners(Ljava/util/Collection;Lorg/apache/ignite/events/Event;)V

    .line 725
    return-void
.end method

.method private query(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Ljava/util/List;
    .locals 31
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;J)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 796
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 798
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v11, "Failed to query events for empty nodes collection."

    invoke-static {v3, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 801
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 954
    :goto_0
    return-object v6

    .line 804
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v24

    .line 806
    .local v24, "ioMgr":Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v6, "evts":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 810
    .local v7, "err":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 812
    .local v5, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 814
    .local v4, "qryMux":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/cluster/ClusterNode;

    .line 815
    .local v26, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 817
    .end local v26    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    new-instance v22, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$4;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Ljava/lang/Object;Ljava/util/Set;)V

    .line 830
    .local v22, "evtLsnr":Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    new-instance v2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$5;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 875
    .local v2, "resLsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_EVENT:Lorg/apache/ignite/internal/GridTopic;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/Object;

    move-result-object v9

    .line 878
    .local v9, "resTopic":Ljava/lang/Object;
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 883
    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v10

    .line 887
    .local v10, "serFilter":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v18

    .line 889
    .local v18, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v18, :cond_4

    .line 890
    new-instance v3, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to deploy event filter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    .end local v10    # "serFilter":[B
    .end local v18    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catchall_0
    move-exception v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 951
    const/4 v11, 0x0

    new-array v11, v11, [I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    throw v3

    .line 892
    .restart local v10    # "serFilter":[B
    .restart local v18    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_4
    :try_start_1
    new-instance v8, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->participants()Ljava/util/Map;

    move-result-object v15

    invoke-direct/range {v8 .. v15}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;-><init>(Ljava/lang/Object;[BLjava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/util/Map;)V

    .line 901
    .local v8, "msg":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_EVENT:Lorg/apache/ignite/internal/GridTopic;

    sget-object v11, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v8, v11}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->sendMessage(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 903
    const-wide/16 v12, 0x0

    cmp-long v3, p3, v12

    if-nez v3, :cond_5

    .line 904
    const-wide p3, 0x7fffffffffffffffL

    .line 906
    :cond_5
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v28

    .line 909
    .local v28, "now":J
    add-long v12, v28, p3

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-gtz v3, :cond_6

    const-wide v20, 0x7fffffffffffffffL

    .line 911
    .local v20, "endTime":J
    :goto_2
    move-wide/from16 v16, p3

    .line 913
    .local v16, "delta":J
    const/16 v27, 0x0

    .line 915
    .local v27, "uidsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    :goto_3
    :try_start_2
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    const-wide/16 v12, 0x0

    cmp-long v3, v16, v12

    if-lez v3, :cond_7

    .line 918
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 920
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v12

    sub-long v16, v20, v12

    goto :goto_3

    .line 909
    .end local v16    # "delta":J
    .end local v20    # "endTime":J
    .end local v27    # "uidsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_6
    add-long v20, v28, p3

    goto :goto_2

    .line 923
    .restart local v16    # "delta":J
    .restart local v20    # "endTime":J
    .restart local v27    # "uidsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :catch_0
    move-exception v19

    .line 924
    .local v19, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 926
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v11, "Got interrupted while waiting for event query responses."

    move-object/from16 v0, v19

    invoke-direct {v3, v11, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 934
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 929
    :cond_7
    :try_start_5
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 930
    new-instance v11, Lorg/apache/ignite/IgniteCheckedException;

    const-string v12, "Failed to query events due to exception on remote node."

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v11, v12, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 932
    :cond_8
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 933
    new-instance v30, Ljava/util/LinkedList;

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .end local v27    # "uidsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local v30, "uidsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    move-object/from16 v27, v30

    .line 934
    .end local v30    # "uidsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v27    # "uidsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_9
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 937
    if-eqz v27, :cond_c

    .line 938
    :try_start_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :cond_a
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v11

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    invoke-virtual {v11, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    if-nez v3, :cond_a

    .line 941
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 943
    :cond_b
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 944
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to receive event query response from following nodes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 949
    .end local v25    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :cond_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 951
    const/4 v3, 0x0

    new-array v3, v3, [I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    goto/16 :goto_0

    .line 878
    nop

    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method

.method private sendMessage(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 7
    .param p2, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p3, "msg"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/GridTopic;",
            "Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 968
    const/4 v2, 0x0

    new-array v3, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->localNode(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    .line 970
    .local v0, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    new-array v2, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    .line 972
    .local v1, "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-eqz v0, :cond_0

    .line 973
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, p4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 975
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 976
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->responseTopic()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->responseTopicBytes([B)V

    .line 978
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3, p4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 980
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V
    .locals 7
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    .param p2, "type"    # I
    .param p3, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 569
    sget-boolean v4, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 571
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->enterBusy()Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    :goto_0
    return-void

    .line 575
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->getOrCreate(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 578
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added listener for disabled event type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 580
    :cond_2
    if-eqz p3, :cond_4

    .line 581
    move-object v0, p3

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    .line 582
    .local v3, "t":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->getOrCreate(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 585
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added listener for disabled event type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 590
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "t":I
    :cond_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V

    throw v4
.end method

.method public addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V
    .locals 7
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    .param p2, "types"    # [I

    .prologue
    .line 541
    sget-boolean v4, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 542
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 543
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    array-length v4, p2

    if-gtz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 545
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->enterBusy()Z

    move-result v4

    if-nez v4, :cond_3

    .line 559
    :goto_0
    return-void

    .line 549
    :cond_3
    move-object v0, p2

    .local v0, "arr$":[I
    :try_start_0
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget v3, v0, v1

    .line 550
    .local v3, "t":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->getOrCreate(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 553
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added listener for disabled event type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    .end local v3    # "t":I
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V

    goto :goto_0

    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V

    throw v4
.end method

.method public addLocalEventListener(Lorg/apache/ignite/lang/IgnitePredicate;[I)V
    .locals 4
    .param p2, "types"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    new-instance v1, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;)V

    invoke-virtual {p0, v1, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 530
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to inject resources to event listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized disableEvents([I)V
    .locals 14
    .param p1, "types"    # [I

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    sget-boolean v10, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 349
    :cond_0
    :try_start_1
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->EVENTS_DISABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    .line 351
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    .line 352
    .local v6, "userRecordableEvts0":[Z
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->recordableEvts:[Z

    .line 353
    .local v4, "recordableEvts0":[Z
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I

    .line 355
    .local v2, "inclEvtTypes0":[I
    array-length v10, p1

    new-array v7, v10, [I

    .line 356
    .local v7, "userTypes":[I
    const/4 v8, 0x0

    .line 358
    .local v8, "userTypesLen":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v9, v8

    .end local v8    # "userTypesLen":I
    .local v9, "userTypesLen":I
    :goto_0
    if-ge v1, v3, :cond_3

    aget v5, v0, v1

    .line 359
    .local v5, "type":I
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->cfgInclEvtTypes:[I

    invoke-direct {p0, v10, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->binarySearch([II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 360
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t disable event since it was enabled in configuration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    move v8, v9

    .line 358
    .end local v9    # "userTypesLen":I
    .restart local v8    # "userTypesLen":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v9, v8

    .end local v8    # "userTypesLen":I
    .restart local v9    # "userTypesLen":I
    goto :goto_0

    .line 365
    :cond_1
    iget v10, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    if-ge v5, v10, :cond_2

    .line 366
    const/4 v10, 0x0

    aput-boolean v10, v6, v5

    .line 368
    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isInternalEvent(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 369
    const/4 v10, 0x0

    aput-boolean v10, v4, v5

    move v8, v9

    .end local v9    # "userTypesLen":I
    .restart local v8    # "userTypesLen":I
    goto :goto_1

    .line 372
    .end local v8    # "userTypesLen":I
    .restart local v9    # "userTypesLen":I
    :cond_2
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "userTypesLen":I
    .restart local v8    # "userTypesLen":I
    aput v5, v7, v9

    goto :goto_1

    .line 375
    .end local v5    # "type":I
    .end local v8    # "userTypesLen":I
    .restart local v9    # "userTypesLen":I
    :cond_3
    if-lez v9, :cond_4

    .line 376
    const/4 v10, 0x0

    invoke-static {v7, v10, v9}, Ljava/util/Arrays;->sort([III)V

    .line 378
    invoke-direct {p0, v7, v9}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->compact([II)[I

    move-result-object v7

    .line 380
    array-length v10, v2

    invoke-static {v2, v10, v7, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->difference([II[II)[I

    move-result-object v2

    .line 386
    :cond_4
    iput-object v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    .line 387
    iput-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->recordableEvts:[Z

    .line 388
    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .restart local v5    # "type":I
    :cond_5
    move v8, v9

    .end local v9    # "userTypesLen":I
    .restart local v8    # "userTypesLen":I
    goto :goto_1
.end method

.method public declared-synchronized enableEvents([I)V
    .locals 14
    .param p1, "types"    # [I

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    sget-boolean v10, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 306
    :cond_0
    :try_start_1
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->EVENTS_ENABLE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    .line 308
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    .line 309
    .local v6, "userRecordableEvts0":[Z
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->recordableEvts:[Z

    .line 310
    .local v4, "recordableEvts0":[Z
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I

    .line 312
    .local v2, "inclEvtTypes0":[I
    array-length v10, p1

    new-array v7, v10, [I

    .line 313
    .local v7, "userTypes":[I
    const/4 v8, 0x0

    .line 315
    .local v8, "userTypesLen":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v9, v8

    .end local v8    # "userTypesLen":I
    .local v9, "userTypesLen":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget v5, v0, v1

    .line 316
    .local v5, "type":I
    iget v10, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    if-ge v5, v10, :cond_1

    .line 317
    const/4 v10, 0x1

    aput-boolean v10, v6, v5

    .line 318
    const/4 v10, 0x1

    aput-boolean v10, v4, v5

    move v8, v9

    .line 315
    .end local v9    # "userTypesLen":I
    .restart local v8    # "userTypesLen":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v9, v8

    .end local v8    # "userTypesLen":I
    .restart local v9    # "userTypesLen":I
    goto :goto_0

    .line 321
    :cond_1
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "userTypesLen":I
    .restart local v8    # "userTypesLen":I
    aput v5, v7, v9

    goto :goto_1

    .line 324
    .end local v5    # "type":I
    .end local v8    # "userTypesLen":I
    .restart local v9    # "userTypesLen":I
    :cond_2
    if-lez v9, :cond_3

    .line 325
    const/4 v10, 0x0

    invoke-static {v7, v10, v9}, Ljava/util/Arrays;->sort([III)V

    .line 327
    invoke-direct {p0, v7, v9}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->compact([II)[I

    move-result-object v7

    .line 329
    array-length v10, v2

    invoke-static {v2, v10, v7, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->unique([II[II)[I

    move-result-object v2

    .line 335
    :cond_3
    iput-object v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    .line 336
    iput-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->recordableEvts:[Z

    .line 337
    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    monitor-exit p0

    return-void
.end method

.method public enabledEvents()[I
    .locals 7

    .prologue
    .line 285
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    .line 287
    .local v4, "userRecordableEvts0":[Z
    iget v5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    new-array v0, v5, [I

    .line 288
    .local v0, "enabledEvts":[I
    const/4 v1, 0x0

    .line 290
    .local v1, "enabledEvtsLen":I
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_0
    iget v5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    if-ge v3, v5, :cond_1

    .line 291
    aget-boolean v5, v4, v3

    if-eqz v5, :cond_0

    .line 292
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "enabledEvtsLen":I
    .local v2, "enabledEvtsLen":I
    aput v3, v0, v1

    move v1, v2

    .line 290
    .end local v2    # "enabledEvtsLen":I
    .restart local v1    # "enabledEvtsLen":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I

    iget-object v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->inclEvtTypes:[I

    array-length v6, v6

    invoke-static {v0, v1, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->unique([II[II)[I

    move-result-object v5

    return-object v5
.end method

.method public isAllUserRecordable([I)Z
    .locals 8
    .param p1, "types"    # [I

    .prologue
    .line 477
    sget-boolean v5, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 479
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    .line 481
    .local v4, "userRecordableEvts0":[Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    .line 482
    .local v3, "type":I
    if-ltz v3, :cond_1

    iget v5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    if-lt v3, v5, :cond_2

    .line 483
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid event type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 485
    :cond_2
    aget-boolean v5, v4, v3

    if-nez v5, :cond_3

    .line 486
    const/4 v5, 0x0

    .line 489
    .end local v3    # "type":I
    :goto_1
    return v5

    .line 481
    .restart local v3    # "type":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v3    # "type":I
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public isRecordable(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 462
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 464
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->recordableEvts:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isUserRecordable0(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isUserRecordable(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 448
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 450
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->len:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isUserRecordable0(I)Z

    move-result v0

    goto :goto_0
.end method

.method public localEvents(Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 755
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    invoke-interface {v0, p1}, Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;->localEvents(Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onKernalStop0(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->msgLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_EVENT:Lorg/apache/ignite/internal/GridTopic;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->msgLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->msgLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;

    .line 213
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 214
    return-void
.end method

.method public printMemoryStats()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "lsnrsCnt":I
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 177
    .local v1, "lsnrs0":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 179
    .end local v1    # "lsnrs0":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    :cond_0
    const-string v3, ">>>"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> Event storage manager memory stats [grid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>  Total listeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>  Recordable events size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->recordableEvts:[Z

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>  User recordable events size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->userRecordableEvts:[Z

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public record(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 249
    sget-boolean v2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 251
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->enterBusy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    :goto_0
    return-void

    .line 255
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    .line 257
    .local v1, "type":I
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to record event without checking if it is recordable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 263
    :cond_2
    iget-boolean v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isDaemon:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isUserRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isHiddenEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 265
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    invoke-interface {v2, p1}, Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;->record(Lorg/apache/ignite/events/Event;)V
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 272
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->notifyListeners(Lorg/apache/ignite/events/Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to record event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 275
    .end local v0    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V

    throw v2
.end method

.method public remoteEventsAsync(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;J)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 766
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 767
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 769
    :cond_1
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 771
    .local v3, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/util/List<TT;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$3;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 782
    return-object v3
.end method

.method public varargs removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z
    .locals 8
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    .param p2, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 636
    sget-boolean v6, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 638
    :cond_0
    const/4 v1, 0x0

    .line 640
    .local v1, "found":Z
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 641
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 642
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 643
    const/4 v1, 0x1

    goto :goto_0

    .line 646
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez p2, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 648
    :cond_3
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget v5, v0, v2

    .line 649
    .local v5, "type":I
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->lsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 651
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 652
    const/4 v1, 0x1

    .line 648
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 656
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;>;"
    .end local v5    # "type":I
    :cond_5
    return v1
.end method

.method public varargs removeLocalEventListener(Lorg/apache/ignite/lang/IgnitePredicate;[I)Z
    .locals 2
    .param p2, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)Z"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;"
    new-instance v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalEventListeners()Ljava/util/Map;

    move-result-object v0

    .line 228
    .local v0, "evtLsnrs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;[I>;"
    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgnitePredicate;

    .line 230
    .local v2, "lsnr":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;"
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/lang/IgnitePredicate;[I)V

    goto :goto_0

    .line 233
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lsnr":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->startSpi()V

    .line 235
    new-instance v3, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->msgLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;

    .line 237
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridTopic;->TOPIC_EVENT:Lorg/apache/ignite/internal/GridTopic;

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->msgLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 239
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->startInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 241
    :cond_1
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->stopSpi()V

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public varargs waitForEvent(JLjava/lang/Runnable;Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/events/Event;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "c"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "types"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Runnable;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)",
            "Lorg/apache/ignite/events/Event;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 693
    .local p4, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<-Lorg/apache/ignite/events/Event;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 695
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 697
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/events/Event;>;"
    new-instance v2, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$2;

    invoke-direct {v2, p0, p4, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$2;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    invoke-virtual {p0, v2, p5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 708
    if-eqz p3, :cond_1

    .line 709
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_1
    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/events/Event;

    return-object v2

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public varargs waitForEvent(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 669
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TT;>;"
    new-instance v1, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p2, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    .end local p2    # "types":[I
    :cond_0
    invoke-virtual {p0, v1, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 679
    return-object v0
.end method
