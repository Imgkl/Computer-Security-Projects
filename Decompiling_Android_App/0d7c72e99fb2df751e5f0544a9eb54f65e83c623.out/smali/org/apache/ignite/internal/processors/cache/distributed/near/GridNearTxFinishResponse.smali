.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;
.source "GridNearTxFinishResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private err:Ljava/lang/Throwable;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private errBytes:[B

.field private miniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nearThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "xid"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "nearThreadId"    # J
    .param p4, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "miniId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p6, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-direct {p0, p1, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 71
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_0
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->nearThreadId:J

    .line 74
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 75
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->err:Ljava/lang/Throwable;

    .line 76
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 196
    const/16 v0, 0x36

    return v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->err:Ljava/lang/Throwable;

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x8

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->errBytes:[B

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->errBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->err:Ljava/lang/Throwable;

    .line 114
    :cond_0
    return-void
.end method

.method public miniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->err:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->err:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->errBytes:[B

    .line 106
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 158
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 191
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :pswitch_0
    const-string v1, "errBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->errBytes:[B

    .line 168
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 174
    :pswitch_1
    const-string v1, "miniId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 176
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 182
    :pswitch_2
    const-string v1, "nearThreadId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->nearThreadId:J

    .line 184
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->nearThreadId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 120
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxFinishResponse;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 130
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :pswitch_0
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 138
    :pswitch_1
    const-string v1, "miniId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->miniId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 144
    :pswitch_2
    const-string v1, "nearThreadId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->nearThreadId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
