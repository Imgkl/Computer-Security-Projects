.class public Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;
.super Ljava/io/InputStream;
.source "UnicodeBOMInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;
    }
.end annotation


# instance fields
.field private final bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

.field private final in:Ljava/io/PushbackInputStream;

.field private skipped:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 71
    iput-boolean v4, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->skipped:Z

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid input stream: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    new-instance v2, Ljava/io/PushbackInputStream;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 92
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 93
    .local v0, "bom":[B
    iget-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v1

    .line 95
    .local v1, "read":I
    packed-switch v1, :pswitch_data_0

    .line 135
    :cond_1
    sget-object v2, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->NONE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    .line 139
    :goto_0
    if-lez v1, :cond_2

    .line 140
    iget-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 141
    :cond_2
    return-void

    .line 98
    :pswitch_0
    aget-byte v2, v0, v4

    if-ne v2, v7, :cond_3

    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_3

    aget-byte v2, v0, v8

    if-nez v2, :cond_3

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-nez v2, :cond_3

    .line 103
    sget-object v2, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    goto :goto_0

    .line 107
    :cond_3
    aget-byte v2, v0, v4

    if-nez v2, :cond_4

    aget-byte v2, v0, v5

    if-nez v2, :cond_4

    aget-byte v2, v0, v8

    if-ne v2, v6, :cond_4

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-ne v2, v7, :cond_4

    .line 109
    sget-object v2, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    goto :goto_0

    .line 114
    :cond_4
    :pswitch_1
    aget-byte v2, v0, v4

    const/16 v3, -0x11

    if-ne v2, v3, :cond_5

    aget-byte v2, v0, v5

    const/16 v3, -0x45

    if-ne v2, v3, :cond_5

    aget-byte v2, v0, v8

    const/16 v3, -0x41

    if-ne v2, v3, :cond_5

    .line 116
    sget-object v2, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_8:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    goto :goto_0

    .line 121
    :cond_5
    :pswitch_2
    aget-byte v2, v0, v4

    if-ne v2, v7, :cond_6

    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_6

    .line 123
    sget-object v2, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    goto :goto_0

    .line 127
    :cond_6
    aget-byte v2, v0, v4

    if-ne v2, v6, :cond_1

    aget-byte v2, v0, v5

    if-ne v2, v7, :cond_1

    .line 130
    sget-object v2, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 159
    return-void
.end method

.method public final getBOM()Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized skipBOM()Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->skipped:Z

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->bom:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    iget-object v1, v1, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->bytes:[B

    array-length v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/PushbackInputStream;->skip(J)J

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;->skipped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    monitor-exit p0

    return-object p0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
