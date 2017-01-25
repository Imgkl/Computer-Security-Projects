.class Lcom/eventgenie/android/ui/actionbar/GenieActionbar$2;
.super Ljava/lang/Object;
.source "GenieActionbar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$2;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 245
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$2;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    return-void
.end method
