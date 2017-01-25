.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
.super Ljava/lang/Object;
.source "CacheVersionedValue.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private val:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 55
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 56
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x66

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x2

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
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 95
    :cond_0
    return-void
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 82
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 130
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 152
    :goto_0
    return v0

    .line 133
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :pswitch_0
    const-string/jumbo v0, "val"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 137
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 143
    :pswitch_1
    const-string/jumbo v0, "ver"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 145
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 101
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 108
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 123
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :pswitch_0
    const-string/jumbo v1, "val"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 116
    :pswitch_1
    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
