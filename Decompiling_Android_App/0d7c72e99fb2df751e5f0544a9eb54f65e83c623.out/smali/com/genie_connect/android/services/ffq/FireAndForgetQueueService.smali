.class public Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;
.super Landroid/app/IntentService;
.source "FireAndForgetQueueService.java"


# static fields
.field public static final ACTION_ADD_TO_QUEUE:I = 0x2

.field public static final ACTION_FIRE_QUEUE:I = 0x1

.field public static final ACTION_NONE:I = -0x1

.field public static final EXTRA_ACTION:Ljava/lang/String; = "com.eventgenie.android.EXTRA_ACTION"

.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "com.eventgenie.android.EXTRA_MESSENGER"

.field public static final EXTRA_PAYLOAD:Ljava/lang/String; = "com.eventgenie.android.EXTRA_PAYLOAD"

.field private static isRunning:Z


# instance fields
.field private db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

.field private net:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->isRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "EventGenie-FireAndForget"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private addToQueue(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V
    .locals 1
    .param p1, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->updateQueue(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V

    goto :goto_0
.end method

.method private attemptToSend(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    .locals 4
    .param p1, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    .line 73
    if-nez p1, :cond_1

    .line 94
    .end local p1    # "item":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    :cond_0
    :goto_0
    return-object p1

    .line 75
    .restart local p1    # "item":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    :cond_1
    invoke-static {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/net/ReachabilityManager;->tryCurrentServer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ FFQueue item going through: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 78
    :try_start_0
    new-instance v2, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;

    invoke-direct {v2, p0, p1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;-><init>(Landroid/content/Context;Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V

    iput-object v2, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->net:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;

    .line 79
    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->net:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;

    invoke-virtual {v2}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->send()Z

    move-result v1

    .line 81
    .local v1, "res":Z
    if-eqz v1, :cond_2

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ FFQueue went through! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 83
    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->decreaseTtl()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "res":Z
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->decreaseTtl()J

    goto :goto_0
.end method

.method private static close(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 219
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    return-void
.end method

.method private fireAsNeeded()V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->getQueueItems()Landroid/database/Cursor;

    move-result-object v0

    .line 101
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    rem-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->fireQueue()V

    .line 107
    :cond_1
    invoke-static {v0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->close(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private fireQueue()V
    .locals 10

    .prologue
    .line 111
    iget-object v5, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    invoke-virtual {v5}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->getQueueItems()Landroid/database/Cursor;

    move-result-object v0

    .line 112
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 113
    const-string v5, "^ FFQ: fireQueue() cursor is null!"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v3, "idsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ FFQ: FireAndForgetService: queued items: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 123
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_4

    .line 124
    new-instance v4, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-direct {v4, v0}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;-><init>(Landroid/database/Cursor;)V

    .line 125
    .local v4, "item":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    invoke-virtual {v4}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v6

    .line 127
    .local v6, "tmpId":J
    invoke-static {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/net/ReachabilityManager;->tryCurrentServer()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    invoke-virtual {v4}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->isFireable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-direct {p0, v4}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->attemptToSend(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    move-result-object v4

    .line 131
    if-nez v4, :cond_3

    .line 132
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {p0, v4}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->addToQueue(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V

    goto :goto_1

    .line 143
    .end local v4    # "item":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    .end local v6    # "tmpId":J
    :cond_4
    invoke-static {v0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->close(Landroid/database/Cursor;)V

    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 147
    .local v2, "id":Ljava/lang/Long;
    iget-object v5, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->queueItemRemove(J)Z

    goto :goto_2
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 225
    sget-boolean v0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->isRunning:Z

    return v0
.end method

.method private reschedule()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->isRunning:Z

    .line 155
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 156
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 161
    const-string v5, "^ FFQ: FireAndForgetService starting"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 162
    sput-boolean v7, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->isRunning:Z

    .line 163
    const/4 v0, -0x1

    .line 164
    .local v0, "action":I
    const/4 v3, 0x0

    .line 165
    .local v3, "item":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    new-instance v5, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    invoke-direct {v5, p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 170
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 171
    const-string v5, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 172
    const-string v5, "com.eventgenie.android.EXTRA_PAYLOAD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "item":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    check-cast v3, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .line 177
    .restart local v3    # "item":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ FFQ: FireAndForgetService action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 179
    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_0
    :goto_1
    if-eq v0, v7, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->fireAsNeeded()V

    .line 203
    :goto_2
    const/4 v5, 0x0

    sput-boolean v5, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->isRunning:Z

    .line 206
    :try_start_0
    iget-object v5, p0, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->db:Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;

    invoke-virtual {v5}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_3
    const-string v5, "^ FFQ: FireAndForgetService done"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 212
    return-void

    .line 174
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 182
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->attemptToSend(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    move-result-object v4

    .line 183
    .local v4, "res":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    if-eqz v4, :cond_0

    .line 184
    invoke-direct {p0, v3}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->addToQueue(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V

    goto :goto_1

    .line 189
    .end local v4    # "res":Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    :pswitch_1
    invoke-direct {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->fireQueue()V

    goto :goto_1

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;->reschedule()V

    goto :goto_2

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ FFQ: FireAndForgetService - Error closing db: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
