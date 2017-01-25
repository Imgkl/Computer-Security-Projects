.class Lcom/urbanairship/push/notifications/NotificationFactory$1;
.super Ljava/lang/Object;
.source "NotificationFactory.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/notifications/NotificationFactory;->createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$Extender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/notifications/NotificationFactory;

.field final synthetic val$androidActions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/notifications/NotificationFactory;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationFactory$1;->this$0:Lcom/urbanairship/push/notifications/NotificationFactory;

    iput-object p2, p0, Lcom/urbanairship/push/notifications/NotificationFactory$1;->val$androidActions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/urbanairship/push/notifications/NotificationFactory$1;->val$androidActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 142
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 145
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_0
    return-object p1
.end method
