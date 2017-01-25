.class public Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
.super Ljava/lang/Object;
.source "CacheEvictionEntry.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private near:Z

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V
    .locals 0
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "near"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 59
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 60
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->near:Z

    .line 61
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x61

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x3

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 104
    return-void
.end method

.method public key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public near()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->near:Z

    return v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 95
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 145
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 175
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :pswitch_0
    const-string v0, "key"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 152
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 158
    :pswitch_1
    const-string v0, "near"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->near:Z

    .line 160
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 166
    :pswitch_2
    const-string/jumbo v0, "ver"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 168
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 169
    goto :goto_0

    .line 171
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 110
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 117
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :pswitch_0
    const-string v1, "key"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 125
    :pswitch_1
    const-string v1, "near"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->near:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 131
    :pswitch_2
    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
