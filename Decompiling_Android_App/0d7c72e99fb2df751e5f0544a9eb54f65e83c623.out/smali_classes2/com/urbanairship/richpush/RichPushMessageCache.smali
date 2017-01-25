.class Lcom/urbanairship/richpush/RichPushMessageCache;
.super Ljava/lang/Object;
.source "RichPushMessageCache.java"


# instance fields
.field private final readMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final unreadMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addMessage(Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/urbanairship/richpush/RichPushMessage;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/urbanairship/richpush/RichPushMessageCache;->removeMessage(Lcom/urbanairship/richpush/RichPushMessage;)V

    .line 50
    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->isRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    goto :goto_0
.end method

.method getMessageCount()I
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getUnreadMessageCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getReadMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMessageIds()Ljava/util/Set;
    .locals 2
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
    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushMessageCache;->getMessageCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 140
    .local v0, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 142
    return-object v0
.end method

.method getMessages()Ljava/util/List;
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
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    return-object v0
.end method

.method getReadMessageCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getReadMessages()Ljava/util/List;
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
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getUnreadMessages()Ljava/util/List;
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
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method removeMessage(Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/urbanairship/richpush/RichPushMessage;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->readMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->unreadMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method
