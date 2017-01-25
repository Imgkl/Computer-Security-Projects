.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;
.super Ljava/lang/Object;
.source "CacheContinuousQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JCacheQueryRemoteFilter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private impl:Ljavax/cache/event/CacheEntryEventFilter;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private types:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 695
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    return-void
.end method

.method constructor <init>(Ljavax/cache/event/CacheEntryEventFilter;B)V
    .locals 1
    .param p1, "impl"    # Ljavax/cache/event/CacheEntryEventFilter;
    .param p2, "types"    # B

    .prologue
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->impl:Ljavax/cache/event/CacheEntryEventFilter;

    .line 724
    iput-byte p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->types:B

    .line 725
    return-void
.end method

.method private flag(Ljavax/cache/event/EventType;)B
    .locals 3
    .param p1, "evtType"    # Ljavax/cache/event/EventType;

    .prologue
    .line 757
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$2;->$SwitchMap$javax$cache$event$EventType:[I

    invoke-virtual {p1}, Ljavax/cache/event/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :pswitch_0
    const/4 v0, 0x1

    .line 768
    :goto_0
    return v0

    .line 762
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 765
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 768
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public evaluate(Ljavax/cache/event/CacheEntryEvent;)Z
    .locals 5
    .param p1, "evt"    # Ljavax/cache/event/CacheEntryEvent;

    .prologue
    const/4 v1, 0x1

    .line 730
    :try_start_0
    iget-byte v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->types:B

    invoke-virtual {p1}, Ljavax/cache/event/CacheEntryEvent;->getEventType()Ljavax/cache/event/EventType;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->flag(Ljavax/cache/event/EventType;)B

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->impl:Ljavax/cache/event/CacheEntryEventFilter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->impl:Ljavax/cache/event/CacheEntryEventFilter;

    invoke-interface {v2, p1}, Ljavax/cache/event/CacheEntryEventFilter;->evaluate(Ljavax/cache/event/CacheEntryEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v1

    .line 730
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheEntryEventFilter failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->impl:Ljavax/cache/event/CacheEntryEventFilter;

    .line 749
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->types:B

    .line 750
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->impl:Ljavax/cache/event/CacheEntryEventFilter;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 742
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$JCacheQueryRemoteFilter;->types:B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 743
    return-void
.end method
