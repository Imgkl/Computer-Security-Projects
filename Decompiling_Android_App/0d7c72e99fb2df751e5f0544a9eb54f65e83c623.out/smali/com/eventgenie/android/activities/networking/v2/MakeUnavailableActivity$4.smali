.class Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$4;
.super Ljava/lang/Object;
.source "MakeUnavailableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->onCustomButton3Click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;J)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$4;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    iput-wide p2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$4;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 318
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$4;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$4;->val$id:J

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;-><init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;J)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 319
    return-void
.end method
