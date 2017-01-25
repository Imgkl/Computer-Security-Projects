.class public Lcom/eventgenie/android/utils/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lcom/genie_connect/common/platform/ILogger;


# static fields
.field private static final COMMA:C = ','

.field private static final DASH:Ljava/lang/String; = "-"

.field private static final DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final DEFAULT_TAG:Ljava/lang/String; = "GenieConnect"

.field private static final FALLBACK_DATE:Ljava/lang/String; = "1970-01-01T00:00:00Z"

.field private static final LOG_BUFFER_MAX_ENTRIES:I = 0x1f4

.field private static final TAG_DEBUG:Ljava/lang/String; = "DBG"

.field private static final TAG_ERROR:Ljava/lang/String; = "ERR "

.field private static final TAG_INFO:Ljava/lang/String; = "INF"

.field private static final TAG_VERBOSE:Ljava/lang/String; = "VRB"

.field private static final TAG_WARNING:Ljava/lang/String; = "WRN"

.field private static mLogRingBuffer:Lorg/apache/commons/collections/Buffer;

.field private static sTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    const-string v0, "GenieConnect"

    sput-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lorg/apache/commons/collections/buffer/CircularFifoBuffer;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/buffer/CircularFifoBuffer;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/BufferUtils;->synchronizedBuffer(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->mLogRingBuffer:Lorg/apache/commons/collections/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2c

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/eventgenie/android/utils/AndroidLogger;->getNowAsJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object v1, Lcom/eventgenie/android/utils/AndroidLogger;->mLogRingBuffer:Lorg/apache/commons/collections/Buffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/collections/Buffer;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method private getNowAsJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getNowAsJsonString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "1970-01-01T00:00:00Z"

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "DBG"

    sget-object v1, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->addToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public err(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "ERR "

    sget-object v1, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->addToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public err(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 88
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    return-void
.end method

.method public err(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    return-void
.end method

.method public varargs err(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 79
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/AndroidLogger;->err(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public getDebugLogStatus()Z
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getLogArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->mLogRingBuffer:Lorg/apache/commons/collections/Buffer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/commons/collections/Buffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "INF"

    sget-object v1, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->addToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 146
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 136
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/AndroidLogger;->info(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public init(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "debugStatus"    # Z

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->setTag(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/utils/AndroidLogger;->setDebugLogStatus(Z)V

    .line 158
    return-void
.end method

.method public largeInfoLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xfa0

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/AndroidLogger;->largeInfoLog(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {p1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDebugLogStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 161
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ LOG: Debug messages enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenieConnect-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "VRB"

    sget-object v1, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->addToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->DEBUG_LOG_FLAG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 181
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "WRN"

    sget-object v1, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->addToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 207
    sget-object v0, Lcom/eventgenie/android/utils/AndroidLogger;->sTAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 198
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/AndroidLogger;->warn(Ljava/lang/String;)V

    .line 200
    return-void
.end method
