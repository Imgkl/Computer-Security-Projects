.class Lcom/urbanairship/richpush/RichPushInbox$1;
.super Ljava/lang/Object;
.source "RichPushInbox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/RichPushInbox;->markMessagesRead(Ljava/util/Set;)V
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
    .line 206
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushInbox$1;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushInbox$1;->val$messageIds:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$1;->this$0:Lcom/urbanairship/richpush/RichPushInbox;

    # getter for: Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;
    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushInbox;->access$000(Lcom/urbanairship/richpush/RichPushInbox;)Lcom/urbanairship/richpush/RichPushResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox$1;->val$messageIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesRead(Ljava/util/Set;)I

    .line 210
    return-void
.end method
