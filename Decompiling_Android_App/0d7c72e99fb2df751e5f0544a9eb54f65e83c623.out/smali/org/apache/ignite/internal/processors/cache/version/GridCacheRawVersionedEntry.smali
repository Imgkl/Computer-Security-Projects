.class public Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;
.super Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
.source "GridCacheRawVersionedEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;
.implements Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
        "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry",
        "<TK;TV;>;",
        "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionable;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private expireTime:J

.field private keyBytes:[B
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private ttl:J

.field private valBytes:[B

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J
    .param p7, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>()V

    .line 77
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 80
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 81
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl:J

    .line 82
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime:J

    .line 83
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 84
    return-void
.end method

.method public constructor <init>([B[BJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "keyBytes"    # [B
    .param p2, "valBytes"    # [B
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J
    .param p7, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    .line 102
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    .line 103
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl:J

    .line 104
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime:J

    .line 105
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 106
    return-void
.end method


# virtual methods
.method public dataCenterId()B
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->dataCenterId()B

    move-result v0

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/16 v0, 0x67

    return v0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime:J

    return-wide v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/4 v0, 0x6

    return v0
.end method

.method public globalTime()J
    .locals 2

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public key()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Entry is being improperly processed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public key(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 0
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 120
    return-void
.end method

.method public keyBytes()[B
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    return-object v0
.end method

.method public marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 236
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {p2, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {p2, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    .line 244
    :cond_1
    return-void
.end method

.method public order()J
    .locals 2

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareDirectMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 253
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 255
    :cond_0
    return-void
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
    .line 372
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 373
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 264
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 266
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 310
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :pswitch_0
    const-string v0, "expireTime"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime:J

    .line 276
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 282
    :pswitch_1
    const-string/jumbo v0, "ttl"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl:J

    .line 284
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 285
    goto :goto_0

    .line 287
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 290
    :pswitch_2
    const-string/jumbo v0, "valBytes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    .line 292
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 293
    goto :goto_0

    .line 295
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 298
    :pswitch_3
    const-string/jumbo v0, "ver"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 300
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 301
    goto :goto_0

    .line 303
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 308
    :cond_6
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 310
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 377
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;

    const-string v2, "keyBytesLen"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    const-string/jumbo v4, "valBytesLen"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    const-string v6, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "n/a"

    goto :goto_0

    :cond_1
    const-string v5, "n/a"

    goto :goto_1
.end method

.method public topologyVersion()I
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v0

    return v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl:J

    return-wide v0
.end method

.method public unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 199
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 205
    :cond_1
    return-void
.end method

.method public unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->unmarshalKey(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 192
    :cond_0
    return-void
.end method

.method public unmarshalKey(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v0, :cond_1

    .line 217
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->keyBytes:[B

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 223
    :cond_1
    return-void
.end method

.method public value()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public valueBytes()[B
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
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
    .line 367
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 368
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 315
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 316
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 318
    :cond_1
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 320
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 357
    :cond_2
    :goto_0
    return v0

    .line 323
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_4

    .line 324
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 330
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 357
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 332
    :pswitch_0
    const-string v1, "expireTime"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 338
    :pswitch_1
    const-string/jumbo v1, "ttl"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 344
    :pswitch_2
    const-string/jumbo v1, "valBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->valBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 350
    :pswitch_3
    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
