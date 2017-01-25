.class Lcom/eventgenie/android/ui/actionbar/GenieActionbar$6;
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
    .line 285
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$6;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 288
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;

    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$6;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$6;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDatastore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$6;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    sget-object v4, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_LAST_PUBLISHED:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;-><init>(Landroid/app/Activity;JLcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 294
    return-void
.end method
