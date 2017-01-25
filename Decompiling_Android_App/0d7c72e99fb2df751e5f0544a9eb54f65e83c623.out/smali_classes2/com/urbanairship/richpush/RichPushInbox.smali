.class public Lcom/urbanairship/richpush/RichPushInbox;
.super Ljava/lang/Object;
.source "RichPushInbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;,
        Lcom/urbanairship/richpush/RichPushInbox$Listener;
    }
.end annotation


# static fields
.field public static final MESSAGE_DATA_SCHEME:Ljava/lang/String; = "message"

.field public static final VIEW_INBOX_INTENT_ACTION:Ljava/lang/String; = "com.urbanairship.VIEW_RICH_PUSH_INBOX"

.field public static final VIEW_MESSAGE_INTENT_ACTION:Ljava/lang/String; = "com.urbanairship.VIEW_RICH_PUSH_MESSAGE"

.field private static final richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;


# instance fields
.field final executor:Ljava/util/concurrent/ExecutorService;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushInbox$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

.field private final pendingDeletionMessageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v0, Lcom/urbanairship/richpush/RichPushResolver;

    invoke-direct {v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;-><init>(Lcom/urbanairship/richpush/RichPushResolver;)V

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/richpush/RichPushResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/urbanairship/richpush/RichPushResolver;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/ExecutorService;

    .line 83
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/richpush/RichPushInbox;)Lcom/urbanairship/richpush/RichPushResolver;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    return-object v0
.end method

.method private messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 356
    :try_start_0
    invoke-static {p1}, Lcom/urbanairship/richpush/RichPushMessage;->messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 360
    :goto_0
    return-object v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Failed to parse message from the database."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 369
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/urbanairship/richpush/RichPushInbox$4;

    invoke-direct {v1, p0}, Lcom/urbanairship/richpush/RichPushInbox$4;-><init>(Lcom/urbanairship/richpush/RichPushInbox;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method private updateCacheFromDB()V
    .locals 7

    .prologue
    .line 302
    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;

    monitor-enter v5

    .line 303
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    .local v0, "deletedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushResolver;->getAllMessages()Landroid/database/Cursor;

    move-result-object v1

    .line 308
    .local v1, "inboxCursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 304
    .end local v0    # "deletedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "inboxCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 312
    .restart local v0    # "deletedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "inboxCursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 313
    invoke-direct {p0, v1}, Lcom/urbanairship/richpush/RichPushInbox;->messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v2

    .line 314
    .local v2, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v2, :cond_0

    .line 318
    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    monitor-enter v5

    .line 320
    :try_start_2
    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    :cond_1
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v4, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->removeMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    .line 322
    monitor-exit v5

    goto :goto_1

    .line 341
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 325
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 326
    monitor-exit v5

    goto :goto_1

    .line 329
    :cond_3
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v3

    .line 332
    .local v3, "oldCachedMessage":Lcom/urbanairship/richpush/RichPushMessage;
    if-nez v3, :cond_4

    .line 333
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v4, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->addMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    .line 334
    monitor-exit v5

    goto :goto_1

    .line 338
    :cond_4
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v4, v3}, Lcom/urbanairship/richpush/RichPushMessageCache;->removeMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    .line 339
    iget-boolean v4, v3, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    iput-boolean v4, v2, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 340
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v4, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->addMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    .line 341
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 344
    .end local v2    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v3    # "oldCachedMessage":Lcom/urbanairship/richpush/RichPushMessage;
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/richpush/RichPushInbox$Listener;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteMessages(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;

    monitor-enter v4

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/urbanairship/richpush/RichPushInbox$3;

    invoke-direct {v4, p0, p1}, Lcom/urbanairship/richpush/RichPushInbox$3;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 276
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    monitor-enter v4

    .line 277
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 278
    .local v2, "messageId":Ljava/lang/String;
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v1

    .line 279
    .local v1, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v1, :cond_0

    .line 280
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 281
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v1}, Lcom/urbanairship/richpush/RichPushMessageCache;->removeMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    goto :goto_0

    .line 284
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v2    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 263
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 284
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyListeners()V

    .line 287
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessageCount()I

    move-result v0

    return v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessageIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessages()Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    return-object v0
.end method

.method public getReadCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getReadMessageCount()I

    move-result v0

    return v0
.end method

.method public getReadMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessageCache;->getReadMessages()Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method public getUnreadMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessageCache;->getUnreadMessages()Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->richPushMessageComparator:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    return-object v0
.end method

.method public markMessagesRead(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/urbanairship/richpush/RichPushInbox$1;

    invoke-direct {v4, p0, p1}, Lcom/urbanairship/richpush/RichPushInbox$1;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 213
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    monitor-enter v4

    .line 214
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    .local v2, "messageId":Ljava/lang/String;
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v1

    .line 216
    .local v1, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v1, :cond_0

    .line 217
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 218
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v1}, Lcom/urbanairship/richpush/RichPushMessageCache;->addMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    goto :goto_0

    .line 221
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v2    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyListeners()V

    .line 224
    return-void
.end method

.method public markMessagesUnread(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/urbanairship/richpush/RichPushInbox$2;

    invoke-direct {v4, p0, p1}, Lcom/urbanairship/richpush/RichPushInbox$2;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 239
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    monitor-enter v4

    .line 240
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 241
    .local v2, "messageId":Ljava/lang/String;
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v2}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v1

    .line 242
    .local v1, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v1, :cond_0

    .line 243
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 244
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Lcom/urbanairship/richpush/RichPushMessageCache;

    invoke-virtual {v3, v1}, Lcom/urbanairship/richpush/RichPushMessageCache;->addMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    goto :goto_0

    .line 247
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v2    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyListeners()V

    .line 250
    return-void
.end method

.method public removeListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/richpush/RichPushInbox$Listener;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateCache()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->updateCacheFromDB()V

    .line 294
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyListeners()V

    .line 295
    return-void
.end method
