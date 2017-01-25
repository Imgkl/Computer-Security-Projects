.class Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;
.super Ljava/lang/Object;
.source "EntityPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    # getter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$000(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Landroid/support/v4/content/AsyncTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    # getter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$000(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Landroid/support/v4/content/AsyncTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    # getter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mCurrentMode:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$100(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_LOCATION:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    if-ne v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v1, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v2, v2, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v3, v3, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    # getter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mText:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$200(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v3, v3, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-virtual {v0, v4, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/loaders/LocationPickerLoader;

    # setter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;
    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$002(Lcom/eventgenie/android/activities/others/EntityPickerActivity;Landroid/support/v4/content/AsyncTaskLoader;)Landroid/support/v4/content/AsyncTaskLoader;

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v1, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v2, v2, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v3, v3, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    # getter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mText:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$200(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v3, v3, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-virtual {v0, v4, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;

    # setter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mLoader:Landroid/support/v4/content/AsyncTaskLoader;
    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$002(Lcom/eventgenie/android/activities/others/EntityPickerActivity;Landroid/support/v4/content/AsyncTaskLoader;)Landroid/support/v4/content/AsyncTaskLoader;

    goto :goto_0

    .line 177
    :cond_2
    const-string v0, "^ ENTITYPICKERACTIVITY: Calling restartLoader"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v1, v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v2, v2, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    # getter for: Lcom/eventgenie/android/activities/others/EntityPickerActivity;->mText:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->access$200(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;->this$1:Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;

    iget-object v2, v2, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0
.end method
