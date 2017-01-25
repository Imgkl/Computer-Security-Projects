.class public Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
.super Ljava/lang/Object;
.source "DataStreamerEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
        ">;",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected val:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 56
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 57
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x5f

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 131
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_0
    const-string v0, "key"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 138
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 144
    :pswitch_1
    const-string/jumbo v0, "val"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 146
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->setValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 73
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 75
    return-object v0
.end method

.method public toEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 102
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 109
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :pswitch_0
    const-string v1, "key"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 117
    :pswitch_1
    const-string/jumbo v1, "val"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
