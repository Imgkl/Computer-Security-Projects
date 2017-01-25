.class Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
.super Ljava/lang/Object;
.source "GridEventConsumeHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/GridEventConsumeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventWrapper"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private bytes:[B

.field private cacheName:Ljava/lang/String;

.field private depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

.field private evt:Lorg/apache/ignite/events/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 337
    const-class v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/events/Event;)V
    .locals 1
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    .line 367
    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->cacheName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)Lorg/apache/ignite/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    return-object v0
.end method


# virtual methods
.method public deployInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    return-object v0
.end method

.method p2pMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 374
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    invoke-interface {p1, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B

    .line 377
    return-void
.end method

.method p2pUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 385
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 387
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 388
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 390
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B

    invoke-interface {p1, v0, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/events/Event;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    .line 391
    return-void
.end method

.method public prepare(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V
    .locals 1
    .param p1, "depInfo"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .prologue
    .line 395
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    instance-of v0, v0, Lorg/apache/ignite/events/CacheEvent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 397
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 398
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 424
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 425
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B

    .line 426
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->cacheName:Ljava/lang/String;

    .line 427
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/events/Event;

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 409
    .local v0, "b":Z
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 411
    if-eqz v0, :cond_1

    .line 412
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 413
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->cacheName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 418
    :goto_1
    return-void

    .line 407
    .end local v0    # "b":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    .restart local v0    # "b":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method
