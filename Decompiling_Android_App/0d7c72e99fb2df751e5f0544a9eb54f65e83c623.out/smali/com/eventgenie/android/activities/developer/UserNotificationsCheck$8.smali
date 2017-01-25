.class Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$8;
.super Ljava/lang/Object;
.source "UserNotificationsCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createToastFailureView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

.field final synthetic val$type:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$8;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    iput-object p2, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$8;->val$type:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$8;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    const-string v1, "This is a Failure Toast! Something the user did failed!"

    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$8;->val$type:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 247
    return-void
.end method
