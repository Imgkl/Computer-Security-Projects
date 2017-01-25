.class Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$7;
.super Ljava/lang/Object;
.source "UserNotificationsCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createPopupOkWithTitle()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$7;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$7;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    const-string v1, "A Generic Title"

    const-string v2, "Something meaningful here"

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 228
    return-void
.end method
