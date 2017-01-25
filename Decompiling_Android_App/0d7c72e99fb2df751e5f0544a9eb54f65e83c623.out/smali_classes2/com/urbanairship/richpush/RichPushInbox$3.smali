.class Lcom/urbanairship/richpush/RichPushInbox$3;
.super Ljava/lang/Object;
.source "RichPushInbox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/RichPushInbox;->deleteMessages(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/richpush/RichPushInbox;

.field final synthetic val$messageIds:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->val$messageIds:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    # getter for: Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;
    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushInbox;->access$000(Lcom/urbanairship/richpush/RichPushInbox;)Lcom/urbanairship/richpush/RichPushResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->val$messageIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesDeleted(Ljava/util/Set;)I

    .line 270
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    # getter for: Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;
    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushInbox;->access$100(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    # getter for: Lcom/urbanairship/richpush/RichPushInbox;->pendingDeletionMessageIds:Ljava/util/List;
    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushInbox;->access$100(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->val$messageIds:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
