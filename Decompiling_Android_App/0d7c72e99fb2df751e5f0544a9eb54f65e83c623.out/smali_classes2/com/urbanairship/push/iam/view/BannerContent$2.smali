.class Lcom/urbanairship/push/iam/view/BannerContent$2;
.super Ljava/lang/Object;
.source "BannerContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/view/BannerContent;->setNotificationActionButtonGroup(Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/view/BannerContent;

.field final synthetic val$actionButton:Lcom/urbanairship/push/notifications/NotificationActionButton;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/view/BannerContent;Lcom/urbanairship/push/notifications/NotificationActionButton;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/BannerContent$2;->this$0:Lcom/urbanairship/push/iam/view/BannerContent;

    iput-object p2, p0, Lcom/urbanairship/push/iam/view/BannerContent$2;->val$actionButton:Lcom/urbanairship/push/notifications/NotificationActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerContent$2;->this$0:Lcom/urbanairship/push/iam/view/BannerContent;

    # getter for: Lcom/urbanairship/push/iam/view/BannerContent;->actionClickListener:Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/BannerContent;->access$100(Lcom/urbanairship/push/iam/view/BannerContent;)Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/BannerContent$2;->this$0:Lcom/urbanairship/push/iam/view/BannerContent;

    # getter for: Lcom/urbanairship/push/iam/view/BannerContent;->actionClickListener:Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/BannerContent;->access$100(Lcom/urbanairship/push/iam/view/BannerContent;)Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/BannerContent$2;->val$actionButton:Lcom/urbanairship/push/notifications/NotificationActionButton;

    invoke-interface {v0, v1}, Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;->onActionClick(Lcom/urbanairship/push/notifications/NotificationActionButton;)V

    .line 179
    :cond_0
    return-void
.end method
