.class Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$6;
.super Ljava/lang/Object;
.source "LowLevelOptionsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createEnableGamificationView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$6;->this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 220
    invoke-static {p2}, Lcom/eventgenie/android/utils/constants/IfDefs;->setGamificationEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$6;->this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;

    const-string v1, "You need to reload the config for this change to take effect."

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method
