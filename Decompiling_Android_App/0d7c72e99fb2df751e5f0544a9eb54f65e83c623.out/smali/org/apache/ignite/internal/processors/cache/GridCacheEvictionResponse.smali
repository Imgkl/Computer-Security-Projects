.class public Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridCacheEvictionResponse.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private err:Z

.field private futId:J

.field private rejectedKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    .line 53
    return-void
.end method

.method constructor <init>(IJ)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "futId"    # J

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;-><init>(IJZ)V

    .line 61
    return-void
.end method

.method constructor <init>(IJZ)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "futId"    # J
    .param p4, "err"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    .line 69
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->cacheId:I

    .line 70
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->futId:J

    .line 71
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->err:Z

    .line 72
    return-void
.end method


# virtual methods
.method addRejected(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 109
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 206
    const/16 v0, 0xf

    return v0
.end method

.method error()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->err:Z

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x6

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
    .line 84
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->finishUnmarshalCacheObjects(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 87
    return-void
.end method

.method futureId()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->futId:J

    return-wide v0
.end method

.method public ignoreClassErrors()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
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
    .line 77
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->cacheId:I

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->prepareMarshalCacheObjects(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 80
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 168
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :pswitch_0
    const-string v1, "err"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->err:Z

    .line 178
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 184
    :pswitch_1
    const-string v1, "futId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->futId:J

    .line 186
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 192
    :pswitch_2
    const-string v1, "rejectedKeys"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    .line 194
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method rejectedKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 130
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 140
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :pswitch_0
    const-string v1, "err"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->err:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 148
    :pswitch_1
    const-string v1, "futId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->futId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 154
    :pswitch_2
    const-string v1, "rejectedKeys"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
