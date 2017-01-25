.class public Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
.super Ljava/lang/Object;
.source "CacheContinuousQueryEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EVT_TYPE_VALS:[Ljavax/cache/event/EventType;

.field private static final serialVersionUID:J


# instance fields
.field private cacheId:I

.field private depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private evtType:Ljavax/cache/event/EventType;

.field private key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->$assertionsDisabled:Z

    .line 40
    invoke-static {}, Ljavax/cache/event/EventType;->values()[Ljavax/cache/event/EventType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->EVT_TYPE_VALS:[Ljavax/cache/event/EventType;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method constructor <init>(ILjavax/cache/event/EventType;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "cacheId"    # I
    .param p2, "evtType"    # Ljavax/cache/event/EventType;
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "newVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "oldVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->cacheId:I

    .line 94
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->evtType:Ljavax/cache/event/EventType;

    .line 95
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 96
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 97
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 98
    return-void
.end method

.method public static eventTypeFromOrdinal(I)Ljavax/cache/event/EventType;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 47
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->EVT_TYPE_VALS:[Ljavax/cache/event/EventType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->EVT_TYPE_VALS:[Ljavax/cache/event/EventType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cacheId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->cacheId:I

    return v0
.end method

.method public deployInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x60

    return v0
.end method

.method eventType()Ljavax/cache/event/EventType;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->evtType:Ljavax/cache/event/EventType;

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x5

    return v0
.end method

.method key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method oldValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public prepare(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V
    .locals 0
    .param p1, "depInfo"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 169
    return-void
.end method

.method prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 119
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 128
    :cond_2
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 232
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 282
    :goto_0
    return v1

    .line 235
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 282
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 237
    :pswitch_0
    const-string v1, "cacheId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->cacheId:I

    .line 239
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 240
    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 247
    :pswitch_1
    const-string v1, "evtType"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 249
    .local v0, "evtTypeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->eventTypeFromOrdinal(I)Ljavax/cache/event/EventType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->evtType:Ljavax/cache/event/EventType;

    .line 254
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 257
    .end local v0    # "evtTypeOrd":B
    :pswitch_2
    const-string v1, "key"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 259
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 260
    goto :goto_0

    .line 262
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 265
    :pswitch_3
    const-string v1, "newVal"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 267
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 268
    goto :goto_0

    .line 270
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 273
    :pswitch_4
    const-string v1, "oldVal"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 275
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 276
    goto :goto_0

    .line 278
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
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
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 143
    :cond_1
    return-void
.end method

.method value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 185
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 225
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 192
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :pswitch_0
    const-string v0, "cacheId"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->cacheId:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 200
    :pswitch_1
    const-string v2, "evtType"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->evtType:Ljavax/cache/event/EventType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->evtType:Ljavax/cache/event/EventType;

    invoke-virtual {v0}, Ljavax/cache/event/EventType;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 201
    goto :goto_0

    .line 200
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 203
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 206
    :pswitch_2
    const-string v0, "key"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 212
    :pswitch_3
    const-string v0, "newVal"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 218
    :pswitch_4
    const-string v0, "oldVal"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 219
    goto :goto_0

    .line 221
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
