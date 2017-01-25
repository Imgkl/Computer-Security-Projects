.class public Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "MemoryEventStorageSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;
.implements Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_EXPIRE_AGE_MS:J = 0x7fffffffffffffffL

.field public static final DFLT_EXPIRE_COUNT:I = 0x2710


# instance fields
.field private evts:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private expireAgeMs:J

.field private expireCnt:J

.field private filter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 106
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireAgeMs:J

    .line 109
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireCnt:J

    .line 112
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    return-void
.end method

.method private cleanupQueue()V
    .locals 12

    .prologue
    .line 246
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 248
    .local v4, "now":J
    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v8}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v8

    int-to-long v8, v8

    iget-wide v10, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireCnt:J

    sub-long v6, v8, v10

    .line 250
    .local v6, "queueOversize":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    int-to-long v8, v2

    cmp-long v8, v8, v6

    if-gez v8, :cond_2

    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v8}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v8

    int-to-long v8, v8

    iget-wide v10, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireCnt:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 251
    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v8}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/events/Event;

    .line 253
    .local v1, "expired":Lorg/apache/ignite/events/Event;
    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 254
    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Event expired by count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "expired":Lorg/apache/ignite/events/Event;
    .local v3, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/events/Event;>;"
    :cond_1
    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/events/Event;

    .line 265
    .local v0, "evt":Lorg/apache/ignite/events/Event;
    if-nez v0, :cond_4

    .line 258
    .end local v0    # "evt":Lorg/apache/ignite/events/Event;
    .end local v3    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/events/Event;>;"
    :cond_2
    :goto_1
    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v8}, Lorg/jsr166/ConcurrentLinkedDeque8;->peekx()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v3

    .line 260
    .restart local v3    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/events/Event;>;"
    if-nez v3, :cond_1

    .line 274
    :cond_3
    return-void

    .line 268
    .restart local v0    # "evt":Lorg/apache/ignite/events/Event;
    :cond_4
    invoke-interface {v0}, Lorg/apache/ignite/events/Event;->timestamp()J

    move-result-wide v8

    sub-long v8, v4, v8

    iget-wide v10, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireAgeMs:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 271
    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v8, v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 272
    iget-object v8, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Event expired by age: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->clear()V

    .line 212
    return-void
.end method

.method public getExpireAgeMs()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireAgeMs:J

    return-wide v0
.end method

.method public getExpireCount()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireCnt:J

    return-wide v0
.end method

.method public getFilter()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public getQueueSize()J
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public localEvents(Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 4
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
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    const/4 v3, 0x1

    .line 216
    const-string v0, "p"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->cleanupQueue()V

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    new-array v1, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lorg/apache/ignite/internal/util/typedef/F;->retain(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public record(Lorg/apache/ignite/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 225
    sget-boolean v0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->cleanupQueue()V

    .line 231
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event recorded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 237
    :cond_2
    return-void
.end method

.method public setExpireAgeMs(J)V
    .locals 1
    .param p1, "expireAgeMs"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 179
    iput-wide p1, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireAgeMs:J

    .line 180
    return-void
.end method

.method public setExpireCount(J)V
    .locals 1
    .param p1, "expireCnt"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 191
    iput-wide p1, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireCnt:J

    .line 192
    return-void
.end method

.method public setFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 133
    .local p1, "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/events/Event;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 134
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 8
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->startStopwatch()V

    .line 141
    iget-wide v4, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireCnt:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "expireCnt > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->assertParameter(ZLjava/lang/String;)V

    .line 142
    iget-wide v4, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireAgeMs:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    :goto_1
    const-string v0, "expireAgeMs > 0"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->assertParameter(ZLjava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "expireAgeMs"

    iget-wide v2, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireAgeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "expireCnt"

    iget-wide v2, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->expireCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 150
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 153
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 155
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 141
    goto :goto_0

    :cond_3
    move v1, v2

    .line 142
    goto :goto_1
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->unregisterMBean()V

    .line 162
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->evts:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->clear()V

    .line 165
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-class v0, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
