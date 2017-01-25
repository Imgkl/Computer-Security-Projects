.class public Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;
.super Ljava/lang/Object;
.source "IgniteExternalizableExpiryPolicy.java"

# interfaces
.implements Ljavax/cache/expiry/ExpiryPolicy;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACCESS_TTL_MASK:B = 0x4t

.field private static final CREATE_TTL_MASK:B = 0x1t

.field private static final UPDATE_TTL_MASK:B = 0x2t

.field private static final serialVersionUID:J


# instance fields
.field private forAccess:Ljavax/cache/expiry/Duration;

.field private forCreate:Ljavax/cache/expiry/Duration;

.field private forUpdate:Ljavax/cache/expiry/Duration;

.field private plc:Ljavax/cache/expiry/ExpiryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 1
    .param p1, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 69
    return-void
.end method

.method private readDuration(Ljava/io/ObjectInput;)Ljavax/cache/expiry/Duration;
    .locals 8
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x2

    .line 110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    .line 112
    .local v0, "ttl":J
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0, v1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v2

    .line 114
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 115
    sget-object v2, Ljavax/cache/expiry/Duration;->ETERNAL:Ljavax/cache/expiry/Duration;

    .line 119
    :goto_0
    return-object v2

    .line 116
    :cond_1
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 117
    sget-object v2, Ljavax/cache/expiry/Duration;->ZERO:Ljavax/cache/expiry/Duration;

    goto :goto_0

    .line 119
    :cond_2
    new-instance v2, Ljavax/cache/expiry/Duration;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v0, v1}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    goto :goto_0
.end method

.method private writeDuration(Ljava/io/ObjectOutput;Ljavax/cache/expiry/Duration;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .param p2, "duration"    # Ljavax/cache/expiry/Duration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2}, Ljavax/cache/expiry/Duration;->getDurationAmount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 94
    invoke-virtual {p2}, Ljavax/cache/expiry/Duration;->isEternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-wide/16 v0, -0x2

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p2}, Ljavax/cache/expiry/Duration;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/cache/expiry/Duration;->getDurationAmount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_0
.end method


# virtual methods
.method public getExpiryForAccess()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->forAccess:Ljavax/cache/expiry/Duration;

    return-object v0
.end method

.method public getExpiryForCreation()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->forCreate:Ljavax/cache/expiry/Duration;

    return-object v0
.end method

.method public getExpiryForUpdate()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->forUpdate:Ljavax/cache/expiry/Duration;

    return-object v0
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
    .line 152
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 154
    .local v0, "flags":B
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->readDuration(Ljava/io/ObjectInput;)Ljavax/cache/expiry/Duration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->forCreate:Ljavax/cache/expiry/Duration;

    .line 157
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->readDuration(Ljava/io/ObjectInput;)Ljavax/cache/expiry/Duration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->forUpdate:Ljavax/cache/expiry/Duration;

    .line 160
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 161
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->readDuration(Ljava/io/ObjectInput;)Ljavax/cache/expiry/Duration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->forAccess:Ljavax/cache/expiry/Duration;

    .line 162
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "flags":B
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v4}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v1

    .line 128
    .local v1, "create":Ljavax/cache/expiry/Duration;
    if-eqz v1, :cond_0

    .line 129
    const/4 v4, 0x1

    int-to-byte v2, v4

    .line 131
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v4}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForUpdate()Ljavax/cache/expiry/Duration;

    move-result-object v3

    .line 133
    .local v3, "update":Ljavax/cache/expiry/Duration;
    if-eqz v3, :cond_1

    .line 134
    or-int/lit8 v4, v2, 0x2

    int-to-byte v2, v4

    .line 136
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v4}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v0

    .line 138
    .local v0, "access":Ljavax/cache/expiry/Duration;
    if-eqz v0, :cond_2

    .line 139
    or-int/lit8 v4, v2, 0x4

    int-to-byte v2, v4

    .line 141
    :cond_2
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 143
    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->writeDuration(Ljava/io/ObjectOutput;Ljavax/cache/expiry/Duration;)V

    .line 145
    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->writeDuration(Ljava/io/ObjectOutput;Ljavax/cache/expiry/Duration;)V

    .line 147
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;->writeDuration(Ljava/io/ObjectOutput;Ljavax/cache/expiry/Duration;)V

    .line 148
    return-void
.end method
