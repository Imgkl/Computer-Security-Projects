.class Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;
.super Ljava/lang/Object;
.source "UserNotificationsCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createAppXFullScreenView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

.field final synthetic val$tmpTag:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    iput-object p2, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;->val$tmpTag:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;->val$tmpTag:Landroid/text/Editable;

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;->val$tmpTag:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .line 360
    .local v0, "namespace":J
    iget-object v3, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$14;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-static {v3, v2, v0, v1}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->loadAppXFullPage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 362
    .end local v0    # "namespace":J
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method
