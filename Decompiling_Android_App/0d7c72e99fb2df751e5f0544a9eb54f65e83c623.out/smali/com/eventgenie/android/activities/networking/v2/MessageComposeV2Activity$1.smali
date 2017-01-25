.class Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$1;
.super Ljava/lang/Object;
.source "MessageComposeV2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->onCustomButton2Click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$1;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$1;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;

    sget v1, Lcom/eventgenie/android/R$string;->message_discarded:I

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 182
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$1;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->finish()V

    .line 183
    return-void
.end method
